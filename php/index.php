<?php

require_once('include/func.send_message.php');
require_once('include/generate_email.php');

?>
<!doctype html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!--[if lte IE 9]>
    <script src="assets/js/html5shiv.js"></script>
    <script src="assets/js/json2.min.js"></script>
    <script src="assets/js/respond.min.js"></script>
    <![endif]-->

    <meta name="description" content=''>
    <meta name="keywords" content=''>

    <link href='http://fonts.googleapis.com/css?family=Neucha&subset=latin,cyrillic' rel='stylesheet' type='text/css'>

    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/bootstrap-theme.min.css">

    <link rel="stylesheet" href="assets/css/slimbox2.css" type="text/css" media="screen">

    <link rel="stylesheet" href="assets/css/styles.css">

    <meta charset="UTF-8">
    <title></title>
</head>

<body>

<div class="header">
    <div class="container">
        <div class="logo center">
            <a href="/" title="Главная страница">
                <div class="title red">Евгения Михайлова</div>
                <div class="description red">Приготовление десертов на заказ</div>
                <div class="contact-phone red">+7 XXX XX XX XX</div>
            </a>
            <!--<img src="img/venzel.png" alt=""/>-->
        </div>
    </div>
</div>

<div class="content">
    <div class="content-block hello-block">
        <div class="container">
            <div class="row">
                <div class="col-xs-4">
                    <div class="photo">
                        <img class="img-responsive" src="assets/uploads/foto.jpg" alt=""/>
                    </div>
                </div>
                <div class="col-xs-8">
                    <div class="greeting">
                        <p><strong>Привет, меня зовут Женя!</strong></p>

                        <p>Я очень люблю готовить, а еще больше я люблю готовить десерты. Раньше я готовила дома, но теперь у меня есть свой бар, где я могу полностью посвятить себя любимому делу. И мне очень хотелось бы поделиться результатом с вами.</p>

                        <p>Мои десерты вкусные, оригинальные и из натуральных продуктов.</p>

                        <p>Вот примеры моих работ:</p>

                        <br>
                    </div>

                    <div>
                        <div id="carousel-generic" class="carousel slide" data-ride="carousel">
                            <!-- Indicators -->
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-generic" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-generic" data-slide-to="1"></li>
                                <li data-target="#carousel-generic" data-slide-to="2"></li>
                                <li data-target="#carousel-generic" data-slide-to="3"></li>
                            </ol>

                            <!-- Wrapper for slides -->
                            <div class="carousel-inner">
                                <div class="item active">
                                    <img src="assets/uploads/banner-03.jpg" class="img-responsive" alt="...">
                                </div>
                                <div class="item">
                                    <img src="assets/uploads/banner-04.jpg" class="img-responsive" alt="...">
                                </div>
                                <div class="item">
                                    <img src="assets/uploads/banner-05.jpg" class="img-responsive" alt="...">
                                </div>
                                <div class="item">
                                    <img src="assets/uploads/banner-08.jpg" class="img-responsive" alt="...">
                                </div>
                            </div>

                            <!-- Controls -->
                            <a class="left carousel-control" href="#carousel-generic" role="button" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left"></span>
                            </a>
                            <a class="right carousel-control" href="#carousel-generic" role="button" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right"></span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="incut-block">
        <div class="notched-section__top"></div>
        <div class="notched-section__content">
            <div class="container">
                <h1 class="center red">~&nbsp;&nbsp;&nbsp;Как заказать такую красоту?&nbsp;&nbsp;&nbsp;~</h1>
            </div>
        </div>
        <div class="notched-section__bottom"></div>
    </div>

    <div class="content-block order-block">
        <div class="container">
            <div class="row">

                <div class="col-xs-5">
                    <div class="form">
                        <h4>Пожалуйста, заполните эту форму</h4>
                        <form role="form" method="POST">
                            <div class="form-group">
                                <input type="text" name="name" class="form-control name"
                                       placeholder="Ваше имя" data-container="body" data-placement="right"
                                       data-content=""
                                       value="<?=isset($_POST['name']) ? $_POST['name'] : ''?>"
                                    >
                            </div>
                            <div class="form-group">
                                <input type="phone" name="phone" class="form-control phone"
                                       placeholder="Ваш телефон" data-container="body"
                                       data-placement="right" data-content=""
                                       value="<?=isset($_POST['phone']) ? $_POST['phone'] : ''?>"
                                    >
                            </div>
                            <input type="hidden" name="send_form" value="1">
                            <button type="submit" class="btn btn-lg btn-danger send-button"
                                    data-error="<?=$error?>" data-container="body"
                                    data-placement="bottom"
                                    data-content="<?=$error_message?>">Оставить
                                заяку</button>
                        </form>
                    </div>
                </div>
                <div class="col-xs-7">
                    <div class="main-description">
                        <ol>
                            <li>Сперва укажите свои контактные данные и отправьте мне заявку.</li>
                            <li>Я вам позвоню, и мы обговорим все детали вашего заказа.</li>
                            <li>После чего вы получите вкусный и оригинальный десерт :)</li>
                        </ol>
                    </div>
                    <div class="strawberry"></div>
                </div>

            </div>
        </div>
    </div>


    <div class="incut-block">
        <div class="notched-section__top"></div>
        <div class="notched-section__content">
            <div class="container">
                <h1 class="center red">~&nbsp;&nbsp;&nbsp;А вот еще примеры моих десертов&nbsp;&nbsp;&nbsp;~</h1>
            </div>
        </div>
        <div class="notched-section__bottom"></div>
    </div>

    <div class="content-block portfolio-block">
        <div class="container">
            <div class="row">
                <div class="col-xs-6 col-md-3">
                    <a href="assets/uploads/desert-01.jpg" class="thumbnail" rel="lightbox-cakes">
                        <img src="assets/uploads/thumb_desert-01.jpg" alt="...">
                    </a>
                </div>
                <div class="col-xs-6 col-md-3">
                    <a href="assets/uploads/desert-02.jpg" class="thumbnail" rel="lightbox-cakes">
                        <img src="assets/uploads/thumb_desert-09.jpg" alt="...">
                    </a>
                </div>
                <div class="col-xs-6 col-md-3">
                    <a href="assets/uploads/desert-03.jpg" class="thumbnail" rel="lightbox-cakes">
                        <img src="assets/uploads/thumb_desert-02.jpg" alt="...">
                    </a>
                </div>
                <div class="col-xs-6 col-md-3">
                    <a href="assets/uploads/desert-04.jpg" class="thumbnail" rel="lightbox-cakes">
                        <img src="assets/uploads/thumb_desert-08.jpg" alt="...">
                    </a>
                </div>
                <div class="col-xs-6 col-md-3">
                    <a href="assets/uploads/desert-05.jpg" class="thumbnail" rel="lightbox-cakes">
                        <img src="assets/uploads/thumb_desert-03.jpg" alt="...">
                    </a>
                </div>
                <div class="col-xs-6 col-md-3">
                    <a href="assets/uploads/desert-06.jpg" class="thumbnail" rel="lightbox-cakes">
                        <img src="assets/uploads/thumb_desert-04.jpg" alt="...">
                    </a>
                </div>
                <div class="col-xs-6 col-md-3">
                    <a href="assets/uploads/desert-07.jpg" class="thumbnail" rel="lightbox-cakes">
                        <img src="assets/uploads/thumb_desert-05.jpg" alt="...">
                    </a>
                </div>
                <div class="col-xs-6 col-md-3">
                    <a href="assets/uploads/desert-08.jpg" class="thumbnail" rel="lightbox-cakes">
                        <img src="assets/uploads/thumb_desert-06.jpg" alt="...">
                    </a>
                </div>
                <div class="col-xs-6 col-md-3">
                    <a href="assets/uploads/desert-09.jpg" class="thumbnail" rel="lightbox-cakes">
                        <img src="assets/uploads/thumb_desert-07.jpg" alt="...">
                    </a>
                </div>
                <div class="col-xs-6 col-md-3">
                    <a href="assets/uploads/desert-10.jpg" class="thumbnail" rel="lightbox-cakes">
                        <img src="assets/uploads/thumb_desert-10.jpg" alt="...">
                    </a>
                </div>
                <div class="col-xs-6 col-md-3">
                    <a href="assets/uploads/desert-11.jpg" class="thumbnail" rel="lightbox-cakes">
                        <img src="assets/uploads/thumb_desert-11.jpg" alt="...">
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="footer">
    <div class="container">
        <div class="copyright">
            &copy; <?=date('Y')?>
        </div>
    </div>
</div>

</body>

<script src="assets/js/jquery-2.0.3.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/slimbox2.js"></script>
<script src="assets/js/main.js?123"></script>

</html>