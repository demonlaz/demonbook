<?phpuse yii\helpers\Url;/** * Created by PhpStorm. * User: demon * Date: 14.05.2017 * Time: 10:50 */?><?phpuse yii\helpers\Html;?>        <div class="col-xs-4" style="border: groove;border-width:7px; border-color: #00b3ee;border-radius: 7%; padding: 4px;">            <ul class="nav nav-pills nav-stacked " >                <li class="active "><a  style="background-color: crimson" class=" " href="<?=Html::encode(Url::to(['site/index'])) ?>">Популярные жанры</a></li>            </ul>                <?php               // echo  '<h3>'.$categoryModel->category->name.'</h3>';                foreach ($janri as $j) {                    $category = $j['category'];                        echo \yii\jui\Accordion::widget([                            'items' => [                                [                                    'header' => "$j[name]",                                    'headerOptions' => ['tag' => 'h2', 'class' => 'akkarH2'],                                    'content' => \app\components\CategoryWidget::widCategor($category)                                    ,                                    'options' => ['tag' => 'div'],                                ],                            ],                            'options' => ['tag' => 'div'],                            'itemOptions' => ['tag' => 'div'],                            'headerOptions' => ['tag' => 'h3'],                            'clientOptions' => ['collapsible' => true, 'active' => 2],                        ]);                    }                ?>        </div>