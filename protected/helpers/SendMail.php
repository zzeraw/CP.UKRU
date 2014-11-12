<?php
class SendMail
{
    /**
    * Отправка почты
    * @param str $to
    * @param str $subject
    * @param str $message
    */
    public static function send($to, $subject, $message)
    {
        $__smtp = Yii::app()->params['smtp'];

        Yii::app()->mailer->IsSMTP();
        Yii::app()->mailer->Subject = $subject;
        Yii::app()->mailer->Body    = $message;

        Yii::app()->mailer->ClearAddresses();

        if (is_array($to)) {
            foreach ($to as $value) {
                Yii::app()->mailer->AddAddress($value);
            }
        } else {
            Yii::app()->mailer->AddAddress($to);
        }

        Yii::app()->mailer->IsHTML(true);
        Yii::app()->mailer->Host      = $__smtp['host'];
        Yii::app()->mailer->SMTPDebug = $__smtp['debug'];
        Yii::app()->mailer->SMTPAuth  = $__smtp['auth'];
        Yii::app()->mailer->Host      = $__smtp['host'];
        Yii::app()->mailer->Port      = $__smtp['port'];
        Yii::app()->mailer->Username  = $__smtp['username'];
        Yii::app()->mailer->Password  = $__smtp['password'];
        Yii::app()->mailer->CharSet   = $__smtp['charset'];
        Yii::app()->mailer->From      = $__smtp['from'];
        Yii::app()->mailer->FromName  = $__smtp['fromname'];

        return Yii::app()->mailer->Send();
    }

    /**
     *
     */
    public static function sendEmail($from, $to, $subject, $message)
    {
        if (is_array($to)) {
            $to = implode(',', $to);
        }

        return mail($to, $subject, $message, "Content-Type: text/html; charset=utf-8;\nFrom: $from");
    }
}