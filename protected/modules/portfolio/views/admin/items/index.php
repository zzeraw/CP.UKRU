<?php
/* @var $this PageController */
/* @var $model Page */

$this->pageTitle = Yii::app()->name . ' - ' . 'Список работ';

$this->breadcrumbs = array(
    'Список работ',
);

$this->menu = array(
    array(
        'label' => 'Добавить работу',
        'icon' => 'plus',
        'url' => array('create')
    ),
);

?>

<h1>Список работ</h1>

<?php $this->widget('zii.widgets.grid.CGridView', array(
    'id' => 'portfolio-items-grid',
    'dataProvider' => $model->search(),
    'itemsCssClass' => 'table table-striped',
    'selectableRows' => 0,
    'rowCssClassExpression' => '($data->active == 1) ? "row-on" : "row-off"',
    'columns' => array(
        'id',
        array(
            'class' => 'DataColumn',
            'evaluateHtmlOptions' => true,
            'type' => 'html',
            'htmlOptions' => array(
                'class' => '($data->active == 1) ? "td-active" : "td-inactive"',
                'title' => '($data->active == 1) ? "Выключить" : "Включить"',
            ),
            'value' => 'CHtml::link(($data->active == 1) ? "<span class=\'glyphicon glyphicon-off\'></span>" : "<span class=\'glyphicon glyphicon-play\'></span>", array(($data->active == 1) ? "turnOff" : "turnOn", "id" => $data->id))',
        ),
        array(
            'name' => 'image',
            'type' => 'raw',
            'value' => '"<img width=50 src=/uploads/thumb_" . $data->image . ">"'
        ),
        array(
            'name' => 'title',
            'htmlOptions' => array('class' => 'portfolio-item-title'),
            'type' => 'html',
            'value' => 'CHtml::link(CHtml::encode($data->title), array("update", "id" => $data->id))'
        ),
        array(
            'class' => 'CButtonColumn',
            'template' => '{delete}',
            'deleteConfirmation' => "js:'Вы действительно хотите удалить работу ' + $(this).parents('tr').children('.portfolio-item-title').text() + '?'",
            'buttons' => array(
                'delete' => array(
                    'label' => 'Удалить',
                    'icon' => 'remove',
                    'url' => 'Yii::app()->createUrl("portfolio/admin/items/delete", array("id" => $data->id))',
                ),
            ),
        ),
    ),
)); ?>
