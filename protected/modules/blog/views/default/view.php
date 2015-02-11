<h1><?=$model->title?></h1>
<p><?=CHelper::sqlDateToRussianDatetime($model->created_datetime)?></p>
<p><?=$model->generateTagsLinks()?></p>
<div>
    <?=$this->decodeWidgets($model->body)?>
</div>
<hr>
<?php if (Yii::app()->user->isGuest) : ?>
    <p>Do you already have an account on one of these sites? Click the logo to log in with it here:</p>
    <?php
        $this->widget('ext.eauth.EAuthWidget');
    ?>
<?php else: ?>

    <div class="form">

        <?php $form = $this->beginWidget('CActiveForm', array(
            'id' => 'comment-form',
            'enableAjaxValidation' => false,
            'clientOptions' => array(
                'validateOnSubmit' => true,
            ),
        )); ?>

            <?php echo $form->errorSummary($comment_form); ?>

            <div class="form-group">
                <?php echo $form->labelEx($comment_form,'comment'); ?>
                <?php echo $form->textArea($comment_form,'comment', array('class' => 'form-control input-large')); ?>
                <?php echo $form->error($comment_form,'comment'); ?>
            </div>

            <div class="buttons">
                <?php echo CHtml::submitButton('Отправить', array('class' => 'btn btn-primary')); ?>
            </div>

        <?php $this->endWidget(); ?>

    </div>

<?php endif; ?>
<hr>
<?php foreach ($model->comments as $comment) : ?>

    qwr

<?php endforeach; ?>