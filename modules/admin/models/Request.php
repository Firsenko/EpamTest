<?php
namespace app\modules\admin\models;
use yii\db\ActiveRecord;
use yii\web\UploadedFile;

class Request extends ActiveRecord
{
    public static function tableName()
    {
        return 'requests';
    }

    public function beforeSave($insert)
    {

        return parent::beforeSave($insert); // TODO: Change the autogenerated stub
    }
}