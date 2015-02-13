<?php

class LanguageSwitcherWidget extends CWidget
{
    public function run()
    {
        $currentUrl = ltrim(Yii::app()->request->url, '/');
        $links = array();
        foreach (DMultilangHelper::suffixList() as $suffix => $name) {
            $url = '/' . ($suffix ? trim($suffix, '_') . '/' : '') . $currentUrl;

            if (Yii::app()->params['defaultLanguage'] === Yii::app()->getLanguage()) {
                $lang = '';
            } else {
                $lang = '_' . Yii::app()->getLanguage();
            }

            if ($suffix == $lang) {
                $links[] = CHtml::link('<b>' . $name . '</b>', $url);
            } else {
                $links[] = CHtml::link($name, $url);
            }
        }

        echo implode(" / ", $links);
    }
}

?>