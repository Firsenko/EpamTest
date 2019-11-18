<?php
/**
 * Created by PhpStorm.
 * User: prog
 * Date: 05.07.18
 * Time: 12:19
 */

namespace app\modules\admin\models;


use app\models\Helper;
use yii\db\ActiveRecord;
use yii\web\UploadedFile;

class Page extends ActiveRecord
{

    public static function tableName()
    {
        return 'analytics';
    }

    public function rules()
    {
        return [
            [['id, area, timestamp'], 'required'],
            [['id'], 'integer'],
            [['area'], 'string'],
            ['timestamp', 'date']
        ];
    }

}