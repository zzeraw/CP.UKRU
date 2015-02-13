<h3><?=$model->title?></h3>

<div>
    <?=$model->body?>
</div>

<hr>

<?php $this->widget('zii.widgets.grid.CGridView', array(
    'id' => 'comments-grid',
    'dataProvider' => BlogComment::model()->search($model->id),
    'itemsCssClass' => 'table table-striped',
    'selectableRows' => 0,
    'rowCssClassExpression' => '($data->active == 1) ? "row-on" : "row-off"',
    'columns' => array(
        array(
            'name' => '#',
            'htmlOptions' => array('class' => 'comment-id'),
            'value' => '$data->id',
        ),
        array(
            'name' => 'comment',
            'type' => 'html',
            'value' => '$data->comment'
        ),
        array(
            'class' => 'CButtonColumn',
            'template' => '{delete}',
            'deleteConfirmation' => "js:'Вы действительно хотите удалить комментарий #' + $(this).parents('tr').children('.comment-id').text() + '?'",
            'buttons' => array(
                'delete' => array(
                    'label' => 'Удалить',
                    'icon' => 'remove',
                    'url' => 'Yii::app()->createUrl("blog/admin/posts/deleteComment", array("id" => $data->id))',
                ),
            ),
        ),
    ),
)); ?>