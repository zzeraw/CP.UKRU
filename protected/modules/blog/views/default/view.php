<h2 class="font-h"><?=$model->title?></h2>
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

            <div class="form-group">
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
<h3 class="font-h">Комментарии</h3>
<?php if (count($model->comments)) : ?>
    <?php foreach ($model->comments as $comment) : ?>

        <div class="media">
            <div class="media-left">
                <a href="<?=$comment->createdBlogUser->profile_url?>">
                    <img class="media-object" src="<?=$comment->createdBlogUser->photo?>" alt="...">
                </a>
            </div>
            <div class="media-body">
                <h4 class="media-heading"><?=$comment->createdBlogUser->name?></h4>
                <p><?=CHelper::sqlDateToRussianDatetime($comment->created_datetime)?></p>
                <div>
                    <?=CHtml::encode($comment->comment)?>
                </div>
            </div>
        </div>
    <?php endforeach; ?>
<?php else: ?>

    <p>Комментариев к этой записи пока что нет.</p>

<?php endif; ?>