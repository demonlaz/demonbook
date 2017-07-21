<?php

use app\components\CategoryWidget;
use app\components\OnlainWidget;
use app\components\PoiskWidget;
use app\components\BookWidget;

/* @var $this yii\web\View */

$this->title = 'Главная';
//use app\controllers\SiteController;
?>

<div class="container" >

    <?php
    echo OnlainWidget::widget();


    ?>



    <div class="row">

        <?=CategoryWidget::widget() ?>

        <?=PoiskWidget::widget()?>


        <?=\app\components\BookWidget::widget(['modelBook'=>$modelBook,'now'=>true])?>


        <?php
        echo \app\components\ChatWidget::widget();

        ?>

    </div>




</div>
