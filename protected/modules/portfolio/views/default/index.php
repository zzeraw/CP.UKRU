<?php if (!empty($tags)) : ?>

        <?php if ($count_tags == 1) : ?>
            <p>Все работы с меткой <?=$tags?></p>
        <?php else: ?>
            <p>Все работы с метками: <?=$tags?></p>
        <?php endif; ?>
<?php endif; ?>



<div class="row">

    <?php
        $this->widget('zii.widgets.CListView', array(
            'dataProvider' => $items,
            'itemView' => '_view',
        ));
    ?>
</div>