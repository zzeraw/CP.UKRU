<div class="form">

<?php $form = $this->beginWidget('CActiveForm', array(
	'id' => 'posts-form',
	'enableAjaxValidation' => false,
	'clientOptions' => array(
    	'validateOnSubmit' => true,
    ),
)); ?>

	<p class="note">Поля, отмеченные <span class="required">*</span>, обязательны для заполнения.</p>

	<?php echo $form->errorSummary($model); ?>

	<?php foreach (DMultilangHelper::suffixList() as $suffix => $lang) : ?>
        <div class="form-group">
            <?php echo $form->labelEx($model, 'title'); ?> <?php echo $lang; ?><br />
            <?php echo $form->textField($model, 'title' . $suffix, array('class' => 'form-control input-large')); ?>
            <?php echo $form->error($model, 'title' . $suffix); ?>
        </div>
    <?php endforeach; ?>

	<?php foreach (DMultilangHelper::suffixList() as $suffix => $lang) : ?>
        <div class="form-group">
            <?php echo $form->labelEx($model, 'annotation'); ?> <?php echo $lang; ?><br />
            <?php echo $form->textArea(
                $model,
                'annotation' . $suffix,
                array(
                    'rows' => 6,
                    'cols' => 50,
                    'class' => 'tinymce',
                )
            ); ?>
            <?php echo $form->error($model, 'annotation' . $suffix); ?>
        </div>
    <?php endforeach; ?>

	<?php foreach (DMultilangHelper::suffixList() as $suffix => $lang) : ?>
        <div class="form-group">
            <?php echo $form->labelEx($model, 'body'); ?> <?php echo $lang; ?><br />
            <?php echo $form->textArea(
                $model,
                'body' . $suffix,
                array(
                    'rows' => 6,
                    'cols' => 50,
                    'class' => 'tinymce',
                )
            ); ?>
            <?php echo $form->error($model, 'body' . $suffix); ?>
        </div>
    <?php endforeach; ?>


	<?php if (!empty($model->image)) : ?>
        <div class="form-group">
            <img width=100 src="/uploads/<?=$model->image?>" alt="">
        </div>
    <?php endif; ?>

    <div class="form-group">
        <?php echo $form->labelEx($model,'image'); ?>
        <?php echo $form->fileField($model,'image', array('class' => 'form-control input-large')); ?>
        <?php echo $form->error($model,'image'); ?>
    </div>

    <?php foreach (DMultilangHelper::suffixList() as $suffix => $lang) : ?>
        <div class="form-group">
            <?php echo $form->labelEx($model,'image_attr_title'); ?> <?php echo $lang; ?><br />
            <?php echo $form->textField($model,'image_attr_title' . $suffix, array('class' => 'form-control input-large')); ?>
            <?php echo $form->error($model,'image_attr_title' . $suffix); ?>
        </div>
    <?php endforeach; ?>

    <?php foreach (DMultilangHelper::suffixList() as $suffix => $lang) : ?>
        <div class="form-group">
            <?php echo $form->labelEx($model,'image_attr_alt'); ?> <?php echo $lang; ?><br />
            <?php echo $form->textField($model,'image_attr_alt' . $suffix, array('class' => 'form-control input-large')); ?>
            <?php echo $form->error($model,'image_attr_alt' . $suffix); ?>
        </div>
    <?php endforeach; ?>

    <div class="form-group">
        <?php echo $form->labelEx($model,'tagsString'); ?>
        <?php echo $form->textField($model,'tagsString', array('class' => 'form-control input-large')); ?>
        <?php echo $form->error($model,'tagsString'); ?>
    </div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'meta_index'); ?>
		<?php echo $form->dropDownList($model,'meta_index',
			array(0 => 'Нет', 1 => 'Да'),
			array('class' => 'span2')
		); ?>
		<?php echo $form->error($model,'meta_index'); ?>
	</div>

	<?php foreach (DMultilangHelper::suffixList() as $suffix => $lang) : ?>
        <div class="form-group">
            <?php echo $form->labelEx($model,'meta_title'); ?> <?php echo $lang; ?><br />
            <?php echo $form->textField($model,'meta_title' . $suffix, array('class' => 'form-control input-large')); ?>
            <?php echo $form->error($model,'meta_title' . $suffix); ?>
        </div>
    <?php endforeach; ?>

    <?php foreach (DMultilangHelper::suffixList() as $suffix => $lang) : ?>
        <div class="form-group">
            <?php echo $form->labelEx($model,'meta_keywords'); ?> <?php echo $lang; ?><br />
            <?php echo $form->textArea($model,'meta_keywords' . $suffix, array('class' => 'form-control input-large')); ?>
            <?php echo $form->error($model,'meta_keywords' . $suffix); ?>
        </div>
    <?php endforeach; ?>

    <?php foreach (DMultilangHelper::suffixList() as $suffix => $lang) : ?>
        <div class="form-group">
            <?php echo $form->labelEx($model,'meta_description'); ?> <?php echo $lang; ?><br />
            <?php echo $form->textArea($model,'meta_description' . $suffix, array('class' => 'form-control input-large')); ?>
            <?php echo $form->error($model,'meta_description' . $suffix); ?>
        </div>
    <?php endforeach; ?>

	<div class="buttons">
		<?php echo CHtml::submitButton('Сохранить', array('class' => 'btn btn-primary')); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->

