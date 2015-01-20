<?php if (count($models)) : ?>

    <div class="banners-widget">
        <div id="carousel-generic" class="carousel slide" data-ride="carousel">

            <?php if (count($models) > 1) : ?>
                <ol class="carousel-indicators">
                    <?php foreach ($models as $key => $banner) : ?>
                        <li data-target="#carousel-generic" data-slide-to="<?=$key?>" class="<?=($key == 0) ? 'active' : ''?>"></li>
                    <?php endforeach; ?>
                </ol>
            <?php endif; ?>

            <div class="carousel-inner" role="listbox">

                <?php foreach ($models as $key => $banner) : ?>
                    <div class="item <?=($key == 0) ? 'active' : ''?>">
                        <div class="banner-body">
                            <?=$banner->body?>
                        </div>

                        <a href="<?=$banner->link?>" title="<?=$banner->image_attr_title?>">
                            <img src="/uploads/<?=$banner->image?>" alt="<?=$banner->image_attr_alt?>" title="<?=$banner->image_attr_title?>">
                        </a>

                    </div>
                <?php endforeach; ?>
            </div>

            <?php if (count($models) > 1) : ?>
                <a title="Предыдущий баннер" class="left carousel-control" href="#carousel-generic" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                    <span class="sr-only">Предыдущий баннер</span>
                </a>
                <a title="Следующий баннер" class="right carousel-control" href="#carousel-generic" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                    <span class="sr-only">Следующий баннер</span>
                </a>
            <?php endif; ?>
        </div>
    </div>

<?php endif; ?>