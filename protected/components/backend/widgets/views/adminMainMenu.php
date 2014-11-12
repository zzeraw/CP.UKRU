<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/">Цитрус</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li><a href="<?=Yii::app()->createUrl('timeboard/admin/timeboard/index')?>">Расписание</a></li>
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
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Каталог <span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li class="header-label">Товары</li>
                        <li><a href="<?=Yii::app()->createUrl('catalog/admin/catalogItems/create')?>">Добавить товар</a></li>
                        <li><a href="<?=Yii::app()->createUrl('catalog/admin/catalogItems/import')?>">Импорт товара</a></li>
                        <li><a href="<?=Yii::app()->createUrl('catalog/admin/catalogItems/index')?>">Список товаров</a></li>
                        <li class="divider"></li>
                        <li class="header-label">Группы товаров</li>
                        <li><a href="<?=Yii::app()->createUrl('catalog/admin/catalogGroups/create')?>">Добавить группу</a></li>
                        <li><a href="<?=Yii::app()->createUrl('catalog/admin/catalogGroups/index')?>">Список групп</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="<?=Yii::app()->createUrl('')?>" class="dropdown-toggle" data-toggle="dropdown">Мультимедиа <span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li class="header-label">Фотографии</li>
                        <li><a href="<?=Yii::app()->createUrl('gallery/admin/galleryPhotos/create')?>">Добавить фото</a></li>
                        <li><a href="<?=Yii::app()->createUrl('gallery/admin/galleryPhotos/index')?>">Просмотр фотографий</a></li>
                        <li class="header-label">Альбомы фотографий</li>
                        <li><a href="<?=Yii::app()->createUrl('gallery/admin/galleryAlbums/create')?>">Добавить альбом</a></li>
                        <li><a href="<?=Yii::app()->createUrl('gallery/admin/galleryAlbums/index')?>">Список альбомов</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Пользователи <span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="<?=Yii::app()->createUrl('users/admin/users/create')?>">Добавить пользователя</a></li>
                        <li><a href="<?=Yii::app()->createUrl('users/admin/users/index')?>">Список пользователей</a></li>
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

