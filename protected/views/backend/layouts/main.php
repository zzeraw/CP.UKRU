<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">

    <meta name="robots" content="none">

    <?php Yii::app()->clientScript->registerPackage('jquery'); ?>

    <?php // Yii::app()->bootstrap->register(); ?>

    <link rel="icon" href="/favicon.ico" type="image/x-icon">
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">

    <link href='http://fonts.googleapis.com/css?family=Neucha&subset=latin,cyrillic' rel='stylesheet' type='text/css'>

    <?php Yii::app()->clientScript->registerPackage('bootstrap3'); ?>
    <?php Yii::app()->clientScript->registerPackage('jquery-ui'); ?>
    <?php Yii::app()->clientScript->registerPackage('nested-sortable'); ?>
    <?php Yii::app()->clientScript->registerPackage('my-admin-js'); ?>
    <?php Yii::app()->clientScript->registerPackage('my-admin-css'); ?>

	<title><?php echo CHtml::encode($this->pageTitle); ?></title>
</head>

<body>

<?php $this->widget('AdminMainMenu')?>

<div class="container-fluid" id="page">


	<?php if (isset($this->breadcrumbs)):?>
        <?php $this->widget('zii.widgets.CBreadcrumbs', array(
            'homeLink' => CHtml::link('', '/'),
            'links' => $this->breadcrumbs,
            'tagName' => 'ol',
            'htmlOptions' => array(
                'class' => 'breadcrumb',
            ),
            'activeLinkTemplate' => '<li><a href="{url}" title="{label}">{label}</a></li>',
            'inactiveLinkTemplate' => '<li class="active">{label}</li>',
            'separator' => '   ',
            'encodeLabel' => false,
        )); ?>
	<?php endif?>


	<?php echo $content; ?>

	<div class="clear"></div>

</div><!-- page -->

</body>

    <!-- TinyMCE -->
    <script type="text/javascript" src="/js/tinymce/tinymce.min.js"></script>
    <script type="text/javascript">
        tinymce.init({
            cleanup : false,
            content_css : "<?=Yii::app()->getBaseUrl(true)?>/css/bootstrap.min.css, <?=Yii::app()->getBaseUrl(true)?>/css/styles.css",
            convert_urls : false,
            editor_selector : "tinymce",
            editor_deselector : "no-tinymce",
            extended_valid_elements : "object[width|height|classid|codebase|embed|param],param[name|value],embed[param|src|type|width|height|flashvars|wmode],div[*],p[*],script[type|src],iframe[src|style|width|height|scrolling|marginwidth|marginheight|frameborder]",

            media_strict: false,

            mode : "specific_textareas",

            plugins: [
                "advlist autolink lists link image charmap print preview anchor",
                "searchreplace visualblocks code fullscreen",
                "textcolor",
                "insertdatetime media table contextmenu paste jbimages"
            ],

            style_formats: [
                {title: "Заголовки", items: [
                    {title: "Заголовок 1", format: "h1"},
                    {title: "Заголовок 2", format: "h2"},
                    {title: "Заголовок 3", format: "h3"},
                    {title: "Заголовок 4", format: "h4"},
                    {title: "Заголовок 5", format: "h5"},
                    {title: "Заголовок 6", format: "h6"}
                ]},
                {title: "Шрифт", items: [
                    {title: 'Фирменный шрифт', inline: 'span', classes: 'font-h'},
                    {title: "Жирный", icon: "bold", format: "bold"},
                    {title: "Курсив", icon: "italic", format: "italic"},
                    {title: "Подчеркнутый", icon: "underline", format: "underline"},
                    {title: "Strikethrough", icon: "strikethrough", format: "strikethrough"},
                    {title: "Superscript", icon: "superscript", format: "superscript"},
                    {title: "Subscript", icon: "subscript", format: "subscript"},
                    {title: "Code", icon: "code", format: "code"}
                ]},
                {title: "Blocks", items: [
                    {title: "Paragraph", format: "p"},
                    {title: "Blockquote", format: "blockquote"},
                    {title: "Div", format: "div"},
                    {title: "Pre", format: "pre"}
                ]},
                {title: "Alignment", items: [
                    {title: "Left", icon: "alignleft", format: "alignleft"},
                    {title: "Center", icon: "aligncenter", format: "aligncenter"},
                    {title: "Right", icon: "alignright", format: "alignright"},
                    {title: "Justify", icon: "alignjustify", format: "alignjustify"}
                ]}
            ],

            toolbar: "insertfile undo redo | forecolor backcolor | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image jbimages | code",
            toolbar2: "fontselect emoticons",
            relative_urls : false,
            valid_elements : '*[*]',
            theme: "modern"

        });
    </script>
    <!-- /TinyMCE -->


</html>
