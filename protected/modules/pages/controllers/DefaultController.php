<?php

class DefaultController extends FrontEndController
{
	public function actionIndex()
	{
		$this->render('index');
	}

    public function actionView($alias = '')
    {
        $page_model = Page::model();
        $this->page = $page_model->active()->findByAlias($alias);

        $this->setPageMeta($this->page);
        $this->setPageTemplate($this->page);

        if (!isset($this->page->id)) {
            throw new CHttpException(404, 'Запрашиваемая страница не найдена.');
        }

        $this->breadcrumbs[] = array(
            'route' => false,
            'title' => $this->page->title,
        );

        $this->render('view');
    }
}