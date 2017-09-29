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

include_once dirname(__FILE__) . DS . 'email_history_class.php';

class email_historyController extends hikashopController {
	public $display = array('listing','show','cancel','');
	public $modify_views = array('edit');
	public $add = array();
	public $modify = array();
	public $delete = array('delete','remove');

	public $pluginCtrl = array('hikashop', 'email_history');
	public $type = 'plg_email_history';

	public function __construct($config = array(), $skip = false) {
		parent::__construct($config, $skip);
		if(!$skip)
			$this->registerDefaultTask('listing');
	}

	protected function getACLName($task) {
		return 'email_log';
	}

	public function listing() {
		hikaInput::get()->set('layout', 'listing');
		return $this->display();
	}
}
