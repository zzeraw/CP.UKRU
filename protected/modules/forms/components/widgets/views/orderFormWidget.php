<?php if ($modal) : ?>

    <a href="#modal<?=$form_widget_id?>" class="<?=$button_class?>" title="<?=$button_text?>"><?=$button_text?></a>

    <div style="display:none">
        <div id="modal<?=$form_widget_id?>" class="modal-window" style="width: <?=$modal_width?>">
<?php endif; ?>

        <?php $form = $this->beginWidget('CActiveForm', array(
            'id' => $form_widget_id,
            'action' => $form_model->setFormActionUrl(get_class($form_model), $form_model->email_subject),
            'enableAjaxValidation' => true,
            'enableClientValidation' => true,
            'clientOptions' => array(
                'validationUrl' => $form_model->setFormValidationUrl($form_widget_id, get_class($form_model)),
                'validateOnSubmit' => true,
                'validateOnChange' => true,
                'validateOnType' => false,
                'afterValidate' => $form_model->setFormAfterValidateScript($form_widget_id),
            ),
            'htmlOptions' => array(
                'class' => $form_class,
                'role' => 'form',
            ),
        )); ?>

        <h4><?=$form_caption?></h4>

        <?php if (!empty($form_description)) : ?>
            <div class="form-description">
                <?=$form_description?>
            </div>
        <?php endif; ?>


        <?php if ((bool) $show_form_item) : ?>
            <p id="itemName"><?=$form_item?></p>
        <?php endif; ?>

        <?=$form->hiddenField(
            $form_model,
            'item',
            array(
                'class' => 'hidden-input-field',
                'value' => $form_item,
            )
        );?>

            <div class="form-group">
                <?=$form->labelEx(
                    $form_model,
                    'fio'
                );?>
                <?=$form->textField(
                    $form_model,
                    'fio',
                    array(
                        'class' => 'form-control',
                        'placeholder' => 'Введите Ф.И.О.',
                        'type' => 'text',
                    )
                );?>
                <?=$form->error($form_model, 'fio');?>
            </div>
            <div class="form-group">
                <?=$form->labelEx(
                    $form_model,
                    'phone'
                );?>
                <?=$form->textField(
                    $form_model,
                    'phone',
                    array(
                        'class' => 'form-control',
                        'placeholder' => 'Введите номер телефона',
                        'type' => 'phone',
                    )
                );?>
                <?=$form->error($form_model, 'phone');?>
            </div>
            <div class="form-group">
                <?=CHtml::submitButton(
                    $form_button_text,
                    array(
                        'id' => 'submit' . $form_widget_id,
                        'class' => $form_button_class,
                        'data-item' => '',
                    )
                );?>
            </div>
        <?php $this->endWidget(); ?>

<?php if ($modal) : ?>
        </div>
    </div>
<?php endif; ?>

<?php $this->render('_modalStatusWindows', array('form_widget_id' => $form_widget_id)); ?>
