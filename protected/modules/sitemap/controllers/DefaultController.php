<?php

class DefaultController extends FrontEndController
{
    public function init()
    {
        parent::init();

        foreach ( Yii::app()->log->routes as $route ){
            if ( $route instanceof CWebLogRoute ){
                $route->enabled = false;
            }
        }
    }

    public function actionIndex()
    {
        // try {
        //     $xml = Yii::app()->cache->get('sitemap');

        //     if (!$xml) {
        //         $xml = $this->_generateXMLSitemap();
        //         Yii::app()->cache->set('sitemap', $xml, 3600*6);
        //     }
        // } catch (Exception $e) {
        //     $xml = $this->_generateXMLSitemap();
        // }

        $xml = $this->_generateXMLSitemap();

        header("Content-type: text/xml");
        echo $xml;
        Yii::app()->end();
    }

    private function _generateXMLSitemap()
    {
        $sitemap = new DSitemap();

        $sitemap->addModels(Page::model()->active()->findAll(), DSitemap::WEEKLY, 0.2);
        $sitemap->addModels(PortfolioItem::model()->active()->findAll(), DSitemap::WEEKLY, 0.5);

        $xml = $sitemap->render();

        return $xml;
    }

}