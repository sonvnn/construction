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

$item   = $this -> item;
$image  = $this -> image;
$params = $this -> params;
if($item && $image && isset($image -> url) && !empty($image -> url)):
    $class  = null;
    if($params -> get('tz_use_lightbox',0)){
        $class=' class = "fancybox fancybox.iframe"';
    }
    ?>

    <div class="tpGallery">
        <div class="tpTools">
            <a href="<?php echo $item -> link;?>" class="tpLink"
               title="<?php echo $item -> title;?>">
                <i class="tp tp-link"></i>
            </a>
        </div>
        <a<?php echo $class;?> href="<?php echo $item -> link;?>">
            <img src="<?php echo $image -> url;?>"
                 alt="<?php echo isset($image -> caption)?$image -> caption:$item -> title;?>"
                 title="<?php echo isset($image -> caption)?$image -> caption:$item -> title;?>"
                 itemprop="thumbnailUrl"/>
        </a>
    </div>
<?php endif;?>