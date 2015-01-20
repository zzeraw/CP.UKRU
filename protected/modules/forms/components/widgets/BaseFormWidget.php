<?php

abstract class BaseFormWidget extends CWidget
{
    /**
     * form, button_with_form, button_without_form
     * @var string
     */
    public $modal;
    public $modal_width = '530px';

    public $form_caption = 'form_caption';
    public $form_description = false;
    public $form_width = false;
    public $form_height = false;
    public $form_notice = '';
    public $form_class = 'request-form';

    public $form_item = '';
    public $show_form_item = false;

    public $form_button_text = 'button';
    public $form_button_type = 'default';
    public $form_button_size = 'default';

    public $button_text = 'button';
    public $button_type = 'default';
    public $button_size = 'default';

    public function genegateWidgetId($string = '')
    {
        $widget_id = $string . md5(time() . rand(1, 9999999));

        return $widget_id;
    }

    public function generateStyles()
    {
        $style = '';
        $style .= (!empty($this->form_height) ? 'height: ' . $this->form_height . 'px;' : '');
        $style .= (!empty($this->form_width) ? 'width: ' . $this->form_width . 'px' : '');

        return $style;
    }


    public function generateClasses($type, $size, $modal = false)
    {
        if ($modal == true) {
            $class_array[] = 'fancybox-modal';
        }

        $class_array[] = 'btn';
        $class_array[] = 'btn-' . $type;

        switch ($size) {
            case 'large':
                $class_array[] = 'btn-lg';
                break;
            case 'small':
                $class_array[] = 'btn-sm';
                break;
            case 'tiny':
                $class_array[] = 'btn-xs';
                break;
        }

        $class = implode(' ', $class_array);

        return $class;
    }

    protected function setFormAction()
    {

    }


}