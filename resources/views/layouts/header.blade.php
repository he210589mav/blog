<nav class="navbar navbar-default navbar-static-top">
    <div class="container">
        <div class="navbar-header">

            <!-- Collapsed Hamburger -->
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#app-navbar-collapse">
                <span class="sr-only">Toggle Navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>

            <!-- Branding Image -->

        </div>

        <div class="collapse navbar-collapse" id="app-navbar-collapse">
            <!-- Left Side Of Navbar -->
            <ul class="nav navbar-nav">
                <nav class="navbar main-menu navbar-default">
                    <div class="container">
                        <div class="menu-content">
                            <!-- Brand and toggle get grouped for better mobile display -->
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                                        data-target="#bs-example-navbar-collapse-1">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                                <a class="navbar-brand" href="/"><img src="/images/logo.png" alt=""></a>
                            </div>


                            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

                                <ul class="nav navbar-nav text-uppercase">
                                    @if(Auth::check() && Auth::user()->is_admin == "1")
                                                <li><a href="/">Главная</a></li>
                                                <li><a href="{{route('admin.index')}}" >Главная админа</a></li>
                                                <li><a href="{{route('admin.category.index')}}">Категории</a></li>
                                                <li><a href="{{route('admin.article.index')}}">Статьи</a></li>
                                                <li><a href="{{route('admin.tags.index')}}">Теги</a></li>
                                                <li><a href="{{route('admin.user_managment.user.index')}}">Пользователи</a></li>
                                             @endif
                                    <li><a href="/">Домашняя страница</a></li>
                                    <li><a href="/about">О блоге </a></li>
                                    <li><a href="/contact">Контакты</a></li>
                                </ul>

                                <ul class="nav navbar-nav navbar-right">
                                    <!-- Authentication Links -->
                                    @guest
                                        <li><a href="{{ route('login') }}">Login</a></li>
                                        <li><a href="{{ route('register') }}">Register</a></li>
                                    @else
                                        <li class="dropdown">
                                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                                                {{ Auth::user()->name }} <span class="caret"></span>
                                            </a>

                                            <ul class="dropdown-menu" role="menu">
                                                <li>
                                                    <a href="{{ route('logout') }}"
                                                       onclick="event.preventDefault();
                                             document.getElementById('logout-form').submit();">
                                                        Logout
                                                    </a>

                                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                                        {{ csrf_field() }}
                                                    </form>
                                                </li>
                                            </ul>
                                        </li>
                                    @endguest
                                </ul>

                            </div>
                            <!-- /.navbar-collapse -->


                            <div class="show-search">
                                <form role="search" method="get" id="searchform" action="#">
                                    <div>
                                        <input type="text" placeholder="Search and hit enter..." name="s" id="s">
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!-- /.container-fluid -->
                </nav>

            </ul>

            <!-- Right Side Of Navbar -->

        </div>
    </div>
</nav>