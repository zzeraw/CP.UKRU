<div class="form">

<?php $form = $this->beginWidget('CActiveForm', array(
	'id' => 'block-form',
	'enableAjaxValidation' => false,
	'clientOptions' => array(
    	'validateOnSubmit' => true,
    ),
)); ?>

	<p class="note">Поля, отмеченные <span class="required">*</span>, обязательны для заполнения.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="form-group">
		<?php echo $form->labelEx($model,'alias'); ?>
		<?php echo $form->textField($model,'alias', array('class' => 'form-control input-large')); ?>
		<?php echo $form->error($model,'alias'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'title'); ?>
		<?php echo $form->textField($model,'title', array('class' => 'form-control input-large')); ?>
		<?php echo $form->error($model,'title'); ?>
	</div>

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

	<div class="buttons">
		<?php echo CHtml::submitButton('Сохранить', array('class' => 'btn btn-primary')); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->