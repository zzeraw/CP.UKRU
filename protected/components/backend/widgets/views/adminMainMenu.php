<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="/"><?=Yii::app()->name?></a>
        </div>

        <div>
            <ul class="nav navbar-nav">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Контент <span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li class="header-label">Страницы</li>
                        <li><a href="<?=Yii::app()->createUrl('pages/admin/pages/create')?>">Создать страницу</a></li>
                        <li><a href="<?=Yii::app()->createUrl('pages/admin/pages/index')?>">Список страниц</a></li>
                        <li class="divider"></li>
                        <li class="header-label">Блоки</li>
                        <li><a href="<?=Yii::app()->createUrl('blocks/admin/blocks/create')?>">Создать блок</a></li>
                        <li><a href="<?=Yii::app()->createUrl('blocks/admin/blocks/index')?>">Список блоков</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Портфолио <span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="<?=Yii::app()->createUrl('portfolio/admin/items/create')?>">Добавить работу</a></li>
                        <li><a href="<?=Yii::app()->createUrl('portfolio/admin/items/index')?>">Список работ</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Блог <span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="<?=Yii::app()->createUrl('blog/admin/posts/create')?>">Создать пост</a></li>
                        <li><a href="<?=Yii::app()->createUrl('blog/admin/posts/index')?>">Список постов</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="<?=Yii::app()->createUrl('')?>" class="dropdown-toggle" data-toggle="dropdown">Мультимедиа <span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li class="header-label">Баннеры</li>
                        <li><a href="<?=Yii::app()->createUrl('banners/admin/banners/create')?>">Добавить баннер</a></li>
                        <li><a href="<?=Yii::app()->createUrl('banners/admin/banners/index')?>">Список баннеров</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Пользователи <span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="<?=Yii::app()->createUrl('users/admin/users/create')?>">Добавить пользователя</a></li>
                        <li><a href="<?=Yii::app()->createUrl('users/admin/users/index')?>">Список пользователей</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Отчеты <span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li class="header-label">Формы</li>
                        <li><a href="<?=Yii::app()->createUrl('forms/admin/reports/index')?>">Отчеты о заявках</a></li>
                    </ul>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">

                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><?=Yii::app()->user->name?> <span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="#">Сменить пароль</a></li>
                    </ul>
                </li>
                <li><a href="<?=Yii::app()->createUrl('users/admin/users/logout')?>">Выход</a></li>
            </ul>
        </div>
    </div>
</nav>

