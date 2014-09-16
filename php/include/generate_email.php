<?php
/**
 * Created by PhpStorm.
 * User: paveldanilov
 * Date: 06/08/14
 * Time: 17:57
 */
$error = false;
$error_message = false;

if (isset($_POST['send_form'])) {

    $required_fields = array('name', 'phone');
    foreach ($required_fields as $key) {
        if (!isset($_POST[$key])) {
            $error = true;
            $error_message = 'Проверьте правильность заполнения всех полей!';
            break;
        }
    }

    if (!$error) {

        $subject = 'Заказ десерта';
        $message = 'Имя: ' . $_POST['name'] . '<br>
                    Телефон: ' . $_POST['phone'] . '<br> ';

        $mail_flag = sendMessage(
            array(

            ),
            '',
            $subject,
            $message
        );

        if (!$mail_flag) {
            $error = true;
        }
    }

    if (!$error) {
        header("Location: success.php");
        die();
    } else {
        $error = true;
        $error_message = 'Ошибка отправки почты. Попробуйте отправить заявку еще раз.';
    }
}