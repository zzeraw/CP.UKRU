<?php

class ItemsController extends BackEndController
{
    private $_model_name = 'PortfolioItem';
    private $_e_404_message = 'Запрашиваемая работа не найдена.';

    public function actions()
    {
        return array(
            'delete' => array(
                'class' => 'DeleteAction',
                'model_name' => $this->_model_name,
                'success_message' => 'Работа удален!',
                'error_message' => 'Работа не удален!',
                'e_404_message' => $this->_e_404_message,
            ),
            'create' => array(
                'class' => 'CreateAction',
                'model_name' => $this->_model_name,
                'success_message' => 'Работа успешно создана!',
                'error_message' => 'Не удалось создать работу!',
            ),
            'update' => array(
                'class' => 'UpdateAction',
                'model_name' => $this->_model_name,
                'success_message' => 'Работа успешно изменена!',
                'error_message' => 'Не удалось изменить работу!',
                'e_404_message' => $this->_e_404_message,
            ),
            'index' => array(
                'class' => 'IndexAction',
                'model_name' => $this->_model_name,
            ),
            'turnOn' => array(
                'class' => 'TurnOnAction',
                'model_name' => $this->_model_name,
                'success_message' => 'Работа успешно включена!',
                'error_message' => 'Не удалось включить работу!',
                'e_404_message' => $this->_e_404_message,
            ),
            'turnOff' => array(
                'class' => 'TurnOffAction',
                'model_name' => $this->_model_name,
                'success_message' => 'Работа успешно выключена!',
                'error_message' => 'Не удалось выключить работу!',
                'e_404_message' => $this->_e_404_message,
            ),
            'order' => array(
                'class' => 'OrderAction',
                'model_name' => $this->_model_name,
                'e_404_message' => $this->_e_404_message,
            ),
            'orderAjax' => array(
                'class' => 'OrderAjaxAction',
                'model_name' => $this->_model_name,
                'success_message' => 'Работы успешно отсортированы!',
                'e_404_message' => $this->_e_404_message,
            ),
        );
    }

    public function accessRules()
    {
        return array(
            array('allow',
                'actions' => array('create', 'index', 'update', 'delete', 'turnOn', 'turnOff'),
                'roles' => array(User::ROLE_GLOBAL_ADMIN, User::ROLE_GLOBAL_MANAGER),
            ),
            array('deny',
                'users' => array('?'),
            ),
        );
    }
}