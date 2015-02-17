<?php
class DatetimeBehavior extends CActiveRecordBehavior
{
    public function beforeSave($event)
    {
        $date = date('Y-m-d H:i:s');

        if ($this->owner->isNewRecord) {
            $this->owner->created_datetime = $date;

            if (isset($this->owner->modified_datetime)) {
                $this->owner->modified_datetime = $date;
            }
        } else {
            $this->owner->modified_datetime = $date;
        }
    }
}