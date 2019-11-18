<?php

namespace app\models;

use app\modules\admin\models\Settings;
use app\modules\admin\models\Site;
use SendGrid;
use Yii;
use yii\base\Model;

/**
 * ContactForm is the model behind the contact form.
 */
class ContactForm extends Model
{
    public $name;
    public $email;
    public $subject;
    public $body;
    public $verifyCode;
    public $phone;
    public $ip;


    /**
     * @return array the validation rules.
     */
    public function rules()
    {
        return [
            [['name', 'email', 'subject', 'body', 'phone'], 'required'],
            ['email', 'email'],
            [['subject', 'name', 'body', 'phone', 'ip'], 'string'],
        ];
    }

    /**
     * @return array customized attribute labels
     */
    public function attributeLabels()
    {
        return [
            'verifyCode' => 'Verification Code',
        ];
    }

    /**
     * Sends an email to the specified email address using the information collected by this model.
     * @param string $email the target email address
     * @return bool whether the model passes validation
     */
    public function contact()
    {
        $email = Site::get('admin_email');
        $body = strip_tags($this->body);
        $layout = <<<HTML
       
<strong>From: </strong> $this->name <br>
<strong>E-Mail: </strong> $this->email <br>
<strong>Phone: </strong> $this->phone <br>
<strong>Subject: </strong> $this->subject <br>
<strong>Message: </strong> <br>
$body

HTML;

        if ($this->validate()) {
            Helper::sendEmail($this->name, $this->email, 'Request from '.Settings::get('en', 'name'), $email, $layout);
            $model = new Request();
            $model->name = $this->name;
            $model->email = $this->email;
            $model->message = $this->body;
            $model->country = Helper::getCountry($this->ip);
            $model->subject = $this->subject;
            $model->date = date('Y-m-d H:i:s');
            $model->save(false);
            return true;
        }
        return false;
    }
}
