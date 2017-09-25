<?php
/**
 * @package     Joomla.Site
 * @subpackage  mod_articles_latest
 *
 * @copyright   Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;
?>
<ul class="latestnews<?php echo $moduleclass_sfx; ?>">
<?php foreach ($list as $item) : ?>
	<li itemscope itemtype="https://schema.org/Article">
        <div class="media">
            <?php echo JLayoutHelper::render('joomla.content.intro_image', $item); ?>
        </div>
        <div class="info">
            <time><?php echo JHtml::_('date', $item->created, JText::_('DATE_FORMAT_LC')); ?></time>
            <a href="<?php echo $item->link; ?>" itemprop="url">
			<span itemprop="name">
				<?php echo $item->title; ?>
			</span>
            </a>
        </div>
	</li>
<?php endforeach; ?>
</ul>
