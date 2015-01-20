<div class="col-xs-4">
    <div class="thumbnail" style="height: 300px;">
        <a href="<?=Yii::app()->createUrl('portfolio/default/view', array('id' => $data->id))?>" class="img-link"  style="display: block; height: 250px;">
            <img class="img-responsive" src="<?=$data->getImageThumbUrl()?>" alt=""  style="max-height: 250px;">
        </a>
        <div class="caption" style="height: 50px;">
            <p><a href="<?=Yii::app()->createUrl('portfolio/default/view', array('id' => $data->id))?>"><?=$data->title?></a></p>
        </div>
    </div>
</div>