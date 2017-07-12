<?php
/**
 * Created by PhpStorm.
 * User: demon
 * Date: 26.05.2017
 * Time: 14:05
 */
use yii\helpers\Url;
use yii\helpers\Html;
?>

<?php foreach($modelBook as $v){?>

    <div class="col-xs-5">
        <?php  if(isset($now)){

            echo '<h3><span class="label label-danger">НОВИНКИ!</span></h3>';
        }


        ?>
<!--        --><?//=($v['urlbookpdf'])?'':'disabled'?>
        <div class="row"  >
            <div class="col-sm-11 col-md-11">
                <div class="thumbnail" id="gradient">
                    <img src="<?=Html::encode(Url::toRoute(['/web/imageBook/'.$v['imagesbook']])) ?>"
                         alt="..."  data-toggle="tooltip" title="">
                    <div class="caption">
                        <h3><?=Html::encode($v['namebook'])?></h3>
                        <p><?=Html::encode($v['avtor'])?></p>

                        <p><?=Html::encode($v['content'])?></p>
                        <h5><span class="label label-primary">Скачали <span class="badge"><?=Html::encode($v['dowload'])?></span></span></h5>

                        <p><a href="<?=Html::encode(Url::to(["site/dowload?id=$v[id]&pdf"]))?>"
                              class="btn btn-primary" role="button"
                                <?=($v['urlbookpdf'])?'':'disabled'?>>Скачать в PDF</a>


                            <a href="<?=Html::encode(Url::to(["site/dowload?id=$v[id]&fb2"])) ?>"
                               class="btn btn-default" role="button"
                                <?=($v['urlbookfb2'])?'':'disabled'?>>Скачать в FB2</a></p>


                        <a href="<?=Html::encode(Url::to(["site/dowload?id=$v[id]&rar"])) ?>"
                           class="btn btn-warning" role="button"
                            <?=($v['urlbookrar'])?'':'disabled'?>>Скачать в RAR или другое...</a></p>

                        </div>
                </div>
            </div>
        </div>

    </div>
<?php
    //виджет принимает id книги
    echo \app\components\ChatBookWidget::widget(['book'=>$v['id']]);

}


?>