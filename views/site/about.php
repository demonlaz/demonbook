<?php

/* @var $this yii\web\View */

use yii\helpers\Html;
use app\components\CategoryWidget;
use app\components\PoiskWidget;
use yii\helpers\Url;
@$this->title = $otkCategory->name;
?>
<div class="container">
    <div class="row">
            <?=CategoryWidget::widget() ?>
<?=PoiskWidget::widget()?>

            <?=\app\components\BookWidget::widget(['modelBook'=>$modelBook])?>





    </div>




</div>