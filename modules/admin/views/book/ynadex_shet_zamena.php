<?php
use yii\bootstrap\ActiveForm;
/**
 * Created by PhpStorm.
 * User: Demon
 * Date: 29.07.2017
 * Time: 19:21
 */
$form=ActiveForm::begin([
    'id' => 'login-form',
    'layout' => 'horizontal',
    'fieldConfig' => [
//        'template' => "{label}\n<div class=\"col-lg-3\">{input}</div>\n<div class=\"col-lg-8\">{error}</div>",
//        'labelOptions' => ['class' => 'col-lg-1 control-label'],
    ],
]);
echo $form->field($model,'shet')->input('text'); ?>
<div style="width: 100px;margin: 0 auto">
<?=\yii\helpers\Html::submitButton('Замнеить',['class'=>'btn btn-warning btn-xs']) ?>
</div>
<?php
ActiveForm::end();
?>

