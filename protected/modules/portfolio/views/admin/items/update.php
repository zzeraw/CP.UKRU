<?php

$this->pageTitle = Yii::app()->name . ' - ' . 'Редактировать работу "' . $model->title . '"';

$this->breadcrumbs = array(
    'Список работ' => array('index'),
    $model->title => array('update', 'id'=>$model->id),
);

$this->menu = array(
    array(
        'label' => 'Список работ',
        'icon' => 'list',
        'url' => array('index')
    ),
    array(
        'label' => 'Добавить работу',
        'icon' => 'plus',
        'url' => array('create')
    ),
    array(
        'label' => ($model->active == 1) ? 'Выключить работу' : 'Включить работу',
        'icon' => ($model->active == 1) ? 'icon-off' : 'icon-ok',
        'url' => ($model->active == 1) ? array('turnOff', 'id' => $model->id) : array('turnOn', 'id' => $model->id)
    ),

    array(
        'label' => 'Удалить работу',
        'icon' => 'remove',
        'url' => array('delete', 'id' => $model->id),
        'htmlOptions' => array(
            'confirm' => 'Вы действительно хотите удалить эту работу (' . $model->title . ')?'
        ),
    ),
);

?>

<h1>Редактировать работу "<?php echo $model->title; ?>"</h1>

<?php echo $this->renderPartial('_form', array('model' => $model)); ?>
