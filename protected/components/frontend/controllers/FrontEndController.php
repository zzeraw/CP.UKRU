<?php

Yii::import('application.modules.blocks.*');
Yii::import('application.modules.blocks.models.*');
Yii::import('application.modules.blocks.models._forms.*');
Yii::import('application.modules.blocks.models._base.*');

Yii::import('application.modules.pages.*');
Yii::import('application.modules.pages.models.*');
Yii::import('application.modules.pages.models._forms.*');
Yii::import('application.modules.pages.models._base.*');

Yii::import('application.modules.forms.*');
Yii::import('application.modules.forms.models.*');
Yii::import('application.modules.forms.models._forms.*');
Yii::import('application.modules.forms.models._base.*');
Yii::import('application.modules.forms.components.*');
Yii::import('application.modules.forms.components.custom.*');
Yii::import('application.modules.forms.components.widgets.*');

Yii::import('application.modules.gallery.*');
Yii::import('application.modules.gallery.models.*');
Yii::import('application.modules.gallery.models._forms.*');
Yii::import('application.modules.gallery.models._base.*');


class FrontEndController extends BaseController
{
    public $layout = '//templates/default';
    public $page;
    public $pageIndex = 1;
    public $pageDescription;
    public $pageKeywords;
    public $pageTemplate;

    public $breadcrumbs;

    public function init()
    {
        parent::init();

        if (CHelper::segment(1) == 'admin') {
            $this->redirect('http://' . $_SERVER['SERVER_NAME'] . '/admin.php', true, 301);
        }
    }

    public function behaviors()
    {
        return array(
            'InlineCommonWidgetsBehavior' => array(
                'class' => 'MyInlineWidgetsBehavior',
                'location' => array(
                    'application.components.frontend.widgets',
                    'application.modules.banners.components.widgets',
                    'application.modules.forms.components.widgets',
                    'application.modules.gallery.components.widgets',
                ),
                'startBlock' => '{{w:',
                'endBlock' => '}}',
                'widgets' => array(
                    'BannersWidget',
                    'GalleryBlock',
                    'CurrentYear',
                    'HomeUrl',
                    'MainMenu',
                    'BuildUrl',

                    'SimpleFormWidget',
                ),
            ),
        );
    }

    protected function getPageInformation($alias)
    {
        $page_model = Page::model()->findByAlias($alias);

        if (isset($page_model->id)) {
            return $page_model;
        } else {
            throw new CHttpException(404, 'Запрашиваемая страница не найдена.');
        }
    }

    protected function setPageMeta($page)
    {
        if (empty($page->alias)) {
            $homepage = $page;
        } else {
            $homepage = Page::model()->findByAlias('');
        }

        $this->setPageTitle($homepage->meta_title);
        $this->pageDescription = $homepage->meta_description;
        $this->pageKeywords = $homepage->meta_keywords;

        $this->pageIndex = $page->meta_index;

        if (empty($page->meta_title)) {
            $this->setPageTitle($page->title . ' | ' . $this->pageTitle);
        }

    }

    protected function setPageTemplate($page)
    {
        if (!empty($page->template)) {
            $this->layout = '//templates/' . $page->template;
        }
    }

    public function loadBlockBody($alias)
    {
        $block_model = Block::model()->findByAlias($alias);

        if (isset($block_model->body)) {
            return $block_model->body;
        }
    }

    protected function _loadModel($id, $object, $active = false)
    {
        if ($active) {
            $model = $object->active()->findByPk($id);
        } else {
            $model = $object->findByPk($id);
        }

        if (isset($model->id)) {
            return $model;
        } else {
            throw new CHttpException(404, 'Запрашиваемая страница не найдена.');
        }
    }


}
