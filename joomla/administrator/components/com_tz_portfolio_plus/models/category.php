<?php
/*------------------------------------------------------------------------

# TZ Portfolio Plus Extension

# ------------------------------------------------------------------------

# author    DuongTVTemPlaza

# copyright Copyright (C) 2015 templaza.com. All Rights Reserved.

# @license - http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL

# Websites: http://www.templaza.com

# Technical Support:  Forum - http://templaza.com/Forum

-------------------------------------------------------------------------*/

// No direct access.
defined('_JEXEC') or die;

jimport('joomla.application.component.modeladmin');
jimport('joomla.filesystem.folder');
jimport('joomla.filesystem.file');

/**
 * Categories Component Category Model
 */
class TZ_Portfolio_PlusModelCategory extends JModelAdmin
{
	/**
	 * @var    string  The prefix to use with controller messages.
	 * @since  1.6
	 */
	protected $text_prefix = 'COM_TZ_PORTFOLIO_PLUS_CATEGORIES';

	/**
	 * Method to test whether a record can be deleted.
	 *
	 * @param   object  $record  A record object.
	 *
	 * @return  boolean  True if allowed to delete the record. Defaults to the permission set in the component.
	 *
	 * @since	1.6
	 */
	protected function canDelete($record)
	{
		if (!empty($record->id))
		{
			if ($record->published != -2)
			{
				return;
			}
			$user = JFactory::getUser();

			return $user->authorise('core.delete', $record->extension . '.category.' . (int) $record->id);
		}
	}

	/**
	 * Method to test whether a record can have its state changed.
	 *
	 * @param   object  $record  A record object.
	 *
	 * @return  boolean  True if allowed to change the state of the record. Defaults to the permission set in the component.
	 *
	 * @since   1.6
	 */
	protected function canEditState($record)
	{
		$user = JFactory::getUser();

		// Check for existing category.
		if (!empty($record->id))
		{
			return $user->authorise('core.edit.state', $record->extension . '.category.' . (int) $record->id);
		}
		// New category, so check against the parent.
		elseif (!empty($record->parent_id))
		{
			return $user->authorise('core.edit.state', $record->extension . '.category.' . (int) $record->parent_id);
		}
		// Default to component settings if neither category nor parent known.
		else
		{
			return $user->authorise('core.edit.state', $record->extension);
		}
	}

    function getExtraFields($groupid=null){
        $where  = null;
        if($groupid)
            $where  = ' WHERE x.groupid='.$groupid;

        $query  = 'SELECT f.id,f.title FROM #__tz_portfolio_plus_fields AS f'
                  .' LEFT JOIN #__tz_portfolio_plus_field_fieldgroup_map AS x ON x.fieldsid=f.id'
                  .' LEFT JOIN #__tz_portfolio_plus_categories AS c ON c.groupid=x.groupid'
                  .$where
                  .' GROUP BY f.id';
        $db     = JFactory::getDbo();
        $db -> setQuery($query);
        if(!$db -> query()){
            var_dump($db -> getErrorMsg());
            die();
        }
        if($rows   = $db -> loadObjectList())
            return $rows;
        
        return false;
    }

    public function extrafields(){
        $data       = null;
        $json       = JFactory::getApplication() -> input -> getString('json', null, null, 2);
        $ob_json    = json_decode($json);

        $fieldsGroup    = $this -> getGroupId($ob_json -> id);
        $listcat   = $this -> getItem($ob_json -> id);

        $fieldsId   = array(-1);

        if(isset($fieldsGroup)){
            if(isset($fieldsGroup -> groupid) && $fieldsGroup -> groupid == $ob_json -> groupid){
                if($listcat){
                    if($listcat -> params){
                        $params     = $listcat -> params;
                        if(isset($params['tz_fieldsid'])){
                            $fieldsId   = $params['tz_fieldsid'];
                            if(empty($fieldsId[0]))
                                $fieldsId[0]    = -1;
                        }
                    }
                }
            }
        }

        $list       = $this -> getExtraFields($ob_json -> groupid);
        ob_start();
?>
        <select id="jform_params_tz_fieldsid" multiple="multiple"
                name="jform[params][tz_fieldsid][]" class="" aria-invalid="false"
                style="min-width: 130px; min-height: 80px;">
            <option value=""<?php if(in_array(-1,$fieldsId)) echo ' selected="selected"';?>><?php echo JText::_('COM_TZ_PORTFOLIO_PLUS_ALL_FIELDS');?></option>
            <?php if($list):?>
                <?php foreach($list as $item):?>
                    <option value="<?php echo $item -> id;?>"<?php if(in_array($item -> id,$fieldsId)) echo ' selected="selected"';?>><?php echo $item -> title;?></option>
                <?php endforeach;?>
            <?php endif;?>
        </select>
<?php
        $data   = ob_get_contents();
        ob_end_clean();
        return $data;
    }

    function getGroupId($catid=null){
        $where  = null;
        if($catid)
            $where  = ' WHERE id='.$catid;
        $query  = 'SELECT groupid FROM #__tz_portfolio_plus_categories'
                  .$where;
        $db = JFactory::getDbo();
        $db -> setQuery($query);
        if(!$db -> query()){
            var_dump($db -> getErrorMsg());
            die();
        }
        if($rows = $db -> loadObject())
            return $rows;
        
        return false;
    }

    public function getGroups(){

        $catid          = JFactory::getApplication() -> input -> getInt('id',null);

        $groups    = '';
        
        $dbo            = JFactory::getDbo();
        $rows           = array();
        $arr            = array();

        if($catid){
            $query      = 'SELECT groupid FROM #__tz_portfolio_plus_categories'
                          .' WHERE id='.$catid;
            $dbo -> setQuery($query);
            //$rows   = array();
            if(!$dbo -> query()){
                var_dump($dbo -> getErrorMsg());
                return false;
            }
            $rows = $dbo -> loadObjectList();
            foreach($rows as $row){
                $arr[]  = $row -> groupid;
            }
        }

        $query          = 'SELECT * FROM #__tz_portfolio_plus_fieldgroups';
        $dbo -> setQuery($query);

        if(!$rows2 = $dbo -> loadObjectList()){
            $groups  = '<select name="groupid[]" size="1" style="min-width: 130px;" id="groupid">';
            $groups  .= '<option value="">'.JText::_('COM_TZ_PORTFOLIO_PLUS_OPTION_SELECT_FIELDS_GROUP').'</option>';
            $groups  .= '</select>';
            return $groups;
        }

        $groups  = '<option value="">'.JText::_('COM_TZ_PORTFOLIO_PLUS_OPTION_SELECT_FIELDS_GROUP').'</option>';

        foreach($rows2 as $row){
            $groups  = $groups.'<option value="'.$row -> id.'"'
                              .((in_array($row -> id,$arr))?' selected="selected"':'').'>&nbsp;&nbsp;'.$row -> name.'</option>';
        }

        $groups  = '<select name="groupid[]" size="1" style="min-width: 130px;" id="groupid">'
                        .$groups
                        .'</select>';

        return $groups;
    }

	/**
	 * Method to get a table object, load it if necessary.
	 *
	 * @param   string  $type    The table name. Optional.
	 * @param   string  $prefix  The class prefix. Optional.
	 * @param   array   $config  Configuration array for model. Optional.
	 *
	 * @return  JTable  A JTable object
	 *
	 * @since   1.6
	*/
	public function getTable($type = 'Category', $prefix = 'TZ_Portfolio_PlusTable', $config = array())
	{
		return JTable::getInstance($type, $prefix, $config);
	}

	/**
	 * Auto-populate the model state.
	 *
	 * Note. Calling getState in this method will result in recursion.
	 *
	 * @return  void
	 *
	 * @since   1.6
	 */
	protected function populateState()
	{
		$app = JFactory::getApplication('administrator');

		$parentId = $app -> input -> getInt('parent_id');
		$this->setState('category.parent_id', $parentId);

		// Load the User state.
		$pk = (int) $app -> input -> getInt('id');
		$this->setState($this->getName() . '.id', $pk);

		$extension = $app -> input -> getCmd('extension', 'com_tz_portfolio_plus');
		$this->setState('category.extension', $extension);
		$parts = explode('.', $extension);

		// Extract the component name
		$this->setState('category.component', $parts[0]);

		// Extract the optional section name
		$this->setState('category.section', (count($parts) > 1) ? $parts[1] : null);

		// Load the parameters.
		$params = JComponentHelper::getParams('com_tz_portfolio_plus');
		$this->setState('params', $params);
	}

	/**
	 * Method to get a category.
	 *
	 * @param   integer  $pk  An optional id of the object to get, otherwise the id from the model state is used.
	 *
	 * @return  mixed  Category data object on success, false on failure.
	 *
	 * @since   1.6
	 */
	public function getItem($pk = null)
	{
		if ($result = parent::getItem($pk))
		{

			// Prime required properties.
			if (empty($result->id))
			{
				$result->parent_id = $this->getState('category.parent_id');
				$result->extension = $this->getState('category.extension');
			}

			// Convert the metadata field to an array.
			$registry = new JRegistry();
			$registry->loadString($result->metadata);
			$result->metadata = $registry->toArray();

			// Convert the created and modified dates to local user time for display in the form.
			jimport('joomla.utilities.date');
			$tz = new DateTimeZone(JFactory::getApplication()->getCfg('offset'));

			if (intval($result->created_time))
			{
				$date = new JDate($result->created_time);
				$date->setTimezone($tz);
				$result->created_time = $date->toSql(true);
			}
			else
			{
				$result->created_time = null;
			}

			if (intval($result->modified_time))
			{
				$date = new JDate($result->modified_time);
				$date->setTimezone($tz);
				$result->modified_time = $date->toSql(true);
			}
			else
			{
				$result->modified_time = null;
			}
		}

		$assoc = $this->getAssoc();
		if ($assoc)
		{
			if ($result->id != null)
			{
				$result->associations = TZ_Portfolio_PlusHelperCategories::getAssociations($result->id, $result->extension);
//				var_dump($result -> associations); die();
				JArrayHelper::toInteger($result->associations);
			}
			else
			{
				$result->associations = array();
			}
		}

		return $result;
	}

	/**
	 * Method to get the row form.
	 *
	 * @param   array    $data      Data for the form.
	 * @param   boolean  $loadData  True if the form is to load its own data (default case), false if not.
	 *
	 * @return  mixed  A JForm object on success, false on failure
	 *
	 * @since   1.6
	 */
	public function getForm($data = array(), $loadData = true)
	{
		// Initialise variables.
		$extension = $this->getState('category.extension');

		$jinput = JFactory::getApplication()->input;

		// A workaround to get the extension into the model for save requests.
		if (empty($extension) && isset($data['extension']))
		{
			$extension = $data['extension'];
			$parts = explode('.', $extension);

			$this->setState('category.extension', $extension);
			$this->setState('category.component', $parts[0]);
			$this->setState('category.section', @$parts[1]);
		}

		// Get the form.
		$form = $this->loadForm('com_tz_portfolio_plus.category', 'category', array('control' => 'jform', 'load_data' => $loadData));
		if (empty($form))
		{
			return false;
		}

		// Modify the form based on Edit State access controls.
		if (empty($data['extension']))
		{
			$data['extension'] = $extension;
		}
		$user = JFactory::getUser();
		if (!$user->authorise('core.edit.state', 'com_tz_portfolio_plus.category.' . $jinput->get('id')))
		{
			// Disable fields for display.
			$form->setFieldAttribute('ordering', 'disabled', 'true');
			$form->setFieldAttribute('published', 'disabled', 'true');

			// Disable fields while saving.
			// The controller has already verified this is a record you can edit.
			$form->setFieldAttribute('ordering', 'filter', 'unset');
			$form->setFieldAttribute('published', 'filter', 'unset');
		}

		return $form;
	}

	/**
	 * A protected method to get the where clause for the reorder
	 * This ensures that the row will be moved relative to a row with the same extension
	 *
	 * @param   JCategoryTable  $table  Current table instance
	 *
	 * @return  array  An array of conditions to add to add to ordering queries.
	 *
	 * @since   1.6
	 */
	protected function getReorderConditions($table)
	{
		return 'extension = ' . $this->_db->Quote($table->extension);
	}

	/**
	 * Method to get the data that should be injected in the form.
	 *
	 * @return  mixed  The data for the form.
	 *
	 * @since   1.6
	 */
	protected function loadFormData()
	{
		// Check the session for previously entered form data.
		$data = JFactory::getApplication()->getUserState('com_tz_portfolio_plus.edit.' . $this->getName() . '.data', array());

		if (empty($data))
		{
			$data = $this->getItem();
		}

        $template   = JModelLegacy::getInstance('Template_Style','TZ_Portfolio_PlusModel');
        $data -> set('template_id',$template -> getItemTemplate(null,$this -> getState($this->getName() . '.id')));

		return $data;
	}

	/**
	 * Method to preprocess the form.
	 *
	 * @param   JForm   $form    A JForm object.
	 * @param   mixed   $data    The data expected for the form.
	 * @param   string  $groups  The name of the plugin group to import.
	 *
	 * @return  void
	 *
	 * @see     JFormField
	 * @since   1.6
	 * @throws  Exception if there is an error in the form event.
	 */
	protected function preprocessForm(JForm $form, $data, $group = 'content')
	{
		jimport('joomla.filesystem.path');

		// Initialise variables.
		$lang = JFactory::getLanguage();
		$extension = $this->getState('category.extension');
		$component = $this->getState('category.component');
		$section = $this->getState('category.section');

		// Get the component form if it exists
		jimport('joomla.filesystem.path');
		$name = 'category' . ($section ? ('.' . $section) : '');

		// Try to find the component helper.
		$eName = str_replace('com_', '', $component);
		$path = JPath::clean(JPATH_ADMINISTRATOR . "/components/$component/helpers/category.php");

		if (file_exists($path))
		{
			require_once $path;
			$cName = ucfirst($eName) . ucfirst($section) . 'HelperCategory';

			if (class_exists($cName) && is_callable(array($cName, 'onPrepareForm')))
			{
				$lang->load($component, JPATH_BASE, null, false, false)
				|| $lang->load($component, JPATH_BASE . '/components/' . $component, null, false, false)
				|| $lang->load($component, JPATH_BASE, $lang->getDefault(), false, false)
				|| $lang->load($component, JPATH_BASE . '/components/' . $component, $lang->getDefault(), false, false);
				call_user_func_array(array($cName, 'onPrepareForm'), array(&$form));

				// Check for an error.
				if ($form instanceof Exception)
				{
					$this->setError($form->getMessage());
					return false;
				}
			}
		}

		// Set the access control rules field component value.
		$form->setFieldAttribute('rules', 'component', $component);
		$form->setFieldAttribute('rules', 'section', $name);

        // Association category items
		$assoc = $this->getAssoc();
		if ($assoc)
		{
			$languages = JLanguageHelper::getLanguages('lang_code');

			// Force to array (perhaps move to $this->loadFormData())
			$data = (array) $data;

			$addform = new SimpleXMLElement('<form />');
			$fields = $addform->addChild('fields');
			$fields->addAttribute('name', 'associations');
			$fieldset = $fields->addChild('fieldset');
			$fieldset->addAttribute('name', 'item_associations');
			$fieldset->addAttribute('description', 'COM_TZ_PORTFOLIO_PLUS_CATEGORIES_ITEM_ASSOCIATIONS_FIELDSET_DESC');
			$add = false;
			foreach ($languages as $tag => $language)
			{
				if (empty($data['language']) || $tag != $data['language'])
				{
					$add = true;
					$field = $fieldset->addChild('field');
					$field->addAttribute('name', $tag);
					$field->addAttribute('type', 'modal_category');
					$field->addAttribute('language', $tag);
					$field->addAttribute('label', $language->title);
					$field->addAttribute('translate_label', 'false');
					$field->addAttribute('extension', $extension);
					$field->addAttribute('edit', 'true');
					$field->addAttribute('clear', 'true');
				}
			}
			if ($add)
			{
				$form->load($addform, false);
			}
		}

        // Insert parameter from extrafield
        JLoader::import('extrafields', COM_TZ_PORTFOLIO_PLUS_ADMIN_HELPERS_PATH);
        TZ_Portfolio_PlusHelperExtraFields::prepareForm($form, $data);

		// Trigger the default form events.
		parent::preprocessForm($form, $data, $group);
	}

    public function getAssoc()
    {
        static $assoc = null;

        if (!is_null($assoc))
        {
            return $assoc;
        }

        $app = JFactory::getApplication();
        $extension = $this->getState('category.extension');

        $assoc = JLanguageAssociations::isEnabled();
        $extension = explode('.', $extension);
        $component = array_shift($extension);
        $cname = str_replace('com_', '', $component);

        if (!$assoc || !$component || !$cname)
        {
            $assoc = false;
        }
        else
        {
            $hname = $cname . 'HelperAssociation';
            JLoader::register($hname, JPATH_SITE . '/components/' . $component . '/helpers/association.php');

            $assoc = class_exists($hname) && !empty($hname::$category_association);
        }

        return $assoc;
    }

    function getCatImage(){
        $where  = null;
        if($catId = $this -> getState($this->getName() . '.id')){
            $where  = ' WHERE id ='.$catId;

            $query  = 'SELECT * FROM #__tz_portfolio_plus_categories'
                      .$where;
            $db     = JFactory::getDbo();
            $db -> setQuery($query);
            if(!$db -> query()){
                echo $db -> getErrorMsg();
                die();
            }
            if($row = $db -> loadObject()){
                return $row;
            }
        }
        return false;
    }
    function deleteImages($fileName){
        if($fileName){
            $file   = JPATH_SITE.DIRECTORY_SEPARATOR.str_replace('/',DIRECTORY_SEPARATOR,$fileName);
            if(!JFile::exists($file)){
                $this -> setError(JText::_('COM_TZ_PORTFOLIO_PLUS_INVALID_FILE'));
                return false;
            }
            JFile::delete($file);
        }
        return true;
    }
    
    function uploadImages($file,$url=null){
        if($file){
            $maxSize    = 2*1024*1024;
            $arr        = array('image/jpeg','image/jpg','image/bmp','image/gif','image/png','image/ico');

            // Create folder
            $tzFolder           = 'tz_portfolio_plus';
            $tzUserFolder       = 'categories';
            $tzFolderPath       = JPATH_ROOT.DIRECTORY_SEPARATOR.'media'.DIRECTORY_SEPARATOR.$tzFolder;
            $tzUserFolderPath   = $tzFolderPath.DIRECTORY_SEPARATOR.$tzUserFolder;

            if(!JFolder::exists($tzFolderPath)){
                JFolder::create($tzFolderPath);
                if(!JFile::exists($tzFolderPath.DIRECTORY_SEPARATOR.'index.html')){
                    JFile::write($tzFolderPath.DIRECTORY_SEPARATOR.'index.html'
                        ,htmlspecialchars_decode('<!DOCTYPE html><title></title>'));
                }
            }
            if(JFolder::exists($tzFolderPath)){
                if(!JFolder::exists($tzUserFolderPath)){
                    JFolder::create($tzUserFolderPath);
                    if(!JFile::exists($tzUserFolderPath.DIRECTORY_SEPARATOR.'index.html'))
                        JFile::write($tzUserFolderPath.DIRECTORY_SEPARATOR.'index.html'
                            ,htmlspecialchars_decode('<!DOCTYPE html><title></title>'));
                }
            }
            $params     = JComponentHelper::getParams('com_tz_portfolio_plus');
            if(!$url){

                $image      = new JImage(JPATH_SITE.DIRECTORY_SEPARATOR.str_replace('/',DIRECTORY_SEPARATOR,$file));

                $desFileName    = 'categories_'.time().uniqid().'.'.JFile::getExt($file);
                $desPath        = $tzUserFolderPath.DIRECTORY_SEPARATOR.$desFileName;

                if($params -> get('tz_catimage_width',400))
                    $newWidth  = $params -> get('tz_catimage_width',400);

                $type       = strtolower(JFile::getExt($file));
                $_type  = null;
                if($type == 'gif'){
                    $_type  = IMAGETYPE_GIF;
                }
                elseif($type == 'png'){
                    $_type  = IMAGETYPE_PNG;
                }
                $height     = ceil( ( ($image -> getHeight()) * $newWidth ) / ($image -> getWidth()) );
                $image      = $image -> resize($newWidth,$height);
                $image -> toFile($desPath,$_type);

                return 'media/'.$tzFolder.'/'.$tzUserFolder.'/'.$desFileName;
            }
            else{
                tzportfolioplusimport('HTTPFetcher');
                tzportfolioplusimport('readfile');

                $image  = new Services_Yadis_PlainHTTPFetcher();
                $image  = $image -> get($file);

                if(!in_array($image -> headers['Content-Type'],$arr)){
                    $this -> setError(JText::_('COM_TZ_PORTFOLIO_PLUS_INVALID_FILE'));
                    return false;
                }

                if($image -> headers['Content-Length'] > $maxSize){
                    $this -> setError(JText::_('COM_TZ_PORTFOLIO_PLUS_IMAGE_SIZE_TOO_LARGE'));
                    return false;
                }

                $desFileName    = 'categories_'.time().uniqid().'.'
                                  .str_replace('image/','',$image -> headers['Content-Type'] );
                $desPath        = $tzUserFolderPath.DIRECTORY_SEPARATOR.$desFileName;

                if(JFolder::exists($tzFolderPath)){
                    if(!JFile::write($desPath,$image -> body)){
                        $this -> setError(JText::_('COM_TZ_PORTFOLIO_PLUS_CAN_NOT_UPLOADED_FILEs'));
                        return false;
                    }
                    $image  = new JImage($desPath);
                    $newWidth    = $params -> get('tz_catimage_width',400);
                    $newHeight  = ceil( ( ($image -> getHeight()) * $newWidth ) / ($image -> getWidth()) );
                    $newImage   = $image -> resize((int) $newWidth,$newHeight,false);
                    $type       = strtolower(JFile::getExt($file));
                    $_type  = ($type == 'gif')?IMAGETYPE_GIF:($type == 'png')?IMAGETYPE_PNG:null;
                    $newImage -> toFile($desPath,$_type);
                    return 'media/'.$tzFolder.'/'.$tzUserFolder.'/'.$desFileName;
                }
            }
        }
        return true;
    }

    function delete(&$pks){
//        if($pks){
//            $catId  = implode(',',$pks);
//            $query  = 'SELECT * FROM #__tz_portfolio_plus_categories'
//                      .' WHERE catid IN('.$catId.')';
//            $db     = JFactory::getDbo();
//            $db -> setQuery($query);
//            if(!$db -> query()){
//                $this -> setError($db -> getErrorMsg());
//                return false;
//            }
//            if($rows = $db -> loadObjectList()){
//                foreach($rows as $row){
//                    if(!empty($row -> images)){
//                        $path   = JPATH_SITE.DIRECTORY_SEPARATOR.str_replace('/',DIRECTORY_SEPARATOR,$row -> images);
//                        if(JFile::exists($path)){
//                            JFile::delete($path);
//                        }
//                    }
//                }
//            }
//            $query  = 'DELETE FROM #__tz_portfolio_plus_categories'
//                      .' WHERE catid IN('.$catId.')';
//            $db -> setQuery($query);
//            if(!$db -> query()){
//                $this -> setError($db -> getErrorMsg());
//                return false;
//            }
//        }
        parent::delete($pks);
        
    }

	/**
	 * Method to save the form data.
	 *
	 * @param   array  $data  The form data.
	 *
	 * @return  boolean  True on success.
	 *
	 * @since   1.6
	 */
	public function save($data)
	{

		$input				= JFactory::getApplication() -> input;
        $groupid            = $input -> post -> get('groupid',array(),'array');
        $currentId          = $input -> getCmd('id');
        $post               = $input -> post -> getArray();
        
        if(isset($post['jform']['params']['tz_fieldsid'])){
            $fieldsId   = $post['jform']['params']['tz_fieldsid'];
            if(count($fieldsId) == 1 && !empty($fieldsId[0])){
                $data['params']['tz_fieldsid'] = $fieldsId;
            }
            elseif(count($fieldsId) > 1){
                if(empty($fieldsId[0]))
                    array_shift($fieldsId);
                $data['params']['tz_fieldsid'] = $fieldsId;
            }
        }

		// Initialise variables;
		$dispatcher = JDispatcher::getInstance();
		$table = $this->getTable();
		$pk = (!empty($data['id'])) ? $data['id'] : (int) $this->getState($this->getName() . '.id');
		$isNew = true;

		// Include the content plugins for the on save events.
		JPluginHelper::importPlugin('content');

		// Load the row if saving an existing category.
		if ($pk > 0)
		{
			$table->load($pk);
			$isNew = false;
		}

		// Set the new parent id if parent id not matched OR while New/Save as Copy .
		if ($table->parent_id != $data['parent_id'] || $data['id'] == 0)
		{
			$table->setLocation($data['parent_id'], 'last-child');
		}

		// Alter the title for save as copy
		if ($input -> get('task') == 'save2copy')
		{
			list($title, $alias) = $this->generateNewTitle($data['parent_id'], $data['alias'], $data['title']);
			$data['title'] = $title;
			$data['alias'] = $alias;

            if($groupid){
                if(empty($groupid[0])){
                    $groupid[0] = 0;
                }
                $db     = JFactory::getDbo();

                $image  = '';
                if(!empty($data['tz_category_image_server'])){
                    if(isset($data['tz_category_hidden'])){
                        $this -> deleteImages($data['tz_category_hidden']);
                    }
                    $image  = $this -> uploadImages($data['tz_category_image_server']);
                }
                elseif(!empty($data['tz_image_url'])){
                    if(isset($data['tz_category_hidden'])){
                        $this -> deleteImages($data['tz_category_hidden']);
                    }
                    $image  = $this -> uploadImages($data['tz_image_url'],true);
                }
                else{
                    if(isset($data['tz_category_hidden'])){
                        $image  = $this -> uploadImages($data['tz_category_hidden']);
                    }
                }
                if(isset($data['tz_category_del_image']) && $data['tz_category_del_image'] == 1){
                    $this -> deleteImages($data['tz_category_hidden']);
                    $image  = '';
                }
				$table -> images	= $image;

//                $query  = 'UPDATE #__tz_portfolio_plus_categories SET `groupid`='.$groupid[0]
//                          .',`images`="'.$image.'"'
//                          .' WHERE catid='.(int) $post['jform']['id'];
//
//                $db -> setQuery($query);
//                if(!$db -> query()){
//                    $this -> setError($db -> getErrorMsg());
//                    return false;
//                }
            }


		}

		// Bind the data.
		if (!$table->bind($data))
		{
			$this->setError($table->getError());
			return false;
		}


		// Bind the rules.
		if (isset($data['rules']))
		{
			$rules = new JAccessRules($data['rules']);
			$table->setRules($rules);
		}

		// Check the data.
		if (!$table->check())
		{
			$this->setError($table->getError());
			return false;
		}

		// Trigger the onContentBeforeSave event.
		$result = $dispatcher->trigger($this->event_before_save, array($this->option . '.' . $this->name, &$table, $isNew));
		if (in_array(false, $result, true))
		{
			$this->setError($table->getError());
			return false;
		}

		// Store the data.
		if (!$table->store())
		{
			$this->setError($table->getError());
			return false;
		}

        // Save category with field group
        if($table -> id){

            if($groupid){
                if(empty($groupid[0])){
                    $groupid[0] = 0;
                }

                    $query  ='DELETE FROM #__tz_portfolio_plus_categories'
                             .' WHERE id='.(int) $table -> id;
                    $db     = JFactory::getDbo();
                    $db -> setQuery($query);

                    if(!$db -> query()){
                        $this -> setError($db -> getErrorMsg());
                        return false;
                    }

                    $image  = '';
                    if(!empty($post['tz_category_image_server'])){
                        if(isset($post['tz_category_hidden'])){
                            $this -> deleteImages($post['tz_category_hidden']);
                        }
                        $image  = $this -> uploadImages($post['tz_category_image_server']);
                    }
                    elseif(!empty($post['tz_image_url'])){
                        if(isset($post['tz_category_hidden'])){
                            $this -> deleteImages($post['tz_category_hidden']);
                        }
                        $image  = $this -> uploadImages($post['tz_image_url'],true);
                    }
                    else{
                        if(isset($post['tz_category_hidden'])){
                            $image  = $post['tz_category_hidden'];
                        }
                    }
                    if(isset($post['tz_category_del_image']) && $post['tz_category_del_image'] == 1){
                        $this -> deleteImages($post['tz_category_hidden']);
                        $image  = '';
                    }

                    $value  = array();

                    foreach($groupid as $row){
                        $value[]  = '('.$table -> id.','.$row.',"'.$image.'",'.$data['template_id'].')';
                    }

                    $value  = implode(',',$value);
                    $query  = 'INSERT INTO #__tz_portfolio_plus_categories(`catid`,`groupid`,`images`,'
                        .$db -> quoteName('template_id').')'
                                  .' VALUES'.$value;

                    $db -> setQuery($query);
                    if(!$db -> query()){
                        $this -> setError($db -> getErrorMsg());
                        return false;
                    }
                //}
            }
        }

		$assoc = $this->getAssoc();
		if ($assoc)
		{

			// Adding self to the association
			$associations = $data['associations'];

			foreach ($associations as $tag => $id)
			{
				if (empty($id))
				{
					unset($associations[$tag]);
				}
			}

			// Detecting all item menus
			$all_language = $table->language == '*';

			if ($all_language && !empty($associations))
			{
				JError::raiseNotice(403, JText::_('COM_TZ_PORTFOLIO_PLUS_CATEGORIES_ERROR_ALL_LANGUAGE_ASSOCIATED'));
			}

			$associations[$table->language] = $table->id;

			// Deleting old association for these items
			$db = JFactory::getDbo();
			$query = $db->getQuery(true)
				->delete('#__associations')
				->where($db->quoteName('context') . ' = ' . $db->quote('com_tz_portfolio_plus.categories.item'))
				->where($db->quoteName('id') . ' IN (' . implode(',', $associations) . ')');
			$db->setQuery($query);
			$db->execute();

			if ($error = $db->getErrorMsg())
			{
				$this->setError($error);
				return false;
			}

			if (!$all_language && count($associations))
			{
				// Adding new association for these items
				$key = md5(json_encode($associations));
				$query->clear()
					->insert('#__associations');

				foreach ($associations as $id)
				{
					$query->values($id . ',' . $db->quote('com_tz_portfolio_plus.categories.item') . ',' . $db->quote($key));
				}

				$db->setQuery($query);
				$db->execute();

				if ($error = $db->getErrorMsg())
				{
					$this->setError($error);
					return false;
				}
			}
		}

		// Trigger the onContentAfterSave event.
		$dispatcher->trigger($this->event_after_save, array($this->option . '.' . $this->name, &$table, $isNew));

		// Rebuild the path for the category:
		if (!$table->rebuildPath($table->id))
		{
			$this->setError($table->getError());
			return false;
		}

		// Rebuild the paths of the category's children:
		if (!$table->rebuild($table->id, $table->lft, $table->level, $table->path))
		{
			$this->setError($table->getError());
			return false;
		}

		$this->setState($this->getName() . '.id', $table->id);

		// Clear the cache
		$this->cleanCache();

		return true;
	}

	/**
	 * Method to change the published state of one or more records.
	 *
	 * @param   array    $pks    A list of the primary keys to change.
	 * @param   integer  $value  The value of the published state.
	 *
	 * @return  boolean  True on success.
	 *
	 * @since   2.5
	 */
	function publish(&$pks, $value = 1)
	{
		if (parent::publish($pks, $value)) {
			// Initialise variables.
			$dispatcher	= JDispatcher::getInstance();
			$extension	= JFactory::getApplication() -> input -> getCmd('extension');

			// Include the content plugins for the change of category state event.
			JPluginHelper::importPlugin('content');

			// Trigger the onCategoryChangeState event.
			$dispatcher->trigger('onCategoryChangeState', array($extension, $pks, $value));

			return true;
		}
	}

	/**
	 * Method rebuild the entire nested set tree.
	 *
	 * @return  boolean  False on failure or error, true otherwise.
	 *
	 * @since   1.6
	 */
	public function rebuild()
	{
		// Get an instance of the table object.
		$table = $this->getTable();

		if (!$table->rebuild())
		{
			$this->setError($table->getError());
			return false;
		}

		// Clear the cache
		$this->cleanCache();

		return true;
	}

	/**
	 * Method to save the reordered nested set tree.
	 * First we save the new order values in the lft values of the changed ids.
	 * Then we invoke the table rebuild to implement the new ordering.
	 *
	 * @param   array    $idArray    An array of primary key ids.
	 * @param   integer  $lft_array  The lft value
	 *
	 * @return  boolean  False on failure or error, True otherwise
	 *
	 * @since   1.6
	*/
	public function saveorder($idArray = null, $lft_array = null)
	{
		// Get an instance of the table object.
		$table = $this->getTable();

		if (!$table->saveorder($idArray, $lft_array))
		{
			$this->setError($table->getError());
			return false;
		}

		// Clear the cache
		$this->cleanCache();

		return true;
	}

	/**
	 * Batch copy categories to a new category.
	 *
	 * @param   integer  $value     The new category.
	 * @param   array    $pks       An array of row IDs.
	 * @param   array    $contexts  An array of item contexts.
	 *
	 * @return  mixed  An array of new IDs on success, boolean false on failure.
	 *
	 * @since   1.6
	 */
	protected function batchCopy($value, $pks, $contexts)
	{
		$type = new JUcmType;
		$this->type = $type->getTypeByAlias($this->typeAlias);

		// $value comes as {parent_id}.{extension}
		$parts = explode('.', $value);
		$parentId = (int) JArrayHelper::getValue($parts, 0, 1);

		$db = $this->getDbo();
		$extension = JFactory::getApplication()->input->get('extension', '', 'word');
		$newIds = array();

		// Check that the parent exists
		if ($parentId)
		{
			if (!$this->table->load($parentId))
			{
				if ($error = $this->table->getError())
				{
					// Fatal error
					$this->setError($error);

					return false;
				}
				else
				{
					// Non-fatal error
					$this->setError(JText::_('JGLOBAL_BATCH_MOVE_PARENT_NOT_FOUND'));
					$parentId = 0;
				}
			}

			// Check that user has create permission for parent category
			if ($parentId == $this->table->getRootId())
			{
				$canCreate = $this->user->authorise('core.create', 'com_tz_portfolio_plus');
			}
			else
			{
				$canCreate = $this->user->authorise('core.create', 'com_tz_portfolio_plus.category.' . $parentId);
			}

			if (!$canCreate)
			{
				// Error since user cannot create in parent category
				$this->setError(JText::_('COM_TZ_PORTFOLIO_PLUS_CATEGORIES_BATCH_CANNOT_CREATE'));

				return false;
			}
		}

		// If the parent is 0, set it to the ID of the root item in the tree
		if (empty($parentId))
		{
			if (!$parentId = $this->table->getRootId())
			{
				$this->setError($db->getErrorMsg());

				return false;
			}
			// Make sure we can create in root
			elseif (!$this->user->authorise('core.create', $extension))
			{
				$this->setError(JText::_('COM_TZ_PORTFOLIO_PLUS_CATEGORIES_BATCH_CANNOT_CREATE'));

				return false;
			}
		}

		// We need to log the parent ID
		$parents = array();

		// Calculate the emergency stop count as a precaution against a runaway loop bug
		$query = $db->getQuery(true)
			->select('COUNT(id)')
			->from($db->quoteName('#__tz_portfolio_plus_categories'));
		$db->setQuery($query);

		try
		{
			$count = $db->loadResult();
		}
		catch (RuntimeException $e)
		{
			$this->setError($e->getMessage());

			return false;
		}

		// Parent exists so let's proceed
		while (!empty($pks) && $count > 0)
		{
			// Pop the first id off the stack
			$pk = array_shift($pks);

			$this->table->reset();

			// Check that the row actually exists
			if (!$this->table->load($pk))
			{
				if ($error = $this->table->getError())
				{
					// Fatal error
					$this->setError($error);

					return false;
				}
				else
				{
					// Not fatal error
					$this->setError(JText::sprintf('JGLOBAL_BATCH_MOVE_ROW_NOT_FOUND', $pk));
					continue;
				}
			}

			// Copy is a bit tricky, because we also need to copy the children
			$query->clear()
				->select('id')
				->from($db->quoteName('#__tz_portfolio_plus_categories'))
				->where('lft > ' . (int) $this->table->lft)
				->where('rgt < ' . (int) $this->table->rgt);
			$db->setQuery($query);
			$childIds = $db->loadColumn();

			// Add child ID's to the array only if they aren't already there.
			foreach ($childIds as $childId)
			{
				if (!in_array($childId, $pks))
				{
					array_push($pks, $childId);
				}
			}

			// Make a copy of the old ID and Parent ID
			$oldId = $this->table->id;
			$oldParentId = $this->table->parent_id;

			// Reset the id because we are making a copy.
			$this->table->id = 0;

			// If we a copying children, the Old ID will turn up in the parents list
			// otherwise it's a new top level item
			$this->table->parent_id = isset($parents[$oldParentId]) ? $parents[$oldParentId] : $parentId;

			// Set the new location in the tree for the node.
			$this->table->setLocation($this->table->parent_id, 'last-child');

			// TODO: Deal with ordering?
			// $this->table->ordering	= 1;
			$this->table->level = null;
			$this->table->asset_id = null;
			$this->table->lft = null;
			$this->table->rgt = null;

			// Alter the title & alias
			list($title, $alias) = $this->generateNewTitle($this->table->parent_id, $this->table->alias, $this->table->title);
			$this->table->title = $title;
			$this->table->alias = $alias;

			// Unpublish because we are making a copy
			$this->table->published = 0;

			parent::createTagsHelper($this->tagsObserver, $this->type, $pk, $this->typeAlias, $this->table);

			// Store the row.
			if (!$this->table->store())
			{
				$this->setError($this->table->getError());

				return false;
			}

			// Get the new item ID
			$newId = $this->table->get('id');

			// Add the new ID to the array
			$newIds[$pk] = $newId;

			// Now we log the old 'parent' to the new 'parent'
			$parents[$oldId] = $this->table->id;
			$count--;
		}

		// Rebuild the hierarchy.
		if (!$this->table->rebuild())
		{
			$this->setError($this->table->getError());

			return false;
		}

		// Rebuild the tree path.
		if (!$this->table->rebuildPath($this->table->id))
		{
			$this->setError($this->table->getError());

			return false;
		}

		return $newIds;
	}

	/**
	 * Batch move categories to a new category.
	 *
	 * @param   integer  $value     The new category ID.
	 * @param   array    $pks       An array of row IDs.
	 * @param   array    $contexts  An array of item contexts.
	 *
	 * @return  boolean  True on success.
	 *
	 * @since   1.6
	 */
	protected function batchMove($value, $pks, $contexts)
	{
		$parentId = (int) $value;

		$table = $this->getTable();
		$db = $this->getDbo();
		$query = $db->getQuery(true);
		$user = JFactory::getUser();
		$extension = JFactory::getApplication()->input->get('extension', '', 'word');

		// Check that the parent exists.
		if ($parentId)
		{
			if (!$table->load($parentId))
			{
				if ($error = $table->getError())
				{
					// Fatal error
					$this->setError($error);

					return false;
				}
				else
				{
					// Non-fatal error
					$this->setError(JText::_('JGLOBAL_BATCH_MOVE_PARENT_NOT_FOUND'));
					$parentId = 0;
				}
			}
			// Check that user has create permission for parent category
			$canCreate = ($parentId == $table->getRootId()) ? $user->authorise('core.create', $extension) : $user->authorise('core.create', $extension . '.category.' . $parentId);
			if (!$canCreate)
			{
				// Error since user cannot create in parent category
				$this->setError(JText::_('COM_TZ_PORTFOLIO_PLUS_CATEGORIES_BATCH_CANNOT_CREATE'));
				return false;
			}

			// Check that user has edit permission for every category being moved
			// Note that the entire batch operation fails if any category lacks edit permission
			foreach ($pks as $pk)
			{
				if (!$user->authorise('core.edit', $extension . '.category.' . $pk))
				{
					// Error since user cannot edit this category
					$this->setError(JText::_('COM_TZ_PORTFOLIO_PLUS_CATEGORIES_BATCH_CANNOT_EDIT'));
					return false;
				}
			}
		}

		// We are going to store all the children and just move the category
		$children = array();

		// Parent exists so we let's proceed
		foreach ($pks as $pk)
		{
			// Check that the row actually exists
			if (!$table->load($pk))
			{
				if ($error = $table->getError())
				{
					// Fatal error
					$this->setError($error);
					return false;
				}
				else
				{
					// Not fatal error
					$this->setError(JText::sprintf('JGLOBAL_BATCH_MOVE_ROW_NOT_FOUND', $pk));
					continue;
				}
			}

			// Set the new location in the tree for the node.
			$table->setLocation($parentId, 'last-child');

			// Check if we are moving to a different parent
			if ($parentId != $table->parent_id)
			{
				// Add the child node ids to the children array.
				$query->clear();
				$query->select('id');
				$query->from($db->quoteName('#__tz_portfolio_plus_categories'));
				$query->where($db->quoteName('lft' ) .' BETWEEN ' . (int) $table->lft . ' AND ' . (int) $table->rgt);
				$db->setQuery($query);
				$children = array_merge($children, (array) $db->loadColumn());
			}

			// Store the row.
			if (!$table->store())
			{
				$this->setError($table->getError());
				return false;
			}

			// Rebuild the tree path.
			if (!$table->rebuildPath())
			{
				$this->setError($table->getError());
				return false;
			}
		}

		// Process the child rows
		if (!empty($children))
		{
			// Remove any duplicates and sanitize ids.
			$children = array_unique($children);
			JArrayHelper::toInteger($children);

			// Check for a database error.
			if ($db->getErrorNum())
			{
				$this->setError($db->getErrorMsg());
				return false;
			}
		}

		return true;
	}

	/**
	 * Custom clean the cache of com_content and content modules
	 *
	 * @since	1.6
	 */
	protected function cleanCache($group = null, $client_id = 0)
	{
		$extension = JFactory::getApplication() -> input -> getCmd('extension');
		switch ($extension)
		{
			case 'com_tz_portfolio_plus':
				parent::cleanCache('com_tz_portfolio_plus');
				parent::cleanCache('mod_tz_portfolio_plus_articles');
				parent::cleanCache('mod_tz_portfolio_plus_articles_archive');
				parent::cleanCache('mod_tz_portfolio_plus_categories');
				parent::cleanCache('mod_tz_portfolio_plus_tags');
				break;
			default:
				parent::cleanCache($extension);
				break;
		}
	}

	/**
	 * Method to change the title & alias.
	 *
	 * @param   integer  $parent_id  The id of the parent.
	 * @param   string   $alias      The alias.
	 * @param   string   $title      The title.
	 *
	 * @return  array  Contains the modified title and alias.
	 *
	 * @since	1.7
	 */
	protected function generateNewTitle($parent_id, $alias, $title)
	{
		// Alter the title & alias
		$table = $this->getTable();
		while ($table->load(array('alias' => $alias, 'parent_id' => $parent_id)))
		{
			$title = JString::increment($title);
			$alias = JString::increment($alias, 'dash');
		}

		return array($title, $alias);
	}
}
