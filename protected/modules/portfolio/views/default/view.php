<h2><?=$model->title?></h2>
<p><?=CHelper::sqlDateToRussianDatetime($model->created_datetime)?></p>
<p><?=$model->generateTagsLinks()?></p>
<hr/>
<div>
    <?=$this->decodeWidgets($model->annotation)?>
</div>
<hr/>
<div class="row">
    <div class="col-xs-6">
        <img class="img-responsive" src="<?=$model->getImageUrl()?>" alt="">
    </div>
    <div class="col-xs-6">
        <?php $this->widget('OrderFormWidget',
            array(
                'modal' => false,
                'form_caption' => 'Понравился десерт?<br>Могу сделать такой же для вас!',
                'form_button_size' => 'large',
                'form_button_type' => 'danger',
                'form_button_text' => 'Оставить заявку',
                'form_class' => 'landing-form',
                'form_item' => 'Заявка на десерт (со страницы "' . $model->title . '")',
            )
        ); ?>
    </div>
</div>
<hr/>
<div>
    <?=$this->decodeWidgets($model->body)?>
</div>
