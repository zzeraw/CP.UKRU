<div>
    <h2 class="font-h"><a href="<?=Yii::app()->createUrl('blog/default/view', array('id' => $data->id))?>"><?=$data->title?></a></h2>
    <p><?=CHelper::sqlDateToRussianDatetime($data->created_datetime)?></p>
    <p><?=$data->generateTagsLinks()?></p>
    <div>
        <?=$this->decodeWidgets($data->getShortBody())?>
    </div>
</div>

<hr>
