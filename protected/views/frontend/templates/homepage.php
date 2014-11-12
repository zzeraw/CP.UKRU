
<?php /* @var $this Controller */ ?>
<?php $this->beginContent('//layouts/main'); ?>

<div class="homepage-navbar">
    <?=$this->decodeWidgets($this->loadBlockBody('main_menu'));?>
</div>

<div class="master-banner">
    <div id="carousel-generic" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <div class="background background-1">
                    <div class="container">
                         <div class="about-block">
                            <div class="font-h1 thin margin-h2">Только реальные сроки</div>
                            <p>Мы даем только реальные сроки. Гарантируем их выполнение.</p>
                            <p>В случае невыполнения сроков по нашей вине вернем 0,1% от суммы сделки за каждый день просрочки.</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="background background-3">
                    <div class="container">
                         <div class="about-block pull-right">
                            <div class="font-h1 thin margin-h2">Даем заводскую гарантию</div>
                            <p>На всю поставляемую продукцию действует полная заводская гарантия.</p>
                            <p>Мы обеспечим замену в случае выявления заводских дефектов.</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="background background-2">
                    <div class="container">
                        <div class="about-block">
                            <div class="font-h1 thin margin-h2">Только новая продукция</div>
                            <p>Точная дата производства всегда указывается в паспорте изделия.</p>
                            <p>Вся продукция, выпускаемая нашим предприятием, имеет технический паспорт и сертификат соответствия.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <a class="left carousel-control" href="#carousel-generic" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#carousel-generic" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</div>
<div class="bottom-menu">
    <table>
        <tr>
            <td>
                <a href="#modalPriceRequest" class="modal-item-request fancybox-modal" title="Заказать прайс-лист">Прайс-лист</a>
                <?=$this->decodeWidgets('{{w:ModalPriceRequestFormWidget|caption=Заказать прайс-лист;button=Заказать прайс-лист}}'); ?>
            </td>
            <td>
                <a href="/proizvodstvo">Производство</a>
            </td>
            <td>
                <a href="/sertifikaty">Сертификаты</a>
            </td>
        </tr>
    </table>
</div>



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

<?php $this->endContent(); ?>
