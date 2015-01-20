<?php

class DefaultController extends FrontEndController
{
    public function actionIndex($tags = false)
    {
        if (!empty($tags)) {
            $posts = BlogPost::model()->taggedWith($tags)->findAllActualPosts(true);
        } else {
            $posts = BlogPost::model()->findAllActualPosts(true);
        }

        // $this->breadcrumbs[] = array(
        //     'route' => false,
        //     'title' => 'Каталог продукции НКУ',
        // );

        $count_tags = 0;
        if (!empty($tags)) {
            $tags = str_replace(', ', ',', $tags);
            $tags_array = explode(',', $tags);

            $count_tags = count($tags_array);

            $tags = implode(', ', $tags_array);
        }

        $this->render('index', array('posts' => $posts, 'tags' => $tags, 'count_tags' => $count_tags));
    }

    public function actionView($id)
    {
        $model = $this->_loadModel($id, BlogPost::model(), true);

        $this->render('view', array('model' => $model));
    }
}