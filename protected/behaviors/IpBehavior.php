<?php
class IpBehavior extends CActiveRecordBehavior
{
    public function beforeSave($event)
    {
        $ip = Yii::app()->request->getUserHostAddress() . ' ' . Yii::app()->request->getUserAgent();

        if ($this->owner->isNewRecord) {
            $this->owner->created_ip = $ip;

            try {
                $this->owner->modified_ip = $ip;
            } catch (Exception $e) {

            }
        } else {
            $this->owner->modified_ip = $ip;
        }
    }
}