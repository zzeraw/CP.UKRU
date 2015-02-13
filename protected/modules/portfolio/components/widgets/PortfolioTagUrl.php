<?php

class PortfolioTagUrl extends CWidget
{
    public $tag;

    public function run()
    {
        return Yii::app()->createUrl('portfolio/default/index', array($tags => $this->tag));
    }
}