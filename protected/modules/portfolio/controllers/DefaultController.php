<?php

class DefaultController extends FrontEndController
{
    public function actionIndex($tags = false)
    {
        if (!empty($tags)) {
            $items = PortfolioItem::model()->taggedWith($tags)->findAllActualItems(true);
        } else {
            $items = PortfolioItem::model()->findAllActualItems(true);
        }

        $count_tags = 0;
        if (!empty($tags)) {
            $tags = str_replace(', ', ',', $tags);
            $tags_array = explode(',', $tags);

            $count_tags = count($tags_array);

            $tags = implode(', ', $tags_array);
        }

        $this->render('index', array('items' => $items, 'tags' => $tags, 'count_tags' => $count_tags));
    }

    public function actionView($id)
    {
        $model = $this->_loadModel($id, PortfolioItem::model(), true);

        $this->render('view', array('model' => $model));
    }
}