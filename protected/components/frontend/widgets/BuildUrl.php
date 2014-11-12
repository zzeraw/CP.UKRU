<?php

class BuildUrl extends CWidget
{
    public $route;
    public $params = false;

    public function run()
    {
        $params = (!empty($this->params)) ? json_decode($this->params) : array();

        return Yii::app()->createUrl($this->route, $params);
    }
} 