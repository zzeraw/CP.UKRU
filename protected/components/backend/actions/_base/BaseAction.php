<?php
class BaseAction extends CAction
{
    public $model_name;
    public $redirect_to = array('index');

    public $success_message = 'Операция произведена успешно!';
    public $error_message = 'Операцию не удалось произвести!';

    public $e_404_message = 'Запрашиваемая страница не найдена.';

    public $multilang = false;

    protected function _loadModel($id)
    {
        if ($this->multilang) {
            $model = CActiveRecord::model($this->model_name)->multilang()->findByPk($id);
        } else {
            $model = CActiveRecord::model($this->model_name)->findByPk($id);
        }

        if ($model === null) {
            throw new CHttpException(404, $this->e_404_message);
        }
        return $model;
    }
}