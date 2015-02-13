<?php

class LoginWidget extends CWidget
{
    public function run()
    {
        if (!Yii::app()->user->isGuest) {
            echo 'Вы вошли как ' . Yii::app()->user->name . ' (<a href="' . Yii::app()->createUrl('blog/default/logout') . '">Выход</a>)';
        } else {
            echo '<a href="' . Yii::app()->createUrl('blog/default/login') . '">Вход</a>';
        }

    }
}

?>