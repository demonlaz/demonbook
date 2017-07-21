<?php
/**
 * Created by PhpStorm.
 * User: demon
 * Date: 21.07.2017
 * Time: 17:51
 */
?>





        <div class="col-md-6" style="height: 200px; ">
            <div class="panel panel-default";>
                <div class="panel-heading" style="background-color: #00CC00;"> <span class="glyphicon glyphicon-list-alt"></span><b> Новости</b></div>
                <div class="panel-body" style="height: 153px; " id="gradient">
                    <div class="row">
                        <div class="col-xs-12">
                            <ul id="demo3">
                                <?php foreach ($newsModel as $v) :?>
                                <li class="news-item"><h5><strong><?=$v['title']?></strong></h5>
                                    <?=$v['content']?>(<?=$v['avtor']?>)
<!--                                    <p><a href="#">Подробнее...</a></p>-->
                                </li>
                                    <?php endforeach; ?>
                            </ul>


                </div>

            </div>
        </div>
    </div>
</div>
