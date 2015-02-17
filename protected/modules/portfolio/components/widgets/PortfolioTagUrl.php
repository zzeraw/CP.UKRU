<?php

class PortfolioTagUrl extends CWidget
{
    public $tag;

    public function run()
    {
        echo Yii::app()->createUrl('portfolio/default/index', array('tags' => $this->tag));
    }
}