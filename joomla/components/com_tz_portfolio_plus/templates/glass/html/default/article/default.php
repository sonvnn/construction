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

// no direct access
defined('_JEXEC') or die;

JHtml::addIncludePath(JPATH_COMPONENT . '/helpers');

$app    = JFactory::getApplication();

//JFactory::getLanguage()->load('com_content');

// Create shortcuts to some parameters.
$item       = $this -> item;
$params		= $item->params;
$images     = json_decode($item->images);
$urls       = json_decode($item->urls);
$canEdit	= $item->params->get('access-edit');
JHtml::_('behavior.caption');
$user		= JFactory::getUser();
$doc        = JFactory::getDocument();

?>

<div class="tpItemPage item-page<?php echo $this->pageclass_sfx?>"  itemscope itemtype="http://schema.org/Article">
    <meta itemprop="inLanguage" content="<?php echo ($item->language === '*') ? JFactory::getConfig()->get('language') : $item->language; ?>" />
    <?php if ($this->params->get('show_page_heading', 1)) : ?>
        <h2 class="tpHeadingTitle">
            <?php echo $this->escape($this->params->get('page_heading')); ?>
        </h2>
    <?php endif; ?>
    <?php
    if($this -> generateLayout && !empty($this -> generateLayout)) {
        echo $this->generateLayout;
    }else{
        ?>
        <?php
        echo $this -> loadTemplate('media');
        ?>

        <div class="row">
            <div class="col-md-4 col-xs-12">
                <?php if($extrafields = $this -> loadTemplate('extrafields')):?>
                    <?php echo $extrafields;?>
                <?php endif;?>
                <div class="headExtra"><?php echo JText::_('TPL_GLASS_SHARE'); ?></div>
                <div class="tpSocialShare">
                    <a class="facebook" rel="bookmark" id="fb-share"
                       onClick="window.open('http://www.facebook.com/sharer.php?s=100&amp;p[title]=<?php echo ($this->item->title); ?>&amp;p[url]=<?php echo $this->item->link; ?>','sharer','toolbar=0,status=0,width=580,height=325');" href="javascript: void(0)">
                        <i class="tp tp-facebook"></i>
                    </a>

                    <a href="javascript:"
                       onclick="popUp=window.open('https://twitter.com/intent/tweet?url=<?php echo $this->item->link; ?>&amp;text=<?php echo $this->escape($this->item->title); ?>', 'popupwindow', 'scrollbars=yes,width=800,height=400');popUp.focus();return false"
                       class="tz-social-button twitter">
                        <i class="tp tp-twitter"></i>
                    </a>

                    <a id="g-share" class="st google"
                       onClick="window.open('https://plus.google.com/share?url=<?php echo $this->item->link; ?>','sharer','toolbar=0,status=0,width=580,height=325');" href="javascript: void(0)">
                        <i class="tp tp-google-plus"></i>
                    </a>

                    <a href="javascript:"
                       onclick="popUp=window.open('http://pinterest.com/pin/create/button/?url=<?php echo $this->item->link; ?>&amp;media=https%3A%2F%2Fwww.templaza.com%2Fmedia%2Ftz_portfolio%2Farticle%2Fcache%2Fauto-showroom-car-dealership-joomla-template-740-h_XL.jpg&amp;description=%3Cp%3EAuto+Showroom+Joomla+Template+is+modern+design+which+is+useful+for+Car+Dealer%2C+Auto+Dealer%2C+Automotive+and+any+other+automotive+dealership+business%2C+who+sell%2C+buy+or+lease+vehicles+via+website.%3C%2Fp%3E%0D%0A%3Cp%3EIt+includes+well-designed+inventory+system%2C+it+will+help+you+to+setup+and+customize+for+your+vehicle+inventory.+Includes+a+completely+customizable%2C+filterable+and+sortable+inventory+search+to+search+your+vehicle+listings.%3C%2Fp%3E%0D%0A%3Cp%3EIts+stunning+beauty%2C+fashionable+clean+look+and+proper+execution%2C+accompanying+with+making+use+of+SP+Page+Builder%2C+Plazart+Framework%2C+TZ+Portfolio%2B%2C+Bootstrap+3%2C+will+help+you+to+own+an+amazing+site.%3C%2Fp%3E%0D%0A', 'popupwindow', 'scrollbars=yes,width=800,height=450'); popUp.focus();return false"
                       class="tz-social-button pinterest">
                        <i class="tp tp-pinterest"></i>
                    </a>

                    <a href="javascript:"
                       onclick="popUp=window.open('http://www.linkedin.com/shareArticle?mini=true&amp;url=<?php echo $this->item->link; ?>&amp;title=Auto+Showroom&amp;source=Templaza', 'popupwindow', 'scrollbars=yes,width=1000,height=400'); popUp.focus();return false"
                       class="tz-social-button linkedin">
                        <i class="tp tp-linkedin"></i>
                    </a>
                </div>
            </div>
            <div class="col-md-8 col-xs-12">
                <div class="tpHead">
                    <?php if($title = $this -> loadTemplate('title')):?>
                        <?php echo $title;?>
                    <?php endif;?>
                    <div class="tpMeta muted">
                        <?php echo $item -> event -> beforeDisplayAdditionInfo; ?>
                        <?php if($published_date = $this -> loadTemplate('published_date')):?>
                            <?php echo $published_date;?>
                        <?php endif;?>
                        <?php if($author_info = $this -> loadTemplate('author')):?>
                            <?php echo $author_info;?>
                        <?php endif;?>
                        <?php if($category = $this -> loadTemplate('category')):?>
                            <?php echo $category;?>
                        <?php endif;?>
                        <?php if($hits = $this -> loadTemplate('hits')):?>
                            <?php echo $hits;?>
                        <?php endif;?>
                        <?php if($modified_date = $this -> loadTemplate('modified_date')):?>
                            <?php echo $modified_date;?>
                        <?php endif;?>
                        <?php echo $item -> event -> afterDisplayAdditionInfo; ?>
                    </div>
                </div>
                <div class="tpBody type-standard clearfix">
                    <div class="tpArticle clearfix" itemprop="articleBody" data-blog-content>

                        <?php if($introtext = $this -> loadTemplate('introtext')):?>
                            <?php echo $introtext;?>
                        <?php endif;?>
                        <?php if($fulltext = $this -> loadTemplate('fulltext')):?>
                            <?php echo $fulltext;?>
                        <?php endif;?>

                        <?php if($tag = $this -> loadTemplate('tags')):?>
                            <?php echo $tag;?>
                        <?php endif;?>
                    </div>
                    <?php
                    $plugins = array('vote','attachment');
                    $dispatcher = new JEventDispatcher();
                    $html = '';
                    foreach ($plugins as $plugin) {

                        if ($plugin_obj = TZ_Portfolio_PlusPluginHelper::getPlugin('content', $plugin)) {
                            $className = 'PlgTZ_Portfolio_PlusContent' . ucfirst($plugin);

                            if (!class_exists($className)) {
                                TZ_Portfolio_PlusPluginHelper::importPlugin('content', $plugin);
                            }
                            if (class_exists($className)) {
                                $registry = new JRegistry($plugin_obj->params);

                                $plgClass = new $className($dispatcher, array('type' => ($plugin_obj->type)
                                , 'name' => ($plugin_obj->name), 'params' => $registry));

                                if (method_exists($plgClass, 'onContentDisplayArticleView')) {
                                    $html .= $plgClass->onContentDisplayArticleView('com_tz_portfolio_plus.'
                                        . $this->getName(), $this->item, $this->item->params
                                        , $this->state->get('list.offset'), '');
                                }
                            }
                            if (is_array($html)) {
                                $html .= implode("\n", $html);
                            }
                        }
                    }
                    echo $html;
                    ?>
                    <?php if (trim($this->item->params ->get('project_link'))) : ?>
                        <div class="tpPortfolioLink"><a href="<?php echo $this->item->params ->get('project_link'); ?>" title="<?php echo $this->item->params ->get('project_link_title'); ?>" target="_blank" itemprop="url"><?php echo $this->item->params ->get('project_link_title'); ?></a></div>
                    <?php endif; ?>
                </div>
            </div>
        </div>
        <?php
        $plugins = array('navigation');
        $dispatcher = new JEventDispatcher();
        $html = '';
        foreach ($plugins as $plugin) {
            if ($plugin_obj = TZ_Portfolio_PlusPluginHelper::getPlugin('content', $plugin)) {
                $className = 'PlgTZ_Portfolio_PlusContent' . ucfirst($plugin);

                if (!class_exists($className)) {
                    TZ_Portfolio_PlusPluginHelper::importPlugin('content', $plugin);
                }
                if (class_exists($className)) {
                    $registry = new JRegistry($plugin_obj->params);

                    $plgClass = new $className($dispatcher, array('type' => ($plugin_obj->type)
                    , 'name' => ($plugin_obj->name), 'params' => $registry));

                    if (method_exists($plgClass, 'onContentDisplayArticleView')) {
                        $html .= $plgClass->onContentDisplayArticleView('com_tz_portfolio_plus.'
                            . $this->getName(), $this->item, $this->item->params
                            , $this->state->get('list.offset'), '');
                    }
                }
                if (is_array($html)) {
                    $html .= implode("\n", $html);
                }
            }
        }
        ?>
        <?php
        if ($html) {
            echo '<div class="tpNavigation">'.$html.'</div>';
        }
        ?>
        <?php
        $plugins = array('music','charity','googlemap','hikashop_checkout');
        $dispatcher = new JEventDispatcher();
        $html = '';
        foreach ($plugins as $plugin) {

            if ($plugin_obj = TZ_Portfolio_PlusPluginHelper::getPlugin('content', $plugin)) {
                $className = 'PlgTZ_Portfolio_PlusContent' . ucfirst($plugin);

                if (!class_exists($className)) {
                    TZ_Portfolio_PlusPluginHelper::importPlugin('content', $plugin);
                }
                if (class_exists($className)) {
                    $registry = new JRegistry($plugin_obj->params);

                    $plgClass = new $className($dispatcher, array('type' => ($plugin_obj->type)
                    , 'name' => ($plugin_obj->name), 'params' => $registry));

                    if (method_exists($plgClass, 'onContentDisplayArticleView')) {
                        $html .= $plgClass->onContentDisplayArticleView('com_tz_portfolio_plus.'
                            . $this->getName(), $this->item, $this->item->params
                            , $this->state->get('list.offset'), '');
                    }
                }
                if (is_array($html)) {
                    $html .= implode("\n", $html);
                }
            }
        }
        if ($html) {
            echo '<div class="tpAddons">'.$html.'</div>';
        }
        if($about_author = $this -> loadTemplate('author_about')):
            echo $about_author;
        endif;
        if($related = $this -> loadTemplate('related')):
            echo $related;
        endif;
        $plugins = array('comment');
        $dispatcher = new JEventDispatcher();
        $html = '';
        foreach ($plugins as $plugin) {

            if ($plugin_obj = TZ_Portfolio_PlusPluginHelper::getPlugin('content', $plugin)) {
                $className = 'PlgTZ_Portfolio_PlusContent' . ucfirst($plugin);

                if (!class_exists($className)) {
                    TZ_Portfolio_PlusPluginHelper::importPlugin('content', $plugin);
                }
                if (class_exists($className)) {
                    $registry = new JRegistry($plugin_obj->params);

                    $plgClass = new $className($dispatcher, array('type' => ($plugin_obj->type)
                    , 'name' => ($plugin_obj->name), 'params' => $registry));

                    if (method_exists($plgClass, 'onContentDisplayArticleView')) {
                        $html .= $plgClass->onContentDisplayArticleView('com_tz_portfolio_plus.'
                            . $this->getName(), $this->item, $this->item->params
                            , $this->state->get('list.offset'), '');
                    }
                }
                if (is_array($html)) {
                    $html .= implode("\n", $html);
                }
            }
        }
        echo $html;
    }?>

    <?php

    //Call event onContentAfterDisplay on plugin
    //        echo $item->event->afterDisplayContent;
    ?>
</div>
