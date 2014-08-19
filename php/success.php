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

                <div class="col-xs-8">
                    <div class="greeting">
                        <br><br><br><br>

                        <h2>Благодарю Вас за&nbsp;оставленную заявку!</h2>

                        <p class="upper"><strong>В самое ближайшее время я свяжусь с вами для уточнения
                                подробностей вашего заказа.</strong></p>

                        <p>Очень надеюсь, что смогу порадовать вас вкусным и необычным десертом.</p>
                    </div>

                </div>
                <div class="col-xs-4">
                    <div class="photo">
                        <img class="img-responsive" src="assets/uploads/foto2.jpg" alt=""/>
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