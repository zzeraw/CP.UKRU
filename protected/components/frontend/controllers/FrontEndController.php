<?php

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
        if (isset(Yii::app()->controller->module->page)) {
            $page = Yii::app()->controller->module->page;
        }

        if (isset($page->id)) {
            $this->page = Yii::app()->controller->module->page;

            $this->setPageMeta($this->page);
            $this->setPageTemplate($this->page);
        }

        $this->_generateWidgetsList();

        parent::init();
    }

    private function _generateWidgetsLocations()
    {
        $locations[] = 'application.components.frontend.widgets';
        $modules = $this->_getModulesNames();

        foreach ($modules as $module) {
            $locations[] = 'application.modules.' . $module . '.components.widgets';
        }

        return $locations;
    }

    private function _generateWidgetsList()
    {
        $locations = $this->_generateWidgetsLocations();

        $list = array();

        foreach ($locations as $directory) {
            $path = Yii::getPathOfAlias($directory);

            if (is_dir($path)) {
                $files = CFileHelper::findFiles($path, array('fileTypes' => array('php'), 'level' => 0));

                if (count($files)) {
                    foreach ($files as $file) {
                        $list[] = basename($file, '.php');
                    }
                }
            }
        }

        return $list;
    }

    public function behaviors()
    {
        return array(
            'InlineCommonWidgetsBehavior' => array(
                'class' => 'MyInlineWidgetsBehavior',
                'location' => $this->_generateWidgetsLocations(),
                'startBlock' => '{{w:',
                'endBlock' => '}}',
                'widgets' => $this->_generateWidgetsList(),
            ),

        );
    }

    protected function setPageMeta($page)
    {
        $meta_title = '';

        if (!empty($page->alias)) {
            $homepage = Page::model()->findByAlias('');
            $meta_title = $homepage->meta_title;
        } else {
            $homepage = $page;
        }

        $meta_description = $page->meta_description;
        $meta_keywords = $page->meta_keywords;

        if (empty($page->meta_title)) {
            $meta_title = $page->title . ' | ' . $meta_title;
        } else {
            $meta_title = $page->meta_title;
        }

        $meta_description = (!empty($meta_description)) ? $meta_description : $homepage->meta_description;
        $meta_keywords = (!empty($meta_keywords)) ? $meta_keywords : $homepage->meta_keywords;

        $this->setPageTitle($meta_title);

        $this->pageDescription = $meta_description;
        $this->pageKeywords = $meta_keywords;
        $this->pageIndex = $page->meta_index;
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
