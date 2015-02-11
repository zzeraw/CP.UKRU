<?php

require_once(dirname(__FILE__) . '/params.php');

return array(
	'basePath'       => dirname(__FILE__) . DIRECTORY_SEPARATOR . '..',
    'name'           => 'Ukrushka',
    'sourceLanguage' => 'ru',
    'language'       => 'ru',
    'timeZone'       => 'Europe/Moscow',

    // preloading 'log' component
    'preload' => array('log'),

	// autoloading model and component classes
    'import'=>array(
        'application.components.*',

		'application.components.common.*.*',
        'application.components.common.controllers.*',
        'application.components.common.models.*',
        'application.components.common.widgets.*',

        'application.models.*',
        'application.models._base.*',
        'application.models.forms.*',
        'application.helpers.*',
        'application.behaviors.*',
        'application.vendors.*',

        'ext.eoauth.*',
        'ext.eoauth.lib.*',
        'ext.lightopenid.*',
        'ext.eauth.*',
        'ext.eauth.services.*',
    ),

	// используемые приложением поведения
	'behaviors' => array(
	  	'runEnd' => array(
	  		'class' => 'application.behaviors.WebApplicationEndBehavior',
	  	),
	),

	// application components
	'components' => array(
		'errorHandler' => array(
			'errorAction' => 'site/error',
		),
        'log' => array(
            'class'=>'CLogRouter',
            'routes'=>array(
                array(
                    'class' => 'CFileLogRoute',
                    'levels' => 'error, warning',
                ),
            ),
        ),
        'mailer' => array(
            'class' => 'application.extensions.mailer.EMailer',
            'pathViews' => 'application.views.email',
            'pathLayouts' => 'application.views.email.layouts'
        ),
        'loid' => array(
            'class' => 'ext.lightopenid.loid',
        ),
        'eauth' => array(
            'class' => 'ext.eauth.EAuth',
            'popup' => true, // Use the popup window instead of redirecting.
            'cache' => false, // Cache component name or false to disable cache. Defaults to 'cache'.
            'cacheExpire' => 0, // Cache lifetime. Defaults to 0 - means unlimited.
            'services' => array( // You can change the providers and their classes.
                // 'facebook' => array(
                //     // register your app here: https://developers.facebook.com/apps/
                //     'class' => '',
                //     'client_id' => '',
                //     'client_secret' => '',
                // ),
                'vkontakte' => array(
                    // register your app here: https://vk.com/editapp?act=create&site=1
                    'class' => '',
                    'client_id' => '',
                    'client_secret' => '',
                ),
            ),
        ),
	),

    'modules' => array(
        'banners',
        'blocks',
        'blog',
        'forms',
        'gallery',
        'pages',
        'portfolio',
        'sitemap',
        'users',
    ),

	'params' => $params,
);