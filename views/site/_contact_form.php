<?php

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;
?>

<div class="row">
    <div class="col-md-12">
        <?php $form = ActiveForm::begin(['id' => 'contact-form']); ?>
        <?= $form->field($model, 'name')->textInput(['placeholder' => $translator->translate['full_name']])->label(false) ?>

        <?= $form->field($model, 'subject')->textInput(['placeholder' => $translator->translate['subject']])->label(false) ?>

        <?= $form->field($model, 'email')->textInput(['placeholder' => $translator->translate['email']])->label(false) ?>

        <?= $form->field($model, 'phone')->textInput(['placeholder' => $translator->translate['phone']])->label(false) ?>

        <?= $form->field($model, 'body')->textarea(['rows' => 6, 'placeholder' => $translator->translate['body']])->label(false) ?>
        <div class="form-group text-right">
            <?= Html::submitButton($translator->translate['send'], ['class' => 'btn btn-primary', 'name' => 'contact-button']) ?>
        </div>
        <?php ActiveForm::end(); ?>

    </div>
</div>