<?php

$this->pageTitle = Yii::app()->name . ' - ' . 'Создать пост';

$this->breadcrumbs = array(
    'Посты' => array('index'),
	'Создать новый',
);

$this->menu = array(
    array(
        'label' => 'Список постов',
        'icon' => 'list',
        'url' => array('index')
    ),
);
?>

<h1>Создать пост</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>