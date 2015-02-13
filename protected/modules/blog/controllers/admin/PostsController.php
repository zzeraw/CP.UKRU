<?php

class PostsController extends BackEndController
{
    private $_model_name = 'BlogPost';
    private $_e_404_message = 'Запрашиваемый пост не найден.';
    private $_multilang = true;

    public function actions()
    {
        return array(
            'delete' => array(
                'class' => 'DeleteAction',
                'model_name' => $this->_model_name,
                'success_message' => 'Пост удален!',
                'error_message' => 'Пост не удален!',
                'e_404_message' => $this->_e_404_message,
            ),
            'create' => array(
                'class' => 'CreateAction',
                'model_name' => $this->_model_name,
                'success_message' => 'Пост успешно создан!',
                'error_message' => 'Не удалось создать пост!',
            ),
            'update' => array(
                'class' => 'UpdateAction',
                'model_name' => $this->_model_name,
                'success_message' => 'Пост успешно изменен!',
                'error_message' => 'Не удалось изменить пост!',
                'e_404_message' => $this->_e_404_message,
                'multilang' => $this->_multilang,
            ),
            'index' => array(
                'class' => 'IndexAction',
                'model_name' => $this->_model_name,
            ),
            'turnOn' => array(
                'class' => 'TurnOnAction',
                'model_name' => $this->_model_name,
                'success_message' => 'Пост успешно включен!',
                'error_message' => 'Не удалось включить пост!',
                'e_404_message' => $this->_e_404_message,
            ),
            'turnOff' => array(
                'class' => 'TurnOffAction',
                'model_name' => $this->_model_name,
                'success_message' => 'Пост успешно выключен!',
                'error_message' => 'Не удалось выключить пост!',
                'e_404_message' => $this->_e_404_message,
            ),
        );
    }

    public function accessRules()
    {
        return array(
            array('allow',
                'actions' => array('create', 'index', 'update', 'delete', 'turnOn', 'turnOff', 'suggest', 'comments'),
                'roles' => array(User::ROLE_GLOBAL_ADMIN, User::ROLE_GLOBAL_MANAGER),
            ),
            array('deny',
                'users' => array('?'),
            ),
        );
    }

    public function actionComments($id)
    {
        $model = CActiveRecord::model($this->_model_name)->findByPk($id);

        $this->render('comments',
            array(
                'model' => $model,
            )
        );
    }

    public function actionDeleteComment($id)
    {
        CActiveRecord::model('BlogComment')->findByPk($id)->delete();

        // if AJAX request (triggered by deletion via admin grid view), we should not redirect the browser
        if (!isset($_GET['ajax'])) {
            $this->setSuccess('Комментарий удален');
            $this->redirect('index');
        }
    }

    public function actionSuggest(){
        if (Yii::app()->request->isAjaxRequest && isset($_GET['term'])) {

            $models = BlogTag::model()->suggestTag($_GET['term']);
            $result = array();

            foreach ($models as $m) {
                $result[] = array(
                    'label' => $m->name,
                    'value' => $m->name,
                    'id' => $m->id,
                );
            }

            echo CJSON::encode($result);
        }
    }
}