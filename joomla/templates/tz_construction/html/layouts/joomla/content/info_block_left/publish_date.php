<?php
/**
 * @package     Joomla.Site
 * @subpackage  Layout
 *
 * @copyright   Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('JPATH_BASE') or die;
?>
<div class="tz__blog__published text-center">
    <time datetime="<?php echo JHtml::_('date', $displayData['item']->publish_up, 'c'); ?>" itemprop="datePublished">
        <?php echo '<span class="month">' . JHtml::_('date', $displayData['item']->publish_up, JText::_('M')) . '</span>'; ?>
        <?php echo '<span class="day">' . JHtml::_('date', $displayData['item']->publish_up, JText::_('d')) . '</span>'; ?>
    </time>
</div>