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

//no direct access
defined('_JEXEC') or die('Restricted access');
JHtml::_('behavior.tooltip');
JHtml::_('bootstrap.tooltip');
JHtml::_('dropdown.init');
JHtml::_('formbehavior.chosen', 'select');
$sortFields = array('name' => JText::_('COM_TZ_PORTFOLIO_PLUS_NAME'),
    'id' => JText::_('JGRID_HEADING_ID'));

$listOrder	= $this->escape($this->state->get('list.ordering'));
$listDirn	= $this->escape($this->state->get('list.direction'));
$saveOrder	= $listOrder == 'g.ordering';

if ($saveOrder)
{
    $saveOrderingUrl = 'index.php?option=com_tz_portfolio_plus&task=groups.saveOrderAjax&tmpl=component';
    JHtml::_('sortablelist.sortable', 'groups', 'adminForm', strtolower($listDirn), $saveOrderingUrl);
}
?>

<?php if(COM_TZ_PORTFOLIO_PLUS_JVERSION_COMPARE): //If the joomla's version is 3.0 ?>
<script type="text/javascript">
    Joomla.orderTable = function() {
        table = document.getElementById("sortTable");
        direction = document.getElementById("directionTable");
        order = table.options[table.selectedIndex].value;
        if (order != '<?php echo $listOrder; ?>') {
            dirn = 'asc';
        } else {
            dirn = direction.options[direction.selectedIndex].value;
        }
        Joomla.tableOrdering(order, dirn, '');
    }
</script>
<?php endif;?>

<form name="adminForm" id="adminForm" method="post" action="index.php?option=com_tz_portfolio_plus&view=groups">
    <?php if(!empty($this -> sidebar) AND COM_TZ_PORTFOLIO_PLUS_JVERSION_COMPARE):?>
    <div id="j-sidebar-container" class="span2">
        <?php echo $this -> sidebar; ?>
    </div>
    <div id="j-main-container" class="span10 tpContainer">
    <?php else:?>
        <div id="j-main-container" class="tpContainer">
    <?php endif;?>

    <div id="filter-bar" class="btn-toolbar">
        <div class="filter-search btn-group pull-left">
            <label for="search" class="element-invisible"><?php echo JText::_('JSEARCH_FILTER_LABEL')?></label>
            <input type="text" name="filter_search" id="filter_search"
                   placeholder="<?php echo JText::_('COM_TZ_PORTFOLIO_PLUS_SEARCH_IN_TITLE'); ?>"
                   value="<?php echo $this -> state -> filter_search;?>"
                   title="<?php echo JText::_('COM_TZ_PORTFOLIO_PLUS_SEARCH_IN_TITLE'); ?>" />
        </div>
        <div class="btn-group pull-left">
            <button type="submit" class="btn hasTooltip" title="<?php echo JText::_('JSEARCH_FILTER_SUBMIT'); ?>"><i class="icon-search"></i></button>
            <button onclick="document.getElementById('search').value='';this.form.submit();"
                    type="button" class="btn hasTooltip" title="<?php echo JText::_('JSEARCH_FILTER_CLEAR'); ?>" >
                <i class="icon-remove"></i>
            </button>
        </div>

        <?php if(COM_TZ_PORTFOLIO_PLUS_JVERSION_COMPARE): //If the joomla's version is 3.0 ?>
        <div class="btn-group pull-right hidden-phone">
            <label for="limit" class="element-invisible"><?php echo JText::_('JFIELD_PLG_SEARCH_SEARCHLIMIT_DESC');?></label>
            <?php echo $this->pagination->getLimitBox(); ?>
        </div>
        <div class="btn-group pull-right hidden-phone">
            <label for="directionTable" class="element-invisible"><?php echo JText::_('JFIELD_ORDERING_DESC');?></label>
            <select name="directionTable" id="directionTable" class="input-medium" onchange="Joomla.orderTable()">
                <option value=""><?php echo JText::_('JFIELD_ORDERING_DESC');?></option>
                <option value="asc" <?php if ($listDirn == 'asc') echo 'selected="selected"'; ?>><?php echo JText::_('JGLOBAL_ORDER_ASCENDING');?></option>
                <option value="desc" <?php if ($listDirn == 'desc') echo 'selected="selected"'; ?>><?php echo JText::_('JGLOBAL_ORDER_DESCENDING');?></option>
            </select>
        </div>
        <div class="btn-group pull-right">
            <label for="sortTable" class="element-invisible"><?php echo JText::_('JGLOBAL_SORT_BY');?></label>
            <select name="sortTable" id="sortTable" class="input-medium" onchange="Joomla.orderTable()">
                <option value=""><?php echo JText::_('JGLOBAL_SORT_BY');?></option>
                <?php echo JHtml::_('select.options', $sortFields, 'value', 'text', $listOrder);?>
            </select>
        </div>
        <?php endif;?>
    </div>

    <table class="table table-striped" id="groups">
        <thead>
        <tr>
            <th width="1%" class="nowrap center hidden-phone">
                <?php echo JHtml::_('grid.sort', '<i class="icon-menu-2"></i>', 'g.ordering', $listDirn, $listOrder, null, 'asc', 'JGRID_HEADING_ORDERING'); ?>
            </th>
            <th width="1%" class="hidden-phone">
                <input type="checkbox" name="checkall-toggle"
                       title="<?php echo JText::_('JGLOBAL_CHECK_ALL'); ?>" onclick="Joomla.checkAll(this)"/>
            </th>
            <th width="1%" style="min-width:55px" class="nowrap center">
                <?php echo JHtml::_('grid.sort', 'JSTATUS', 'g.published', $listDirn, $listOrder); ?>
            </th>
            <th class="title">
                <?php echo JHTML::_('grid.sort','COM_TZ_PORTFOLIO_PLUS_NAME','name',$listDirn,$listOrder);?>
            </th>
            <th class="title">
                <?php echo JText::_('COM_TZ_PORTFOLIO_PLUS_CATEGORIES_ASSIGNMENT');?>
            </th>
            <th class="title">
                <?php echo JText::_('COM_TZ_PORTFOLIO_PLUS_TOTAL_FIELDS');?>
            </th>
            <th width="1%" nowrap="nowrap">
                <?php echo JHTML::_('grid.sort','JGRID_HEADING_ID','id',$listDirn,$listOrder);?>
            </th>
        </tr>
        </thead>

        <tfoot>
        <tr>
            <td colspan="11">
                <?php echo $this -> pagination -> getListFooter();?>
            </td>
        </tr>
        </tfoot>

        <tbody>
        <?php
        if($this -> items):
            foreach($this -> items as $i => $item):
                ?>
            <tr class="row<?php echo ($i%2==1)?'1':$i;?>">
                <td class="order nowrap center hidden-phone">
                    <?php
                    $disableClassName = '';
                    $disabledLabel	  = '';

                    if (!$saveOrder) :
                        $disabledLabel    = JText::_('JORDERINGDISABLED');
                        $disableClassName = 'inactive tip-top';
                    endif;
                    ?>
                    <span class="sortable-handler hasTooltip <?php echo $disableClassName?>" title="<?php echo $disabledLabel?>">
                        <i class="icon-menu"></i>
                    </span>
                    <input type="text" style="display:none" name="order[]" size="5" value="<?php echo $item->ordering;?>" class="width-20 text-area-order " />
                </td>
                <td>
                    <?php echo JHtml::_('grid.id', $i, $item->id); ?>
                </td>
                <td class="center">
                    <div class="btn-group">
                        <?php echo JHtml::_('jgrid.published', $item->published, $i, 'groups.', true, 'cb'); ?>
                    </div>
                </td>
                <td class="nowrap has-context">
                    <div class="pull-left">
                        <a href="index.php?option=com_tz_portfolio_plus&task=group.edit&id=<?php echo $item -> id;?>">
                            <?php echo $item -> name;?>
                        </a>
                    </div>
                    <div class="pull-left">
                        <?php
                        // Create dropdown items
                        JHtml::_('dropdown.edit', $item->id, 'group.');
                        // render dropdown list
                        echo JHtml::_('dropdown.render');
                        ?>
                    </div>
                </td>
                <td><?php
                    if(isset($item -> categories) && $item -> categories){
                        foreach($item -> categories as $j => $cat){
                            ?>
                            <a href="index.php?option=com_tz_portfolio_plus&task=category.edit&id=<?php echo $cat -> id;?>">
                                <?php echo $cat -> title;?>
                            </a>
                            <?php if($j < count($item -> categories) - 1) { ?>
                                <span>,</span>
                                <?php
                            }
                        }
                    }
                    ?>
                </td>
                <td><?php echo $item -> total;?>
                </td>
                <td align="center"><?php echo $item -> id;?></td>
            </tr>
                <?php
            endforeach;
        endif;
        ?>
        </tbody>

    </table>

    <input type="hidden" value="" name="task">
    <input type="hidden" value="0" name="boxchecked">
    <input type="hidden" value="<?php echo $listOrder;?>" name="filter_order">
    <input type="hidden" value="<?php echo $listDirn;?>" name="filter_order_Dir">
    <input type="hidden" name="return" value="<?php echo base64_encode(JUri::getInstance() -> toString())?>">
    <?php echo JHTML::_('form.token');?>
</div>
</form>
