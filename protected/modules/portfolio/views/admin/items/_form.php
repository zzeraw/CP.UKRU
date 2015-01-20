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

	<div class="form-group">
		<?php echo $form->labelEx($model,'title'); ?>
		<?php echo $form->textField($model,'title', array('class' => 'form-control input-large')); ?>
		<?php echo $form->error($model,'title'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'annotation'); ?>
		<?php echo $form->textArea(
			$model,
			'annotation',
			array(
				'rows' => 6,
				'cols' => 50,
				'class' => 'tinymce',
			)
		); ?>
		<?php echo $form->error($model,'annotation'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'body'); ?>
		<?php echo $form->textArea(
			$model,
			'body',
			array(
				'rows' => 10,
				'cols' => 50,
				'class' => 'tinymce',
			)
		); ?>
		<?php echo $form->error($model,'body'); ?>
	</div>


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

    <div class="form-group">
        <?php echo $form->labelEx($model,'image_attr_title'); ?>
        <?php echo $form->textArea($model,'image_attr_title', array('class' => 'form-control input-large')); ?>
        <?php echo $form->error($model,'image_attr_title'); ?>
    </div>

    <div class="form-group">
        <?php echo $form->labelEx($model,'image_attr_alt'); ?>
        <?php echo $form->textArea($model,'image_attr_alt', array('class' => 'form-control input-large')); ?>
        <?php echo $form->error($model,'image_attr_alt'); ?>
    </div>


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

	<div class="form-group">
		<?php echo $form->labelEx($model,'meta_title'); ?>
		<?php echo $form->textField($model,'meta_title', array('class' => 'form-control input-large')); ?>
		<?php echo $form->error($model,'meta_title'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'meta_keywords'); ?>
		<?php echo $form->textArea($model,'meta_keywords', array('class' => 'form-control input-large')); ?>
		<?php echo $form->error($model,'meta_keywords'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'meta_description'); ?>
		<?php echo $form->textArea($model,'meta_description', array('class' => 'form-control input-large')); ?>
		<?php echo $form->error($model,'meta_description'); ?>
	</div>

	<div class="buttons">
		<?php echo CHtml::submitButton('Сохранить', array('class' => 'btn btn-primary')); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->

