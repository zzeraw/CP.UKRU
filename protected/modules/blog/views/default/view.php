<h1><?=$model->title?></h1>
<p><?=CHelper::sqlDateToRussianDatetime($model->created_datetime)?></p>
<p><?=$model->generateTagsLinks()?></p>
<div>
    <?=$this->decodeWidgets($model->body)?>
</div>