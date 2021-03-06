<?php

/**
 * This is the model class for table "blog_posts".
 *
 * The followings are the available columns in table 'blog_posts':
 * @property integer $id
 * @property string $title
 * @property string $body
 * @property integer $meta_index
 * @property string $meta_title
 * @property string $meta_keywords
 * @property string $meta_description
 * @property string $created_ip
 * @property string $created_datetime
 * @property integer $created_user
 * @property string $created_username
 * @property string $modified_ip
 * @property string $modified_datetime
 * @property integer $modified_user
 * @property string $modified_username
 * @property integer $active
 */
class BlogPost extends BaseActiveRecord
{
	public $tagsString;
    public $image_width = 800;
    public $image_height = false;

	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'blog_posts';
	}

	public function behaviors()
	{
        return array(
            'ImageBehavior' => array(
                'class' => 'ImageBehavior',
                // 'image_path' => ,
                // 'image_field' => ,
                'original_resize' => true,
                'original_resize_width' => $this->image_width,
                'original_resize_height' => false,
                'thumb' => true,
                'thumb_width' => 300,
                'thumb_height' => false,
                'original_image_filename' => 'blog_post_' . time(),
            ),
            'DatetimeBehavior' => array(
                'class' => 'DatetimeBehavior',
            ),
            'IpBehavior' => array(
                'class' => 'IpBehavior',
            ),
            'UserBehavior' => array(
                'class' => 'UserBehavior',
            ),
            'UsernameBehavior' => array(
                'class' => 'UsernameBehavior',
            ),
            'tags' => array(
	            'class' => 'ext.yiiext.behaviors.model.taggable.ETaggableBehavior',
	            'tagTable' => 'blog_tags',
	            'tagBindingTable' => 'blog_post_tags',
	            'modelTableFk' => 'post_id',
	            'tagTablePk' => 'id',
	            'tagTableName' => 'name',
	            'tagTableCount' => 'count',
	            'tagBindingTableTagId' => 'tagId',
	            'cacheID' => false,
	            'createTagsAutomatically' => true,
	        ),
			'ml' => array(
                'class' => 'ext.multilangual.MultilingualBehavior',
                'localizedAttributes' => array(
                    'title',
                    'annotation',
                    'body',
                    'image_attr_title',
                    'image_attr_alt',
                    'meta_title',
                    'meta_keywords',
                    'meta_description',
                ),
                'langClassName' => 'BlogPostLang',
                'langTableName' => '{{blog_posts_lang}}',
                'languages' => Yii::app()->params['translatedLanguages'],
                'defaultLanguage' => Yii::app()->params['defaultLanguage'],
                'langForeignKey' => 'owner_id',
                'dynamicLangClass' => true,
            ),
        );
    }

    public function defaultScope()
    {
        return $this->ml->localizedCriteria();
    }

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array(
				'title', 'required',
			),
			array(
				'meta_index, created_user, modified_user, active',
				'numerical',
				'integerOnly' => true,
			),
			array(
				'title, meta_title, created_ip, modified_ip, modified_username',
				'length',
				'max' => 300,
			),
            array(
                'image_attr_title, image_attr_alt',
                'length',
                'max' => 300,
            ),
            array(
                'image',
                'file',
                'maxSize' => 1048576 * 5,
                'allowEmpty' => false,
                'types'=>'jpg,jpeg,gif,png',
                'on' => 'insert',
            ),
            array(
                'image',
                'file',
                'maxSize' => 1048576 * 5,
                'allowEmpty' => true,
                'types'=>'jpg,jpeg,gif,png',
                'on' => 'update',
            ),
			array(
				'meta_keywords, meta_description',
				'length',
				'max' => 500,
			),
			array(
				'created_username',
				'length',
				'max' => 200,
			),
			array(
				'image, annotation, body, tagsString, created_datetime, modified_datetime',
				'safe',
			),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array(
				'id, title, body, meta_index, meta_title, meta_keywords, meta_description, created_ip, created_datetime, created_user, created_username, modified_ip, modified_datetime, modified_user, modified_username, active',
				'safe',
				'on' => 'search',
			),
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
			'comments' => array(self::HAS_MANY, 'BlogComment', 'blog_post_id'),

			'createdUser' => array(self::BELONGS_TO, 'User', 'created_user'),
			'modifiedUser' => array(self::BELONGS_TO, 'User', 'modified_user'),

			// 'blogPostLangs' => array(self::HAS_MANY, 'BlogPostLang', 'owner_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'title' => 'Title',
			'body' => 'Body',
            'image' => 'Image',
            'image_attr_title' => 'Image Attr Title',
            'image_attr_alt' => 'Image Attr Alt',
			'meta_index' => 'Meta Index',
			'meta_title' => 'Meta Title',
			'meta_keywords' => 'Meta Keywords',
			'meta_description' => 'Meta Description',
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
	public function search()
	{
		// @todo Please modify the following code to remove attributes that should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('id',$this->id);
		$criteria->compare('title',$this->title,true);
		$criteria->compare('body',$this->body,true);
        $criteria->compare('image',$this->image,true);
        $criteria->compare('image_attr_title',$this->image_attr_title,true);
        $criteria->compare('image_attr_alt',$this->image_attr_alt,true);
		$criteria->compare('meta_index',$this->meta_index);
		$criteria->compare('meta_title',$this->meta_title,true);
		$criteria->compare('meta_keywords',$this->meta_keywords,true);
		$criteria->compare('meta_description',$this->meta_description,true);
		$criteria->compare('created_ip',$this->created_ip,true);
		$criteria->compare('created_datetime',$this->created_datetime,true);
		$criteria->compare('created_user',$this->created_user);
		$criteria->compare('created_username',$this->created_username,true);
		$criteria->compare('modified_ip',$this->modified_ip,true);
		$criteria->compare('modified_datetime',$this->modified_datetime,true);
		$criteria->compare('modified_user',$this->modified_user);
		$criteria->compare('modified_username',$this->modified_username,true);
		$criteria->compare('active',$this->active);

		return new CActiveDataProvider($this, array(
            'criteria' => $this->ml->modifySearchCriteria($criteria),
            'sort' => array(
                'defaultOrder' => 'id DESC',
            ),
        ));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return BlogPost the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	protected function beforeSave()
	{
		parent::beforeSave();

        $this->setTags($this->tagsString);

        return true;
    }

    protected function afterFind()
    {
    	parent::afterFind();

    	$this->tagsString = $this->tags->toString();

    	return true;
    }

    public function afterDelete()
    {
    	parent::afterDelete();

    	$this->deleteTags();


    	return false;
    }

	public function findAllActualPosts($dataProviderFlag = false)
	{
		$order = 'created_datetime DESC';

		if ($dataProviderFlag) {
			return new CActiveDataProvider($this->active(), array(
		        'pagination' => array('pageSize' => 20),
				'sort' => array(
	                'defaultOrder' => $order,
	            ),
		    ));
		} else {
			return $this->active()->findAll(array('order' => $order));
		}
	}

	public function getShortBody()
	{
		$short_body = substr($this->body, 0, strpos($this->body, '[[cut]]'));

		if (empty($short_body)) {
			return $this->body;
		}

		$read_more_link = Yii::app()->createUrl('blog/default/view', array('id' => $this->id));
		$short_body .= '<p><a href="' . $read_more_link . '">Читать полностью</a></p>';

		return $short_body;
	}

	public function generateTagsLinks()
	{
		$html = '';

		$tags = $this->getTags();

		foreach ($tags as $key => $name) {
			$link = Yii::app()->createUrl('blog/default/index', array('tags' => $name));

			$html .= '<a href="' . $link . '">' . $name . '</a>';

			if (count($tags) != $key+1) {
				$html .= ', ';
			}
		}

		return $html;

	}

	public function getUrl()
	{
		if (isset($this->id)) {
			return Yii::app()->createUrl('blog/default/view', array('id' => $this->id));
		} else {
			return Yii::app()->createUrl('blog/default/index');
		}
	}
}
