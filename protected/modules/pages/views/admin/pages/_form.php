<div class="form">

<?php $form = $this->beginWidget('CActiveForm', array(
	'id' => 'page-form',
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

	<div class="form-group">
		<?php echo $form->labelEx($model,'alias'); ?>
		<?php echo $form->textField($model,'alias', array('class' => 'form-control input-large')); ?>
		<?php echo $form->error($model,'alias'); ?>
	</div>

	<?php foreach (DMultilangHelper::suffixList() as $suffix => $lang) : ?>
		<div class="form-group">
			<?php echo $form->labelEx($model, 'begin_body'); ?> <?php echo $lang; ?><br />
			<?php echo $form->textArea(
				$model,
				'begin_body' . $suffix,
				array(
					'rows' => 6,
					'cols' => 50,
					'class' => 'tinymce',
				)
			); ?>
			<?php echo $form->error($model, 'begin_body' . $suffix); ?>
		</div>
	<?php endforeach; ?>

	<?php foreach (DMultilangHelper::suffixList() as $suffix => $lang) : ?>
		<div class="form-group">
			<?php echo $form->labelEx($model, 'end_body'); ?> <?php echo $lang; ?><br />
			<?php echo $form->textArea(
				$model,
				'end_body' . $suffix,
				array(
					'rows' => 6,
					'cols' => 50,
					'class' => 'tinymce',
				)
			); ?>
			<?php echo $form->error($model, 'end_body' . $suffix); ?>
		</div>
	<?php endforeach; ?>

	<div class="form-group">
		<?php echo $form->labelEx($model,'show_title'); ?>
		<?php echo $form->dropDownList($model,'show_title',
			array(0 => 'Нет', 1 => 'Да'),
			array('class' => 'span2')
		); ?>
		<?php echo $form->error($model,'show_title'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'module'); ?>
		<?php echo $form->textField($model,'module', array('class' => 'form-control input-medium')); ?>
		<?php echo $form->error($model,'module'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'template'); ?>
		<?php echo $form->textField($model,'template', array('class' => 'form-control input-medium')); ?>
		<?php echo $form->error($model,'template'); ?>
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

