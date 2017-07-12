<?php

namespace app\controllers;

use app\models\Book;
use app\models\Comentbook;
use app\models\PoiskForm;
use Yii;
use yii\filters\AccessControl;
use yii\web\Controller;
use yii\filters\VerbFilter;
use app\models\LoginForm;
use app\models\ContactForm;
use app\models\RegistrForm;
use app\models\Category;
use app\models\ChatBookForm;

class BookController extends \yii\web\Controller
{
    public function actionIndex($id=1)
    {   $modelBook=Book::find()->indexBy("id")->asArray()->where(['id'=>$id])->all();
        return $this->render('index',compact('modelBook'));
    }



    public function actionChat(){
        $modelform=new ChatBookForm();
        if($modelform->load(Yii::$app->request->post())&& $modelform->validate() and Yii::$app->user->identity->powers==="users" ){

            $this->saveComent($modelform);

        }elseif (Yii::$app->user->identity->powers==="admin"){

            $this->saveComent($modelform);
        }
        return $this->redirect(['book/index','id'=>$modelform->idbook]);

    }
    private function saveComent($modelform){
        $modelComent=new Comentbook();

        $modelComent->login=(!Yii::$app->user->isGuest)?Yii::$app->user->identity->login : "Гость";
        $modelComent->id_book=$modelform->idbook;
        $modelComent->text=$modelform->content;
        $modelComent->save();
    }

}
