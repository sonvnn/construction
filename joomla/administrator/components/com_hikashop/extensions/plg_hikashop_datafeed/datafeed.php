<?php
/**
 * @package	HikaShop for Joomla!
 * @version	3.2.0
 * @author	hikashop.com
 * @copyright	(C) 2010-2017 HIKARI SOFTWARE. All rights reserved.
 * @license	GNU/GPLv3 http://www.gnu.org/licenses/gpl-3.0.html
 */
defined('_JEXEC') or die('Restricted access');
?><?php
class plgHikashopDatafeed extends JPlugin {
	var $message = '';

	function __construct(&$subject, $config) {
		parent::__construct($subject, $config);
	}

	function onHikashopCronTrigger(&$messages) {
		$pluginsClass = hikashop_get('class.plugins');
		$plugin = $pluginsClass->getByName('hikashop', 'datafeed');

		if(empty($plugin->params['frequency'])) {
			$plugin->params['frequency'] = 86400;
		}

		if(!empty($plugin->params['last_cron_update']) && ($plugin->params['last_cron_update'] + $plugin->params['frequency']) > time()) {
			return true;
		}

		if(empty($plugin->params['path'])) {
			$messages[] = 'No file path specified';
			return true;
		}

		$path = $plugin->params['path'];

		$column = null;
		if(!empty($plugin->params['column_name']))
			$column = $plugin->params['column_name'];

		$url = preg_match('#^(https?|ftp)://#', $path);
		if(!$url) {

			$check = strtolower(substr($path, -3));
			if($check != 'csv') {
				$messages[] = 'The file specified is not a CSV file: '.$path;
				return true;
			}

			$path = $this->_getRelativePath($path);
			jimport('joomla.filesystem.file');
			if(!JFile::exists(JPATH_ROOT.DS.$path)) {
				$messages[] = 'Could not find the file '.JPATH_ROOT.DS.$path;
				return true;
			}

			$path = JURI::base() . $path;
			$path = str_replace('administrator', '', $path);

			$os = strtolower(substr(PHP_OS, 0, 3));
			if($os == 'win')
				$path = str_replace('\\','/',$path);
		}

		$importHelper = hikashop_get('helper.import');

		$tab = null;
		if(!empty($column)) {
			$tab = array();
			$entries = explode(';', $column);
			$i = 0;
			foreach($entries as $entry) {
				$var = explode(':', $entry);
				$tab[$var[0]] = $var[1];
				if(function_exists('mb_strtolower')) {
					$columnName = mb_strtolower(trim($var[0], '" '));
				} else {
					$columnName = strtolower(trim($var[0], '" '));
				}
				$tab[$columnName] = $var[1];
				$i++;
			}
		}

		if(!empty($plugin->params['charset']))
			$importHelper->charsetConvert = $plugin->params['charset'];

		if(!empty($plugin->params['fee']))
			$importHelper->price_fee = (float)$plugin->params['fee'];

		$importHelper->columnNamesConversionTable = $tab;
		$importHelper->createCategories = true;
		$importHelper->overwrite = true;
		$importHelper->header_errors = false;
		if(empty($plugin->params['delete']))
			$importHelper->keep_other_variants = true;

		$contentFile = file_get_contents($path);
		if(empty($contentFile)) {
			$messages[] = 'Could not retrieve the CSV file '. $path;
			return true;
		}

		if(!$importHelper->handleContent($contentFile)) {
			return false;
		}

		if(!empty($plugin->params['delete']) && !empty($importHelper->codes)) {
			$ids = array();
			foreach($importHelper->codes as $product) {
				$ids[] = (int)@$product->product_id;
			}

			$query = 'SELECT product_id FROM '.hikashop_table('product').' WHERE product_id NOT IN ('.implode(',',$ids).') AND product_type = \'main\';';
			$db = JFactory::getDBO();
			$db->setQuery($query);

			if(!HIKASHOP_J25) {
				$todelete = $db->loadResultArray();
			} else {
				$todelete = $db->loadColumn();
			}

			$productClass = hikashop_get('class.product');
			$productClass->delete($todelete);
		}

		if(!$url && !empty($plugin->params['deletefile'])){
			unlink($path);
		}

		return true;
	}

	function writeToLog($data) {
		if($data === null) {
			$dbg = ob_get_clean();
		} else {
			$dbg = $data;
		}
		if(!empty($dbg)) {
			$dbg = '-- ' . date('m.d.y H:i:s') . ' --' . "\r\n" . $dbg;

			$config = hikashop_config();
			jimport('joomla.filesystem.file');
			$file = $config->get('payment_log_file', '');
			$file = rtrim(JPath::clean(html_entity_decode($file)), DS . ' ');
			if(!preg_match('#^([A-Z]:)?/.*#',$file)){
				if(!$file[0] == '/' || !file_exists($file)) {
					$file = JPath::clean(HIKASHOP_ROOT . DS . trim($file, DS . ' '));
				}
			}
			if(!empty($file) && defined('FILE_APPEND')) {
				if(!file_exists(dirname($file))) {
					jimport('joomla.filesystem.folder');
					JFolder::create(dirname($file));
				}
				file_put_contents($file, $dbg, FILE_APPEND);
			}
		}
		if($data === null) {
			ob_start();
		}
	}

	function _getRelativePath($path) {
		$pathClean = null;
		if(!preg_match('#^([A-Z]:)?/.*#',$path) && ($path[0] != '/' || !is_file($path))) {
			$pathClean = JPath::clean(HIKASHOP_ROOT.DS.trim($path, DS.' '));
		}

		if(!empty($pathClean))
			return str_replace(JPATH_ROOT.DS, '', $pathClean);
		return str_replace(JPATH_ROOT.DS, '', $path);
	}
}
