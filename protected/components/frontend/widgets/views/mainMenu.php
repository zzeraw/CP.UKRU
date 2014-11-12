<?php
$str_pos = stripos(Yii::app()->request->url, Yii::app()->createUrl('catalog/default/index'));
?>

<ul class="nav navbar-nav">
    <li class="<?=(Yii::app()->request->url == '/') ? 'active' : ''?>">
        <a href="/" title="Главная">
            Главная
        </a>
    </li>
    <li class="<?=($str_pos === 0) ? 'active' : ''?>">
        <a href="<?=Yii::app()->createUrl('catalog/default/index')?>" title="Каталог товаров">
            Каталог товаров
        </a>
    </li>
    <li class="<?=(Yii::app()->request->url == Yii::app()->createUrl('pages/default/view', array('alias' => 'otzyvy'))) ? 'active' : ''?>">
        <a href="<?=Yii::app()->createUrl('pages/default/view', array('alias' => 'otzyvy'))?>">
            Отзывы
        </a>
    </li>
    <li class="<?=(Yii::app()->request->url == Yii::app()->createUrl('pages/default/view', array('alias' => 'kontakty'))) ? 'active' : ''?>">
        <a href="<?=Yii::app()->createUrl('pages/default/view', array('alias' => 'kontakty'))?>">
            Контакты
        </a>
    </li>
</ul>
