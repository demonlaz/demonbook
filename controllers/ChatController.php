<?php
/**
 * Created by PhpStorm.
 * User: demon
 * Date: 26.05.2017
 * Time: 23:39
 */

namespace app\controllers;

use app\models\Book;
use app\models\ChatForm;
use app\models\Coment;
use app\models\PoiskForm;
use Yii;
use yii\filters\AccessControl;
use yii\web\Controller;
use yii\filters\VerbFilter;
use app\models\LoginForm;
use app\models\ContactForm;
use app\models\RegistrForm;
use app\models\Category;

class ChatController extends Controller
{
    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'only' => ['logout'],
                'rules' => [
                    [
                        'actions' => ['logout'],
                        'allow' => true,
                        'roles'=>['@']
//                        'matchCallback'=>function($rule,$action){
//                            return Yii::$app->user->identity->login==='admin';
//                        }
                    ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'logout' => ['post','get'],
                ],
            ],

        ];
    }

    /**
     * @inheritdoc
     */
    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
            'captcha' => [
                'class' => 'yii\captcha\CaptchaAction',
                'fixedVerifyCode' => YII_ENV_TEST ? 'testme' : null,
            ],
        ];
    }
public function actionIndex(){
    $modelform=new ChatForm();
    if($modelform->load(Yii::$app->request->post())&&$modelform->validate() and Yii::$app->user->identity->powers!=="admin" ){

        $this->saveComent($modelform);

    }elseif (Yii::$app->user->identity->powers==="admin"){

                $this->saveComent($modelform);
    }
    return $this->redirect(['site/index']);

}
private function saveComent($modelform){
    $modelComent=new Coment();

    $modelComent->login=(!Yii::$app->user->isGuest)?Yii::$app->user->identity->login : "Гость";

    $modelComent->text=$modelform->content;
    $modelComent->save();
}
}