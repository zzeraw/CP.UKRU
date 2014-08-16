<?php
/**
 * Created by PhpStorm.
 * User: paveldanilov
 * Date: 06/08/14
 * Time: 17:56
 */

function sendMessage($mailboxes, $from, $subject, $message)
{
    $mail = '';
    if (is_array($mailboxes)) {
        $mail = implode(',', $mailboxes);
    } else {
        $mail = $mailboxes;
    }

    return mail($mail, $subject, $message, "Content-Type: text/html; charset=utf-8;\nFrom: " . $from);
}