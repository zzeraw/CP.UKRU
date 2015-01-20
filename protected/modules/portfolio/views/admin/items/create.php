<?php

$this->pageTitle = Yii::app()->name . ' - ' . 'Добавить работу';

$this->breadcrumbs = array(
    'Портфолио' => array('index'),
	'Добавить работу',
);

$this->menu = array(
    array(
        'label' => 'Список работ',
        'icon' => 'list',
        'url' => array('index')
    ),
);
?>

<h1>Добавить работу</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>