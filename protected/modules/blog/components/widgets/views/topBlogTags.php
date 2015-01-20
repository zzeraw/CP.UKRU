<div class="text">
    <?php foreach ($tags as $key => $tag) : ?>
        <a href="<?=Yii::app()->createUrl('blog/default/index', array('tags' => $tag->name))?>"><?=$tag->name?></a>
        <?php if (count($tags) != $key+1) : ?>
            |
        <?php endif; ?>
    <?php endforeach; ?>
</div>