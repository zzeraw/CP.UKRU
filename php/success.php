<?php

    $lp = isset($_GET['lp']) ? $_GET['lp'] : '';
    $sc = isset($_GET['sc']) ? $_GET['sc'] : '';

?>
<!doctype html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!--[if lte IE 9]>
    <script src="../assets/js/html5shiv.js"></script>
    <script src="../assets/js/json2.min.js"></script>
    <script src="../assets/js/respond.min.js"></script>
    <![endif]-->

    <meta name="description" content=''>
    <meta name="keywords" content=''>

    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800&subset=latin,cyrillic' rel='stylesheet' type='text/css'>

    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="assets/css/styles.css">

    <meta charset="UTF-8">
    <title>Благодарим Вас за заявку!</title>
</head>

<body>

<div class="landing-page landing-<?=$lp?> success-page">
    <div class="container">

        <div class="bg">

            <div class="bg-stripe"></div>
            <div class="header">
                <div class="row">
                    <div class="col-xs-6">
                        <div class="logo">
                            <a href="http://tdff.ru/">
                                <img src="assets/img/logo.png" alt="Противопожарная пена Profflex">
                            </a>
                        </div>
                    </div>
                    <div class="col-xs-6">
                        <div class="call pull-right">
                            Звоните:&nbsp;&nbsp;&nbsp;<span class="phone">+7 (925) 090 36 00</span>
                        </div>
                    </div>
                </div>
            </div>

            <div class="op">

                <div class="page-content">


                    <div class="content">

                        <div class="success success-1" style="display:<?=($sc==1) ? 'block' : 'none' ?>">
                            <h2>Уважаемый наш клиент, благодарим Вас за&nbsp;заявку!</h2>

                            <p class="upper"><strong>В&nbsp;настоящее время отгрузка продукции в&nbsp;вашем регионе мелкими партиями не&nbsp;осуществляется.</strong></p>

                            <p>Вы&nbsp;можете приобрести продукцию самовывозом с&nbsp;нашего склада в&nbsp;городе Домодедово Московской области в&nbsp;объеме не&nbsp;менее 60&nbsp;коробок (720&nbsp;баллонов).</p>

                            <p>Если Вы&nbsp;крупный потребитель, Вы&nbsp;можете стать дилером и&nbsp;представлять нашу продукцию в&nbsp;своем регионе или городе. Для этого отправьте письмо на&nbsp;адрес <a href="mailto:dealers@profflex.ru">dealers@profflex.ru</a> с&nbsp;информацией о&nbsp;Вашей компании и&nbsp;контактными данными.</p>

                            <p>Также Вы&nbsp;можете найти дилера в&nbsp;ближайшем к&nbsp;Вам регионе. Сделать это можно на&nbsp;странице:<br><a href="http://www.profflex.ru/where-to-buy/dileri/">http://www.profflex.ru/where-to-buy/dileri/</a></p>

                            <br>

                            <p>По&nbsp;ссылкам ниже&nbsp;Вы можете скачать прайс-лист (на&nbsp;условиях самовывоза со&nbsp;склада Домодедово Московской Области) и&nbsp;презентацию компании Profflex.</p>

                            <p><a href="#" class="price-link"><img src="assets/img/download.png" alt="">&nbsp;&nbsp;Прайс оптовый Profflex</a></p>

                            <p>В&nbsp;ближайшее время Вами свяжется наш представитель, чтобы определить возможные варианты сотрудничества.</p>

                            <br>
                            <br>

                            <p><em>С&nbsp;уважением, Проффлекс!</em></p>
                        </div>

                        <div class="success success-2" style="display:<?=($sc==2) ? 'block' : 'none' ?>">
                            <h2>Уважаемый наш клиент, благодарим Вас за&nbsp;заявку!</h2>

                            <p class="upper">В&nbsp;настоящее время прайс-лист в&nbsp;вашем регионе предоставляется официальным торговым представителем завода Проффлекс&nbsp;&mdash; ООО &laquo;Проффлекс МСК&raquo;.</p>

                            <p>
                                Мы передали Ваши контакты представителю данной компании, который свяжется по&nbsp;указанным Вами контактам в&nbsp;ближайшее время.</p>

                            <p>Вы&nbsp;можете самостоятельно связаться с&nbsp;данной компанией по&nbsp;следующим координатам:</p>

                            <p style="line-height: 1.6; padding-left: 40px;"><strong>ООО &laquo;Проффлекс МСК&raquo;</strong> <br>
                                <span class="glyphicon glyphicon-map-marker"></span> Москва, МО<br>
                                <span class="glyphicon glyphicon-earphone"></span> 8 (925) 090-36-00&nbsp;&mdash; Владимир
                            </p>

                            <p>Вы&nbsp;можете заказать доставку от&nbsp;3х&nbsp;коробок (стоимость доставки по&nbsp;Москве 200&nbsp;рублей, от&nbsp;20&nbsp;коробок доставка по&nbsp;Москве бесплатна) либо самостоятельно забрать товар по&nbsp;следующим адресам:</p>

                            <ul style="padding-left: 40px;">
                                <li style="line-height: 1.6;">Строительный Рынок, 55&nbsp;км МКАД (внешняя сторона), павильон М-84 (метро Кунцево)</li>
                                <li style="line-height: 1.6;">Дмитровское Шоссе, дом 110, павильон 162, строительный рынок &laquo;Дмитровский Двор&raquo; (метро Петровско-Разумовская)</li>
                                <li style="line-height: 1.6;">5й&nbsp;Донской Проезд, дом&nbsp;15, строение 11, 4&nbsp;подъезд (метро Ленинский проспект)</li>
                            </ul>

                            <p>По&nbsp;ссылкам ниже&nbsp;Вы можете скачать прайс-лист, презентацию и&nbsp;сертификаты на&nbsp;пену Profflex.</p>

                            <p style="line-height: 1.6; padding-left: 40px;">
                                <a href="assets/uploads/price_msk.pdf" target="_blank">Прайс Лист Проффлекс</a> <br>
                                <a href="assets/uploads/pres_msk.pdf" target="_blank">Презентация Проффлекс</a> <br>
                                <a href="assets/uploads/sert1.jpg" target="_blank">Сертификат</a> <br>
                                <a href="assets/uploads/sert2.jpg" target="_blank">Сертификат по&nbsp;противопожарной пене 1</a> <br>
                                <a href="assets/uploads/sert3.jpg" target="_blank">Сертификат по&nbsp;противопожарной пене 2</a>
                            </p>


                            <br>
                            <br>

                            <p><em>С&nbsp;уважением, Проффлекс!</em></p>
                        </div>

                        <div class="success success-3" style="display:<?=($sc==3) ? 'block' : 'none' ?>">
                            <h2>Уважаемый наш клиент, благодарим Вас за&nbsp;заявку!</h2>

                            <p class="upper"><strong>В&nbsp;настоящее время прайс-лист в&nbsp;вашем регионе предоставляется официальным торговым представителем завода Проффлекс:</strong></p>

                            <p style="line-height: 1.6; padding-left: 40px;">
                                &mdash;&nbsp;ООО &laquo;СтройТорг&raquo;<br>
                                &mdash;&nbsp;ИП&nbsp;Белозеров Д.А.
                            </p>

                            <p>Вы&nbsp;можете самостоятельно связаться с&nbsp;данными компаниями по&nbsp;следующим координатам:</p>

                            <div class="row">
                                <div class="col-xs-6">
                                    <p style="line-height: 1.6; padding-left: 40px;"><strong>ООО &laquo;СтройТорг&raquo;</strong> <br>
                                        <span class="glyphicon glyphicon-map-marker"></span> Челябинская область<br>
                                        <span class="glyphicon glyphicon-earphone"></span> 8 (3512) 68-91-68&nbsp;&mdash; Наталья</p>
                                </div>
                                <div class="col-xs-6">
                                    <p style="line-height: 1.6; padding-left: 40px;"><strong>ИП&nbsp;Белозеров Д.А.</strong> <br>
                                        <span class="glyphicon glyphicon-map-marker"></span> Челябинская область<br>
                                        <span class="glyphicon glyphicon-earphone"></span> 8 (3517) 72-75-29&nbsp;&mdash; Павел</p>
                                </div>
                            </div>

                            <p>Если по&nbsp;каким-то причинам&nbsp;Вы останетесь не&nbsp;удовлетворены работой данных компаний , то&nbsp;Вы можете оставить свой отзыв на&nbsp;сайте:<br><a href="http://www.profflex.ru/where-to-buy/otziv-o-rabote-dilera/">http://www.profflex.ru/where-to-buy/otziv-o-rabote-dilera/</a></p>

                            <br>
                            <br>

                            <p><em>С&nbsp;уважением, Проффлекс!</em></p>
                        </div>

                    </div>
                </div>


            </div>
        </div>
    </div>



</div>

<div class="footer">
    <div class="container">
        <div class="copyright pull-right">
            &copy; 2014 PROFFLEX&nbsp;&mdash;&nbsp;Производство и продажа монтажной пены
        </div>
    </div>
</div>

</body>

<script src="assets/js/jquery-2.0.3.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/main.js?123"></script>

</html>