<?php if (!empty($tags)) : ?>

        <?php if ($count_tags == 1) : ?>
            <p>Все записи с меткой <?=$tags?></p>
        <?php else: ?>
            <p>Все записи с метками: <?=$tags?></p>
        <?php endif; ?>
<?php endif; ?>

<?php
    $this->widget('zii.widgets.CListView', array(
        'dataProvider' => $posts,
        'itemView' => '_view',
    ));
?>