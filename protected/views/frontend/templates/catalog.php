<?php /* @var $this Controller */ ?>
<?php $this->beginContent('//layouts/main'); ?>

<div class="content">

    <?=$this->decodeWidgets($this->loadBlockBody('main_menu'));?>

    <div class="container">

        <?php if (isset($this->breadcrumbs)) : ?>
            <?php $this->widget('MyBreadcrumbs', array(
                'homeLink' => CHtml::link('Главная', '/'),
                'links' => $this->breadcrumbs,
                'tagName' => 'ol',
                'htmlOptions' => array(
                    'class' => 'breadcrumb',
                ),
                'activeLinkTemplate' => '<li><a href="{url}" title="{label}">{label}</a></li>',
                'inactiveLinkTemplate' => '<li class="active">{label}</li>',
                'separator' => false,
                'encodeLabel' => false,
            )); ?>
        <?php endif; ?>

        <?php echo $this->catalog_description; ?>
        <!-- navbar -->
        <?php $this->widget('CatalogMenu'); ?>
    </div>


    <?php echo $content; ?>

</div>

<?php $this->endContent(); ?>