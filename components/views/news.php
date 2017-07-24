<?php
/**
 * Created by PhpStorm.
 * User: demon
 * Date: 21.07.2017
 * Time: 17:51
 */


$str = <<<EOD

<script>

setInterval(function(){
  a=getRandomArbitary(0, 3)
    if(a<=1){
        $('.news-item').css('text-shadow','1px 1px 2px black, 0 0 1em green');
    }else if(a>=2){
        $('.news-item').css('text-shadow','1px 1px 2px black, 0 0 1em red');
    }else{
        $('.news-item').css('text-shadow','1px 1px 2px black, 0 0 1em blue');
    }
   
  
},100);
function getRandomArbitary(min, max)
{
  return Math.random() * (max - min) + min;
}

</script>


EOD;

?>





        <div class="col-md-6" style="height: 200px; ">
            <div class=" panel-default" style="border: ridge; border-bottom: none; " ;>
                <div class="panel-heading" style="background-color: #00CCFF;"> <span class="glyphicon glyphicon-list-alt"></span><b> Новости</b></div>
                <div class="panel-body" style="height: 153px; " >
                    <div class="row">
                        <div class="col-xs-12">
                            <ul id="demo3">
                                <?php foreach ($newsModel as $v) :?>
                                <li class="news-item" style="color: white
                                 ; text-shadow: 1px 1px 2px black, 0 0 1em blue;
                                 font-family: 'Times New Roman';"><h5><strong><?=$v['title']?></strong></h5>
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

<?php
echo $str;
?>