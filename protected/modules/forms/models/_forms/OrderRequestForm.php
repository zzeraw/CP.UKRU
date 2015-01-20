<?php

class OrderRequestForm extends BaseFormModel
{
    public $fio;
    public $phone;
    public $item;

    public $email_subject = 'Поступила заявка c сайта www.ukrushka.ru';

    public function rules()
    {
        return array(
            array(
                'fio, phone',
                'required',
            ),
            array(
                'fio',
                'length',
                'max' => 100,
            ),
            array(
                'phone',
                'length',
                'max' => 20,
            ),
            array(
                'item',
                'length',
                'max' => 400,
            ),
        );
    }

    public function attributeLabels()
    {
        return array(
            'fio' => 'Ф.И.О.',
            'phone' => 'Телефон',
            'item' => 'Услуга',
        );
    }

    public function send()
    {
        $from = Yii::app()->params['fromEmail'];
        $email = Yii::app()->params['managerEmail'];

        $subject = $this->email_subject;

        $message = $this->email_subject . '<br><br>';

        $message .= $this->getAttributeLabel('fio') . ': ' . $this->fio . '<br>';
        $message .= $this->getAttributeLabel('phone') . ': ' . $this->phone . '<br>';

        if (CHelper::isJson($this->item)) {
            $item_array = json_decode($this->item);
            foreach ($item_array as $key => $value) {
                $item = $key . ': ' . $value . '<br>';
            }
        } else {
            $item = $this->item . '<br>';
        }

        $message .= $item;

        $message .= '<br>';

        $db = new FormRequest;

        $db->fio = $this->fio;
        $db->phone = $this->phone;
        $db->description = json_encode(array('subject' => $this->email_subject));

        $db->save();

        return SendMail::sendEmail($from, $email, $subject, $message);
    }

}