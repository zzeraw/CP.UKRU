<div>
    <div>
        <div class="media">
            <h2 class="font-h"><a href="<?=Yii::app()->createUrl('blog/default/view', array('id' => $data->id))?>"><?=$data->title?></a></h2>
            <?php if (!empty($data->image)) : ?>
            <div class="media-left">
                <a href="<?=Yii::app()->createUrl('blog/default/view', array('id' => $data->id))?>">
                    <img style="width: 100px;" class="media-object" src="<?=$data->getImageThumbUrl()?>" alt="<?=$data->title?>">
                </a>
            </div>
            <?php endif; ?>
            <div class="media-body">
                <p><?=CHelper::sqlDateToRussianDatetime($data->created_datetime)?></p>
                <p><?=$data->generateTagsLinks()?></p>
                <?=$this->decodeWidgets($data->annotation)?>
                <br>
                <p><a href="<?=Yii::app()->createUrl('blog/default/view', array('id' => $data->id))?>">Читать далее...</a></p>
            </div>

        </div>

    </div>
</div>

<hr>
