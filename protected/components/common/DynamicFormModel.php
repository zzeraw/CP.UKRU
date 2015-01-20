<?php

/**
 * Class DynamicFormModel
 *
 * Пользовательский класс. Необходим для динамического создания моделей.
 */
class DynamicFormModel extends CFormModel {

    private $_dynamicLabels = array();
    private $_dynamicFields = array();
    private $_dynamicData   = array();
    private $_dynamicTypes  = array();

    private $_rules = array();

    public function setDynamicFields($fields)
    {
        foreach ($fields as $key => $value) {
            $this->_dynamicLabels[$value['name']] = $value['label'];
            $this->_dynamicFields[$value['name']] = $value['name'];
            $this->_dynamicData[$value['name']]   = $value['value'];
            $this->_dynamicTypes[$value['name']]  = $value['type'];
        }
    }

    public function setDynamicRules($rules)
    {
        $this->_rules = $rules;
    }

    public function rules()
    {
        return $this->_rules;
    }

    public function attributeLabels()
    {
        return array_merge(
            parent::attributeLabels(),
            $this->_dynamicLabels
        );
    }

    public function attributeNames()
    {
        return array_merge(
            parent::attributeNames(),
            array_keys($this->_dynamicFields)
        );
    }

    /**
     * Returns the value for a dynamic attribute, if not, falls back to parent
     * method
     *
     * @param type $name
     * @return type
     */
    public function __get($name)
    {
        if (!empty($this->_dynamicFields[$name])) {
            if (!empty($this->_dynamicData[$name])) {
                return $this->_dynamicData[$name];
            } else {
                return null;
            }

        } else {
            return parent::__get($name);
        }
    }

    /**
     * Overrides the setter to store dynamic data.
     *
     * @param type $name
     * @param type $val
     */
    public function __set($name, $val)
    {
        if (!empty($this->_dynamicFields[$name])) {
            $this->_dynamicData[$name] = $val;
        } else {
            parent::__set($name, $val);
        }
    }

}