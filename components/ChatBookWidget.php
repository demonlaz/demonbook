<?php
/**
 * Created by PhpStorm.
 * User: demon
 * Date: 30.05.2017
 * Time: 15:51
 */

namespace app\components;

use app\models\ChatForm;
use app\models\Coment;
use app\models\Comentbook;
use yii\base\Widget;
use app\models\ChatBookForm;
class ChatBookWidget extends Widget{

public $book;
    public function init()
    {
        parent::init(); // TODO: Change the autogenerated stub
        if(!is_numeric($this->book)){
            $this->book=null;
        }
    }

    public function run()
    {
        $model=new ChatBookForm();
        $modelChat=Comentbook::getDb()->cache(function($comenbook){

            return Comentbook::find()->indexBy("id")
                ->asArray()->where(['id_book'=>$this->book])->all();
        },CACH_TIME_COMENT);

            $idbook=$this->book;


       return $this->render('chatbook',compact('model','modelChat','idbook'));
    }
}