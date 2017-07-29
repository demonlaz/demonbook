<?php
/**
 * Created by PhpStorm.
 * User: Demon
 * Date: 29.07.2017
 * Time: 20:34
 */

namespace app\modules\admin\models;


use yii\base\Model;
use Yii;
class YandexForm extends Model
{

    public $name;
    public $shet;
    public $date_zamena;
    public function rules()
    {

        return [
            [ ['shet'],'number'],
            [ ['shet'], 'required','message'=>'Похоже ты забыл ввести'],
            [['name'],'default', 'value' => $this->addAvtor()],
            [['date_zamena'],'default', 'value' => date('c')],

        ];
    }

    protected function addAvtor(){

        return Yii::$app->user->identity->login;
    }
    public function attributeLabels()
    {
        return ['shet'=>'Номер нового cчёта Яндекс'];
    }
}