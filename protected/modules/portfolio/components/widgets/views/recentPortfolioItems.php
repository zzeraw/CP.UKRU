<div class="row recent-portfolio-widget gallery-line">

    <?php if (count($items)) foreach ($items as $item) : ?>

        <div class="col-xs-3">

            <div class="thumbnail" style="<?=(!empty($height) ? 'height: ' . $height . 'px' : '')?>">

                <?php if ($modal === true) : ?>
                    <a href="/uploads/<?=$item->image?>" rel="<?=$widget_id?>" class="fancybox-image" title="<?=$item->title?>" style="overflow: hidden">
                <?php endif; ?>

                    <img
                        class="img-responsive review"
                        src="/uploads/<?=$item->image?>"
                        alt="<?=$item->title?>"
                        title="<?=$item->title?>"
                    >

                <?php if ($modal === true) : ?>
                    </a>
                <?php endif; ?>

                <?php if ($captions == 'on') : ?>
                    <div class="caption" style="height: 50px;">
                        <p class="font-h"><a href="<?=Yii::app()->createUrl('portfolio/default/view', array('id' => $item->id))?>"><?=$item->title?></a></p>
                    </div>
                <?php endif; ?>

            </div>

        </div>

    <?php endforeach; ?>

</div>

