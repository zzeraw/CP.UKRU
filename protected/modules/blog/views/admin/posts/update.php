<?php

$this->pageTitle = Yii::app()->name . ' - ' . 'Редактировать пост "' . $model->title . '"';

$this->breadcrumbs = array(
    'Список постов' => array('index'),
    '"' . $model->title . '"' => array('update', 'id'=>$model->id),
);

$this->menu = array(
    array(
        'label' => 'Список постов',
        'icon' => 'list',
        'url' => array('index')
    ),
    array(
        'label' => 'Создать пост',
        'icon' => 'plus',
        'url' => array('create')
    ),
    array(
        'label' => ($model->active == 1) ? 'Выключить пост' : 'Включить пост',
        'icon' => ($model->active == 1) ? 'icon-off' : 'icon-ok',
        'url' => ($model->active == 1) ? array('turnOff', 'id' => $model->id) : array('turnOn', 'id' => $model->id)
    ),

    array(
        'label' => 'Удалить пост',
        'icon' => 'remove',
        'url' => array('delete', 'id' => $model->id),
        'htmlOptions' => array(
            'confirm' => 'Вы действительно хотите удалить этот пост (' . $model->title . ')?'
        ),
    ),
);

?>

<h1>Редактировать пост "<?php echo $model->title; ?>"</h1>

<?php echo $this->renderPartial('_form', array('model' => $model)); ?>
