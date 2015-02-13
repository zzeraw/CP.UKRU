<?php

/**
 * This is the model class for table "blog_comments".
 *
 * The followings are the available columns in table 'blog_comments':
 * @property string $id
 * @property integer $blog_user_id
 * @property integer $blog_post_id
 * @property string $comment
 * @property string $created_ip
 * @property integer $created_datetime
 * @property integer $created_user
 * @property string $created_username
 * @property string $modified_ip
 * @property integer $modified_datetime
 * @property integer $modified_user
 * @property string $modified_username
 * @property integer $active
 */
class BlogComment extends BaseActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'blog_comments';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('comment', 'required'),
			array(
				'blog_user_id, blog_post_id, created_datetime, created_user, modified_datetime, modified_user, active',
				'numerical',
				'integerOnly' => true,
			),
			array(
				'comment',
				'length',
				'max' => 2048,
			),
			array(
				'created_ip, created_username, modified_ip, modified_username',
				'length',
				'max' => 300,
			),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array(
				'id, blog_user_id, blog_post_id, comment, created_ip, created_datetime, created_user, created_username, modified_ip, modified_datetime, modified_user, modified_username, active',
				'safe',
				'on'=>'search',
			),
		);
	}

	protected function beforeSave()
	{
	    if (parent::beforeSave()) {

	    	$ip = Yii::app()->request->getUserHostAddress() . ' ' . Yii::app()->request->getUserAgent();

	        if ($this->isNewRecord) {
	        	$this->created_user = $this->modified_user = Yii::app()->user->id;
	        	$this->created_username = $this->modified_username = Yii::app()->user->name;
	            $this->created_datetime = $this->modified_datetime = date('Y-m-d H:i:s');
	            $this->created_ip = $this->modified_ip = $ip;
	        } else {
	        	$this->modified_user = Yii::app()->user->id;
	        	$this->modified_username = Yii::app()->user->name;
	            $this->modified_datetime = date('Y-m-d H:i:s');
	            $this->modified_ip = $ip;
	        }

	        return true;
	    } else {
	        return false;
	    }
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
			'post' => array(self::BELONGS_TO, 'BlogPost', 'blog_post_id'),
			// 'blogUser' => array(self::BELONGS_TO, 'BlogUser', 'blog_user_id'),
			'createdBlogUser' => array(self::BELONGS_TO, 'BlogUser', 'created_user'),
			'modifiedBlogUser' => array(self::BELONGS_TO, 'BlogUser', 'modified_user'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'blog_user_id' => 'Blog User',
			'blog_post_id' => 'Blog Post',
			'comment' => 'Comment',
			'created_ip' => 'Created Ip',
			'created_datetime' => 'Created Datetime',
			'created_user' => 'Created User',
			'created_username' => 'Created Username',
			'modified_ip' => 'Modified Ip',
			'modified_datetime' => 'Modified Datetime',
			'modified_user' => 'Modified User',
			'modified_username' => 'Modified Username',
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
	public function search($id = false)
	{
		// @todo Please modify the following code to remove attributes that should not be searched.

		$criteria=new CDbCriteria;

		if ($id != false) {
			$criteria->condition = 'blog_post_id = :post_id';
			$criteria->params = array(':post_id' => $id);
		}

		$criteria->compare('id',$this->id,true);
		$criteria->compare('blog_user_id',$this->blog_user_id);
		$criteria->compare('blog_post_id',$this->blog_post_id);
		$criteria->compare('comment',$this->comment,true);
		$criteria->compare('created_ip',$this->created_ip,true);
		$criteria->compare('created_datetime',$this->created_datetime);
		$criteria->compare('created_user',$this->created_user);
		$criteria->compare('created_username',$this->created_username,true);
		$criteria->compare('modified_ip',$this->modified_ip,true);
		$criteria->compare('modified_datetime',$this->modified_datetime);
		$criteria->compare('modified_user',$this->modified_user);
		$criteria->compare('modified_username',$this->modified_username,true);
		$criteria->compare('active',$this->active);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return BlogComment the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
