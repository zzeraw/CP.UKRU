<?php

class AjaxController extends FrontEndController
{
    protected function renderArrayAsJson($array)
    {
        if ($array['status'] == 'error') {
            throw new CHttpException($array['code'], $array['message']);
        }

        echo json_encode($array);

        Yii::app()->end();
    }

    public function actionSendFromItemRequestForm()
    {
        $model = new ItemRequestForm;

        $status = array();

        if (isset($_POST['ItemRequestForm'])) {

            $model->attributes = $_POST['ItemRequestForm'];

            if ($model->validate()) {
                if ($model->send('С сайта поступила заявка на десерт.')) {
                    $status = array(
                        'status' => 'success',
                        'message' => 'Ваша заявка успешно отправлена. Я свяжусь с вами в самое ближайшее время.',
                    );
                } else {
                    // TODO: Логирование ошибок!

                    $status = array(
                        'status' => 'error',
                        'message' => 'Произошла ошибка почтового сервера. Попробуйте отправить заявку еще раз.',
                        'code' => 500,
                    );
                }
            } else {
                // TODO: Логирование ошибок!
                $status = array(
                    'status' => 'error',
                    'message' => 'Произошла ошибка валидации. Попробуйте отправить заявку еще раз.',
                    'code' => 500,
                );
            }
        }

        $this->renderArrayAsJson($status);
    }

    public function actionValidationItemRequest($widget_id)
    {
        $model = new ItemRequestForm;

        if (isset($_POST['ajax']) && $_POST['ajax'] === $widget_id) {
            echo CActiveForm::validate($model);
            Yii::app()->end();
        }
    }

    public function actionSendFromFreeWorkoutRequestForm()
    {
        $model = new FreeWorkoutRequestForm;

        $status = array();

        if (isset($_POST['FreeWorkoutRequestForm'])) {

            $model->attributes = $_POST['FreeWorkoutRequestForm'];

            if ($model->validate()) {
                if ($model->send('С сайта поступил заказ на пробную тренировку.')) {
                    $status = array(
                        'status' => 'success',
                        'message' => 'Ваша заявка успешно отправлена. В самое ближайшее время с вами свяжется наш менеджер.',
                    );
                } else {
                    // TODO: Логирование ошибок!

                    $status = array(
                        'status' => 'error',
                        'message' => 'Произошла ошибка почтового сервера. Попробуйте отправить заявку еще раз.',
                        'code' => 500,
                    );
                }
            } else {
                // TODO: Логирование ошибок!
                $status = array(
                    'status' => 'error',
                    'message' => 'Произошла ошибка валидации. Попробуйте отправить заявку еще раз.',
                    'code' => 500,
                );
            }
        }

        $this->renderArrayAsJson($status);
    }

    public function actionValidationFreeWorkoutRequest($widget_id)
    {
        $model = new FreeWorkoutRequestForm;

        if (isset($_POST['ajax']) && $_POST['ajax'] === $widget_id) {
            echo CActiveForm::validate($model);
            Yii::app()->end();
        }
    }

    public function actionSendFromSubscribeForm()
    {
        $model = new SubscribeForm;

        $status = array();

        if (isset($_POST['SubscribeForm'])) {

            $model->attributes = $_POST['SubscribeForm'];

            if ($model->validate()) {
                if ($model->send('С сайта поступил заказ на подписку на события клуба.')) {
                    $status = array(
                        'status' => 'success',
                        'message' => 'Ваша заявка успешно отправлена.',
                    );
                } else {
                    // TODO: Логирование ошибок!

                    $status = array(
                        'status' => 'error',
                        'message' => 'Произошла ошибка почтового сервера. Попробуйте отправить заявку еще раз.',
                        'code' => 500,
                    );
                }
            } else {
                // TODO: Логирование ошибок!
                $status = array(
                    'status' => 'error',
                    'message' => 'Произошла ошибка валидации. Попробуйте отправить заявку еще раз.',
                    'code' => 500,
                );
            }
        }

        $this->renderArrayAsJson($status);
    }

    public function actionValidationSubscribe($widget_id)
    {
        $model = new SubscribeForm;

        if (isset($_POST['ajax']) && $_POST['ajax'] === $widget_id) {
            echo CActiveForm::validate($model);
            Yii::app()->end();
        }
    }





}

?>