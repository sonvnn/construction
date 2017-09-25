<?php
/**
 * @package SP Page Builder
 * @author JoomShaper http://www.joomshaper.com
 * @copyright Copyright (c) 2010 - 2016 JoomShaper
 * @license http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 or later
 */
//no direct accees
defined('_JEXEC') or die ('restricted aceess');

class SppagebuilderAddonProgress_bar extends SppagebuilderAddons
{

    public function render()
    {

        $class = (isset($this->addon->settings->class) && $this->addon->settings->class) ? $this->addon->settings->class : '';
        $class .= (isset($this->addon->settings->shape) && $this->addon->settings->shape) ? 'sppb-progress-' . $this->addon->settings->shape : '';
        $type = (isset($this->addon->settings->type) && $this->addon->settings->type) ? $this->addon->settings->type : '';
        $progress = (isset($this->addon->settings->progress) && $this->addon->settings->progress) ? $this->addon->settings->progress : '';
        $text = (isset($this->addon->settings->text) && $this->addon->settings->text) ? $this->addon->settings->text : '';
        $stripped = (isset($this->addon->settings->stripped) && $this->addon->settings->stripped) ? $this->addon->settings->stripped : '';
        $active = (isset($this->addon->settings->active) && $this->addon->settings->active) ? $this->addon->settings->active : '';
        $show_percentage = (isset($this->addon->settings->show_percentage) && $this->addon->settings->show_percentage) ? $this->addon->settings->show_percentage : 0;
        $style = (isset($this->addon->settings->style) && $this->addon->settings->style) ? $this->addon->settings->style : 'style-1';
//        var_dump($show_percentage);

        $style_type = ($show_percentage) ? 'tz--type-1' : 'tz--type-2';
        //Output
        $output = '<div class="tz__progress tz--' . $style . ' ' . $style_type . '">';
        if ($style == 'style-1') {
            $output .= ($show_percentage) ? '<div class="sppb-progress-label clearfix">' . $text . '<span>' . (int)$progress . '%</span></div>' : '';
        }
        $output .= '<div class="sppb-progress ' . $class . '">';

        $output .= '<div class="sppb-progress-bar ' . $type . ' ' . $stripped . ' ' . $active . '" role="progressbar" aria-valuenow="' . (int)$progress . '" aria-valuemin="0" aria-valuemax="100" data-width="' . (int)$progress . '%">';
        if (!$show_percentage && $style == 'style-1') {
            $output .= '<div class="sppb-progress-label"><span class="tz__text">' . $text . '</span><span class="tz__percent">' . (int)$progress . '%</span></div>';
        }
        if ($style == 'style-2' && $style_type == 'tz--type-2') {
            $output .= ($text) ? $text : '';
            $output .= '<span class="pull-right">' . (int)$progress . '%</span>';
        }
        if ($style == 'style-2' && $style_type == 'tz--type-1') {
            $output .= ($text) ? $text . ' - ' . (int)$progress . '%' : '';
        }
        $output .= '</div>';
        $output .= '</div>';
        $output .= '</div>';

        return $output;
    }

    public function css()
    {
        $addon_id = '#sppb-addon-' . $this->addon->id;
        $bar_height = (isset($this->addon->settings->bar_height) && $this->addon->settings->bar_height) ? $this->addon->settings->bar_height : 0;
        $type = (isset($this->addon->settings->type) && $this->addon->settings->type) ? $this->addon->settings->type : '';
        $bar_background = (isset($this->addon->settings->bar_background) && $this->addon->settings->bar_background) ? $this->addon->settings->bar_background : '';
        $progress_bar_background = (isset($this->addon->settings->progress_bar_background) && $this->addon->settings->progress_bar_background) ? $this->addon->settings->progress_bar_background : '';

        $css = '';
        if ($bar_height) {
            $css .= $addon_id . ' .sppb-progress {height: ' . $bar_height . 'px;}';
            $css .= $addon_id . ' .sppb-progress-bar {line-height: ' . $bar_height . 'px;}';
        }

        if ($type == 'custom') {
            if ($bar_background) {
                $css .= $addon_id . ' .sppb-progress {background-color: ' . $bar_background . ';}';
            }

            if ($progress_bar_background) {
                $css .= $addon_id . ' .sppb-progress-bar {background-color: ' . $progress_bar_background . ';}';
            }
        }

        return $css;

    }

}
