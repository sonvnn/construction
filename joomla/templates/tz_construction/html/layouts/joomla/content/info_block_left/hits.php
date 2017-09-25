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
<div class="tz__blog__hits text-center">
    <span class="fa fa-eye" aria-hidden="true"></span>
    <meta itemprop="interactionCount" content="UserPageVisits:<?php echo $displayData['item']->hits; ?>"/>
    <?php echo '<div class="text">' .  $displayData['item']->hits . '</div>'; ?>
</div>