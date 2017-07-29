<?php

/* @var $this \yii\web\View */
/* @var $content string */

use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use app\assets\AppAsset;
use app\controllers\SiteController;

AppAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<head>
 <link href="<?=Yii::$app->request->baseUrl?>/web/booksicon.ico" rel="shortcut icon" type="image/x-icon">
    <meta charset="<?= Yii::$app->charset ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <?= Html::csrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>
</head>
<body>
<?php $this->beginBody() ?>

<div class="wrap">
    <?php
    NavBar::begin([
        'brandLabel' => 'Книги бесплатно',
        'brandUrl' => Yii::$app->homeUrl,
        'options' => [
            'class' => 'navbar-inverse navbar-fixed-top',

        ],
    ]);
    echo Nav::widget([
        'options' => ['class' => 'navbar-nav navbar-right',],
        'items' => [
            ['label' => 'Главная', 'url' => ['/site/index']],
             '<a href="#" class="navbar-nav navbar-right" style="color: red;text-decoration: none" 
           data-toggle="collapse"  data-target="#divv" >Пожертвовать</a>',

             ['label' => 'Регистрация', 'url' => ['/site/registr']],
            @Yii::$app->user->identity->powers=='admin' ? (
            ['label'=>'Админка','url'=>['/admin/book/index']]
            ) : (
                ""
            ),






            Yii::$app->user->isGuest ? (
                ['label' => 'Вход', 'url' => ['/site/login']]
            ) : (
                '<li>'
                . Html::beginForm(['/site/logout'], 'post')
                . Html::submitButton(
                    'Выход(' . Yii::$app->user->identity->login . ')',
                    ['class' => 'btn btn-link logout']
                )
                . Html::endForm()
                . '</li>'
            )
        ],
    ]);
    NavBar::end();
    ?>
    <div class="collapse" id="divv" style="position: absolute">
        <iframe src="https://money.yandex.ru/quickpay/shop-widget?writer=seller&targets=%D0%9F%D0%BE%D0%B6%D0%B5%D1%80%D1%82%D0%B2%D0%BE%D0%B2%D0%B0%D1%82%D1%8C%20%D0%BD%D0%B0%20%D0%BF%D1%80%D0%BE%D1%8D%D0%BA%D1%82&targets-hint=&default-sum=&button-text=14&payment-type-choice=on&hint=&successURL=&quickpay=shop&account=<?=SiteController::getYandex()?>"
                width="450" height="198" frameborder="0"
                allowtransparency="true" scrolling="no"></iframe>
    </div>
    <div class="container" style="min-width: 1280px">
        <?= Breadcrumbs::widget([
            'links' => isset($this->params['breadcrumbs']) ? $this->params['breadcrumbs'] : [],
        ]) ?>
        <div class="site-index text-primary">

            <div class="jumbotron text-primary">
                <h1 class="primary" style="text-shadow: 1px 1px 2px black">Электронная библиотека</h1>

            </div>


        </div>


        <?= $content ?>



    </div>

<footer class="footer">
    <div class="container">
        <p class="pull-left">&copy; Чтение без границ <?= date('Y') ?></p>

        <p class="pull-right"></p>
    </div>
</footer>

<?php $this->endBody() ?>
</body>
<script>
    // после загрузки страницы
    $(function () {
        // инициализировать все элементы на страницы, имеющих атрибут data-toggle="tooltip", как компоненты tooltip
        $('[data-toggle="tooltip"]').tooltip()
    })
</script>
</html>
<?php $this->endPage() ?>