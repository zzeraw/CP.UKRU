<?php

class DefaultController extends FrontEndController
{
	public function actionIndex()
	{
		$this->render('index');
	}

    public function actionView($alias = '')
    {
        // var_dump($alias);

        $page_model = Page::model();
        $this->page = $page_model->active()->findByAlias($alias);

        $this->setPageMeta($this->page);

        if (!isset($this->page->id)) {
            throw new CHttpException(404, 'Запрашиваемая страница не найдена.');
        }

//        $this->breadcrumbs[] = array(
//            'route' => false,
//            'title' => $this->page->title,
//        );

        if (!empty($this->page->template)) {
            $this->layout = '//templates/' . $this->page->template;
        }

        $this->render('view');
    }
}