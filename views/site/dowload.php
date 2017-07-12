<?php
/**
 * Created by PhpStorm.
 * User: demon
 * Date: 18.05.2017
 * Time: 22:20
 */
if(isset($pdf)or isset($fb2) or isset($rar) and ($pdf!=null or $rar!=null or $fb2!=null)){
?>
<h1>Спасибо за закачку</h1>
<?php }else{?>
<h1>Мы просим прощения но сылки для закачки не найдено :-(</h1>
<?php }?>
<?php if(isset($pdf) and !empty($pdf) and $pdf!=null) {
    echo " <a href=$pdf class='btn btn-warning btn-lg' role='button' style='border-radius: 100%;
     box-shadow: 2px 3px 2px black;text-shadow: 2px 3px 2px black;'>Скачать в PDF
        <span class='glyphicon glyphicon-cloud-download'></span>
        </a>";


}elseif(isset($fb2) and !empty($fb2) and $fb2!=null){
    echo " <a href=$fb2 class='btn btn-warning btn-lg' role='button' style='border-radius: 100%;
     box-shadow: 2px 3px 2px black;text-shadow: 2px 3px 2px black;'>Скачать в FB2
        <span class='glyphicon glyphicon-cloud-download'></span>
        </a>";
}
elseif(isset($rar) and !empty($rar) and $rar!=null){
    echo " <a href=$rar class='btn btn-warning btn-lg' role='button' style='border-radius: 100%;
     box-shadow: 2px 3px 2px black;text-shadow: 2px 3px 2px black;'>Скачать в RAR
        <span class='glyphicon glyphicon-cloud-download'></span>
        </a>";
}?>




<!--        <p class="">Скачать в PDF</p>-->


<!--    <a href="#" class="btn btn-default" role="button">Скачать в FB2</a></p>-->

