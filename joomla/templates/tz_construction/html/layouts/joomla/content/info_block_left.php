<?php
/**
 * @package     Joomla.Site
 * @subpackage  Layout
 *
 * @copyright   Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('JPATH_BASE') or die;

$blockPosition = $displayData['params']->get('info_block_position', 0);

?>
<!--	<div class="article-info muted">-->

			<?php if ($displayData['params']->get('show_publish_date')) : ?>
				<?php echo $this->sublayout('publish_date', $displayData); ?>
			<?php endif; ?>

			<?php if ($displayData['params']->get('show_hits')) : ?>
				<?php echo $this->sublayout('hits', $displayData); ?>
			<?php endif; ?>
<!--	</div>-->
