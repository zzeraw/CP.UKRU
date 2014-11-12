<?php

require_once(dirname(__FILE__) . '/params.php');

return array(
	'basePath'       => dirname(__FILE__) . DIRECTORY_SEPARATOR . '..',
    'name'           => 'Торты на заказ',
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
    ),

	// используемые приложением поведения
	'behaviors' => array(
	  	'runEnd' => array(
	  		'class' => 'application.behaviors.WebApplicationEndBehavior',
	  	),
	),

	// application components
	'components' => array(
        // 'clientScript' => array(
        //     'coreScriptPosition' => CClientScript::POS_END,
        //     'packages' => array(
        //         'jquery' => array(
        //             'baseUrl' => 'js/',
        //             'js' => array(
        //                 YII_DEBUG ? 'jquery-1.11.1.js' : 'jquery-1.11.1.min.js'
        //             ),
        //         ),
        //     ),
        // ),

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
//                array(
//                    'class' => 'CustomFileLogRoute',
//                    'categories' => 'deleteAction',
//                    'levels' => CLogger::LEVEL_INFO,
//                    'logFile' => 'deleteAction.log',
//                ),
            ),
        ),
        'mailer' => array(
            'class' => 'application.extensions.mailer.EMailer',
            'pathViews' => 'application.views.email',
            'pathLayouts' => 'application.views.email.layouts'
        ),
	),

    'modules' => array(
        'banners',
        'blocks',
        'forms',
        'gallery',
        'pages',
        'users',
    ),

	'params' => $params,
);