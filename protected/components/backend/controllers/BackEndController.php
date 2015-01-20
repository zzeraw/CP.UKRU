<?php

class BackEndController extends BaseController
{
    public $breadcrumbs = array();
    public $menu = array();

    public $layout = '//templates/column2';

    /*
        Фильтры
    */
    public function filters()
    {
        return array(
            'accessControl', // perform access control for CRUD operations
            // 'postOnly + delete', // we only allow deletion via POST request
        );
    }

    public function accessRules()
    {
        return array(
            array('deny',
                'users' => array('?'),
            ),
        );
    }
}