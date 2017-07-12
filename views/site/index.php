<?php
use yii\helpers\Html;
use yii\helpers\Url;
use app\components\CategoryWidget;
use app\components\PoiskWidget;
use app\components\BookWidget;
use yii\widgets\Pjax;
/* @var $this yii\web\View */

$this->title = 'Главная';
//use app\controllers\SiteController;
?>

<div class="container">

    <div class="row">

            <?=CategoryWidget::widget() ?>

        <?=PoiskWidget::widget()?>

            <?=\app\components\BookWidget::widget(['modelBook'=>$modelBook,'now'=>true])?>


            <?php Pjax::begin();
            echo \app\components\ChatWidget::widget();
            Pjax::end();
            ?>

       </div>




</div>
