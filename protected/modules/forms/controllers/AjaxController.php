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


    public function actionFormValidation($widget_id, $model_name)
    {
        // var_dump(123);

        $model = new $model_name;

        // var_dump($model);

        // var_dump($_POST);

        if (isset($_POST['ajax']) && $_POST['ajax'] === $widget_id) {
            echo CActiveForm::validate($model);
            Yii::app()->end();
        }
    }

    public function actionSendFormToEmail($model_name, $subject)
    {
        $model = new $model_name;

        $status = array();

        if (isset($_POST[$model_name])) {

            $model->attributes = $_POST[$model_name];

            if ($model->validate()) {
                if ($model->send($subject)) {

                    $status['status'] = 'success';

                    $status['message'] = $this->renderPartial('_success_modal',
                        array(), true
                    );
                } else {
                    // TODO: Логирование ошибок!

                    $error_type = 'server';

                    $status = array(
                        'status' => 'error',
//                        'message' => 'Произошла ошибка почтового сервера. Попробуйте отправить заявку еще раз.',
                        'code' => 500,
                    );
                    $status['message'] = $this->renderPartial('_error_modal', array(
                        'error_type' => $error_type,
                    ));
                }
            } else {
                $error_type = 'validation';

                // TODO: Логирование ошибок!
                $status = array(
                    'status' => 'error',
//                    'message' => 'Произошла ошибка валидации. Попробуйте отправить заявку еще раз.',
                    'code' => 500,
                );

                $status['message'] = $this->renderPartial('_error_modal', array(
                    'error_type' => $error_type,
                ));
            }
        }

        $this->renderArrayAsJson($status);
    }

}

?>