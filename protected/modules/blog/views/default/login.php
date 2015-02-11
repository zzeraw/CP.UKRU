<?php
$this->pageTitle=Yii::app()->name . ' - Login';
$this->breadcrumbs=array(
    'Login',
);
?>

<h1>Login</h1>

<?php
if (Yii::app()->user->hasFlash('error')) {
    echo '<div class="form"><p class="errorSummary">'.CHtml::encode(Yii::app()->user->getFlash('error')).'</p></div>';
}
?>

<p>Please fill out the following form with your login credentials:</p>

<div class="form">
    <?php $form=$this->beginWidget('CActiveForm', array(
        'id'=>'login-form',
        'enableClientValidation'=>true,
        'clientOptions'=>array(
            'validateOnSubmit'=>true,
        ),
    )); ?>

    <hr/>
    <h2>Do you already have an account on one of these sites? Click the logo to log in with it here:</h2>
    <?php
    $this->widget('ext.eauth.EAuthWidget');
    ?>

    <?php $this->endWidget(); ?>
</div><!-- form -->