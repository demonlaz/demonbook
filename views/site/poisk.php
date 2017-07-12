<?php
/**
 * Created by PhpStorm.
 * User: demon
 * Date: 16.05.2017
 * Time: 22:42
 */
use app\components\CategoryWidget;
use app\components\PoiskWidget;
use yii\helpers\Url;
?>
<div class="container">
    <div class="row">
            <?=CategoryWidget::widget() ?>
<?=PoiskWidget::widget()?>

            <?=\app\components\BookWidget::widget(['modelBook'=>$modelBook])?>




    </div>




</div>
