<?php

/**
 * This is the model class for table "blog_users".
 *
 * The followings are the available columns in table 'blog_users':
 * @property string $id
 * @property integer $social
 * @property string $social_id
 * @property string $name
 * @property string $profile_url
 * @property string $photo
 * @property string $created_ip
 * @property string $created_datetime
 * @property string $modified_ip
 * @property string $modified_datetime
 * @property integer $active
 */
class BlogUser extends BaseActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'blog_users';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('active', 'numerical', 'integerOnly'=>true),
			array('social_name, social_id, profile_url, photo', 'length', 'max'=>100),
			array('name', 'length', 'max'=>200),
			array('created_ip, modified_ip', 'length', 'max'=>300),
			array('created_datetime, modified_datetime', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, social_name, social_id, name, profile_url, photo, created_ip, created_datetime, modified_ip, modified_datetime, active', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
			'comments' => array(self::HAS_MANY, 'BlogComment', 'blog_user_id'),
		);
	}

	protected function beforeSave()
	{
	    if (parent::beforeSave()) {

	    	$ip = Yii::app()->request->getUserHostAddress() . ' ' . Yii::app()->request->getUserAgent();

	        if ($this->isNewRecord) {
	            $this->created_datetime = $this->modified_datetime = date('Y-m-d H:i:s');
	            $this->created_ip = $this->modified_ip = $ip;
	        } else {
	            $this->modified_datetime = date('Y-m-d H:i:s');
	            $this->modified_ip = $ip;
	        }

	        return true;
	    } else {
	        return false;
	    }
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'social_name' => 'Social',
			'social_id' => 'Social',
			'name' => 'Name',
			'profile_url' => 'Profile Url',
			'photo' => 'Photo',
			'created_ip' => 'Created Ip',
			'created_datetime' => 'Created Datetime',
			'modified_ip' => 'Modified Ip',
			'modified_datetime' => 'Modified Datetime',
			'active' => 'Active',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 *
	 * Typical usecase:
	 * - Initialize the model fields with values from filter form.
	 * - Execute this method to get CActiveDataProvider instance which will filter
	 * models according to data in model fields.
	 * - Pass data provider to CGridView, CListView or any similar widget.
	 *
	 * @return CActiveDataProvider the data provider that can return the models
	 * based on the search/filter conditions.
	 */
	public function search()
	{
		// @todo Please modify the following code to remove attributes that should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('id',$this->id,true);
		$criteria->compare('social_name',$this->social_name);
		$criteria->compare('social_id',$this->social_id,true);
		$criteria->compare('name',$this->name,true);
		$criteria->compare('profile_url',$this->profile_url,true);
		$criteria->compare('photo',$this->photo,true);
		$criteria->compare('created_ip',$this->created_ip,true);
		$criteria->compare('created_datetime',$this->created_datetime,true);
		$criteria->compare('modified_ip',$this->modified_ip,true);
		$criteria->compare('modified_datetime',$this->modified_datetime,true);
		$criteria->compare('active',$this->active);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return BlogUser the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	public function getUser($social_name, $social_id)
	{
		$model = $this->findByAttributes(array('social_name' => $social_name, 'social_id' => $social_id));

		if (isset($model->id)) {
			return $model;
		} else {
			return new BlogUser;
		}
	}
}
