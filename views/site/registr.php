<?php
use yii\widgets\ActiveForm;
//dumper($_SERVER['REMOTE_ADDR']);

$formaV=ActiveForm::begin(['class'=>'form-horizontal']);
echo $formaV->field($form,'login')->textInput(['autofocus'=>true]);
echo $formaV->field($form,'mail')->textInput();
echo $formaV->field($form,'pass1')->passwordInput();
echo $formaV->field($form,'pass2')->passwordInput();
?>
<div>
    <button type="submit" class="btn btn-success">Регистрация</button>
</div>
<?php
ActiveForm::end();
?>