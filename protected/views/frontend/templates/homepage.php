<?php /* @var $this Controller */ ?>
<?php $this->beginContent('//layouts/main'); ?>

<div class="homepage-template">

    <?=$this->decodeWidgets($this->loadBlockBody('header'))?>

    <div class="content">
        <div class="layout-content">
            <?php if (isset($this->page->id) && $this->page->show_title == 1) : ?>
                <h1><?=$this->page->title?></h1>
            <?php endif; ?>

            <?php if (isset($this->page->id)) : ?>
                <div>
                    <?=$this->decodeWidgets($this->page->begin_body)?>
                </div>
            <?php endif; ?>


            <?php echo $content; ?>


            <?php if (isset($this->page->id)) : ?>
                <div>
                    <?=$this->decodeWidgets($this->page->end_body)?>
                </div>
            <?php endif; ?>
        </div>
    </div>

    <?=$this->decodeWidgets($this->loadBlockBody('footer'))?>

</div>

<?php $this->endContent(); ?>
