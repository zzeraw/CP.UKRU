<?php

class DefaultController extends FrontEndController
{
    public function init()
    {
        parent::init();

        $serviceName = Yii::app()->request->getQuery('service');
        // var_dump($serviceName);

        if (isset($serviceName)) {
            /** @var $eauth EAuthServiceBase */
            $eauth = Yii::app()->eauth->getIdentity($serviceName);
            $eauth->redirectUrl = Yii::app()->user->returnUrl;
            $eauth->cancelUrl = $this->createAbsoluteUrl('site/login');
            try {
                if ($eauth->authenticate()) {
                    $identity = new CustomAuthUserIdentity($eauth);
                    // $identity = new EAuthUserIdentity($eauth);
//                  var_dump($eauth->getIsAuthenticated(), $eauth->getAttributes());
                    // successful authentication
                    if ($identity->authenticate()) {
                        Yii::app()->user->login($identity);
                        // var_dump($identity->id, $identity->name, Yii::app()->user->id);exit;
                        // Save the attributes to display it in layouts/main.php
                        $session = Yii::app()->session;
                        $session['eauth_profile'] = $eauth->attributes;
                        // redirect and close the popup window if needed
                        $eauth->redirect(Yii::app()->createUrl('blog/default/index'));
                    }
                    else {
                        // close popup window and redirect to cancelUrl
                        $eauth->cancel();
                    }
                }
                // Something went wrong, redirect back to login page
                $this->redirect(array('site/login'));
            }
            catch (EAuthException $e) {
                // save authentication error to session
                Yii::app()->user->setFlash('error', 'EAuthException: ' . $e->getMessage());
                // close popup window and redirect to cancelUrl
                $eauth->redirect($eauth->getCancelUrl());
            }
        }
    }

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

            // var_dump(Yii::app()->user->id);

            // $session = Yii::app()->session;
            // if (isset($session['eauth_profile'])) {
            //     echo '<div style="padding: 20px;"><strong>EAuth profile:</strong><br/>';
            //     CVarDumper::dump($session['eauth_profile'], 10, true);
            //     echo '</div>';
            // }

        $comment_form = false;
        if (!Yii::app()->user->isGuest) {
            $comment_form = new BlogComment;
        }

        $this->render('view',
            array(
                'model' => $model,
                'comment_form' => $comment_form,
            )
        );
    }

    public function actionLogin()
    {
        // display the login form
        $this->render('login');
    }

    /**
     * Logs out the current user and redirect to homepage.
     */
    public function actionLogout()
    {
        Yii::app()->user->logout();
        $this->redirect(Yii::app()->homeUrl);
    }
}