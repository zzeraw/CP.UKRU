<?php

class TopBlogTags extends CWidget
{
    public $limit = 5;

    public function run()
    {
        $tags = BlogTag::model()->findAllTopTags($this->limit);

        $this->render('topBlogTags', array('tags' => $tags));
    }
}

?>