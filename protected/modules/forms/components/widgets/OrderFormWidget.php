<?php

class OrderFormWidget extends BaseFormWidget
{
    public function run()
    {
        $form_model = new OrderRequestForm;
        $form_widget_id = $this->genegateWidgetId('orderFormWidget');

        $button_class = $this->generateClasses($this->button_type, $this->button_size, (bool)$this->modal);
        $form_button_class = $this->generateClasses($this->form_button_type, $this->form_button_size, false);

        $this->render('orderFormWidget', array(
            'modal' => (bool)$this->modal,
            'modal_width' => $this->modal_width,

            'form_model' => $form_model,

            'form_caption' => $this->form_caption,
            'form_description' => $this->form_description,
            'form_button_text' => $this->form_button_text,
            'form_widget_id' => $form_widget_id,
            'form_class' => $this->form_class,

            'form_item' => $this->form_item,
            'show_form_item' => (bool) $this->show_form_item,

            'form_button_text' => $this->form_button_text,
            'form_button_class' => $form_button_class,

            'button_text' => $this->button_text,
            'button_class' => $button_class,
        ));
    }
}

