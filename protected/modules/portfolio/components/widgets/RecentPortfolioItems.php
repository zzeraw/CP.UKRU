<?php

class RecentPortfolioItems extends CWidget
{
    public $limit = 10;
    public $id = '';

    public $captions = 'off';
    public $order = 'id';

    public $height = false;
    public $width = false;
    public $margin = '0 5px 0 0';

    public $modal = true;

    public function run()
    {
        $widget_id = 'gallery' . md5(time() . rand(1, 9999999));

        $style = '';
        $style .= (!empty($this->height) ? 'height: ' . $this->height . 'px;' : '');
        $style .= (!empty($this->width) ? 'width: ' . $this->width . 'px' : '');
        $style .= (!empty($this->padding) ? 'padding: ' . $this->padding : '');

        if (!empty($this->id)) {
            $ids = str_replace(' ', '', $this->id);
            $ids_array = explode(',', $ids);

            $items = PortfolioItem::model()->findAllByPkArray($ids_array, $this->order, $this->limit);
        } else {
            $items = PortfolioItem::model()->active()->findAll(array('order' => $this->order, 'limit' => $this->limit));
        }

        $this->render('recentPortfolioItems',
            array(
                'items' => $items,
                'captions' => $this->captions,
                'widget_id' => $widget_id,
                'style' => $style,
                'height' => $this->height,
                'modal' => (bool) $this->modal,
            )
        );
    }
}