<?php
/**
 * Created by PhpStorm.
 * User: demon
 * Date: 21.07.2017
 * Time: 18:29
 */

namespace app\components;


use app\models\News;
use yii\base\Widget;

class NewsWidget extends Widget
{

    public function init()
    {
        parent::init(); // TODO: Change the autogenerated stub
    }

    public function run()
    {
        $newsModel=News::getDb()->cache(function($News){

            return News::find()->indexBy('id')->asArray()->orderBy('id DESC')->all();

        },CACH_TIME);
        return $this->render('news',compact('newsModel'));
    }

}