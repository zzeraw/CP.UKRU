<?php
class DatetimeBehavior extends CActiveRecordBehavior
{
    public function beforeSave($event)
    {
        $date = date('Y-m-d H:i:s');

        if ($this->owner->isNewRecord) {
            $this->owner->created_datetime = $date;

            try {
                $this->owner->modified_datetime = $date;
            } catch (Exception $e) {

            }
        } else {
            $this->owner->modified_datetime = $date;
        }
    }
}