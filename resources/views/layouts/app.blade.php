<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>@yield('title')</title>
    <meta name="keywords" content="@yield('meta_keyword')">
    <meta name="description" content="@yield('meta_description')">

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <!-- common css -->
    <link rel="stylesheet" href="/css/front.css">
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/font-awesome.min.css">
    <link rel="stylesheet" href="/css/animate.min.css">
    <link rel="stylesheet" href="/css/owl.carousel.css">
    <link rel="stylesheet" href="/css/owl.theme.css">
    <link rel="stylesheet" href="/css/owl.transitions.css">
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="/css/responsive.css">

    <!-- HTML5 shim and Respond.js IE9 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="/js/html5shiv.js"></script>
    <script src="/js/respond.js"></script>
    <![endif]-->

    <!-- Favicon -->
    <link rel="icon" type="image/png" href="/images/favicon.png">
</head>
<body>
    <div id="app">
    @include('layouts.header')

        @yield('content')
    </div>
    <!--footer start-->
    <div id="footer">
        <div class="footer-instagram-section">
            <h3 class="footer-instagram-title text-center text-uppercase">Instagram</h3>

            <div id="footer-instagram" class="owl-carousel">

                <div class="item">
                    <a href="#"><img src="assets/images/ins-1.jpg" alt=""></a>
                </div>
                <div class="item">
                    <a href="#"><img src="assets/images/ins-2.jpg" alt=""></a>
                </div>
                <div class="item">
                    <a href="#"><img src="assets/images/ins-3.jpg" alt=""></a>
                </div>
                <div class="item">
                    <a href="#"><img src="assets/images/ins-4.jpg" alt=""></a>
                </div>
                <div class="item">
                    <a href="#"><img src="assets/images/ins-5.jpg" alt=""></a>
                </div>
                <div class="item">
                    <a href="#"><img src="assets/images/ins-6.jpg" alt=""></a>
                </div>
                <div class="item">
                    <a href="#"><img src="assets/images/ins-7.jpg" alt=""></a>
                </div>
                <div class="item">
                    <a href="#"><img src="assets/images/ins-8.jpg" alt=""></a>
                </div>

            </div>
        </div>
    </div>

    <footer class="footer-widget-section">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <aside class="footer-widget">
                        <div class="about-img"><img src="/images/footer-logo.png" alt=""></div>
                        <div class="about-content">Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy
                            eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed voluptua. At vero eos et
                            accusam et justo duo dlores et ea rebum magna text ar koto din.
                        </div>
                        <div class="address">
                            <h4 class="text-uppercase">contact Info</h4>

                            <p> 142/5 BC Street, ES, VSA</p>

                            <p> Phone: +123 456 78900</p>

                            <p>rahim@marlindev.ru</p>
                        </div>
                    </aside>
                </div>

                <div class="col-md-4">
                    <aside class="footer-widget">
                        <h3 class="widget-title text-uppercase">Testimonials</h3>

                        <div id="myCarousel" class="carousel slide" data-ride="carousel">
                            <!--Indicator-->
                            <ol class="carousel-indicators">
                                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                                <li data-target="#myCarousel" data-slide-to="1"></li>
                                <li data-target="#myCarousel" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner" role="listbox">
                                <div class="item active">
                                    <div class="single-review">
                                        <div class="review-text">
                                            <p>Lorem ipsum dolor sit amet, conssadipscing elitr, sed diam nonumy eirmod
                                                tempvidunt ut labore et dolore magna aliquyam erat,sed diam voluptua. At
                                                vero eos et accusam justo duo dolores et ea rebum.gubergren no sea takimata
                                                magna aliquyam eratma</p>
                                        </div>
                                        <div class="author-id">
                                            <img src="/images/author.png" alt="">

                                            <div class="author-text">
                                                <h4>Sophia</h4>

                                                <h4>Client, Tech</h4>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="single-review">
                                        <div class="review-text">
                                            <p>Lorem ipsum dolor sit amet, conssadipscing elitr, sed diam nonumy eirmod
                                                tempvidunt ut labore et dolore magna aliquyam erat,sed diam voluptua. At
                                                vero eos et accusam justo duo dolores et ea rebum.gubergren no sea takimata
                                                magna aliquyam eratma</p>
                                        </div>
                                        <div class="author-id">
                                            <img src="/images/author.png" alt="">

                                            <div class="author-text">
                                                <h4>Sophia</h4>

                                                <h4>Client, Tech</h4>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="single-review">
                                        <div class="review-text">
                                            <p>Lorem ipsum dolor sit amet, conssadipscing elitr, sed diam nonumy eirmod
                                                tempvidunt ut labore et dolore magna aliquyam erat,sed diam voluptua. At
                                                vero eos et accusam justo duo dolores et ea rebum.gubergren no sea takimata
                                                magna aliquyam eratma</p>
                                        </div>
                                        <div class="author-id">
                                            <img src="/images/author.png" alt="">

                                            <div class="author-text">
                                                <h4>Sophia</h4>

                                                <h4>Client, Tech</h4>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </aside>
                </div>
                <div class="col-md-4">
                    <aside class="footer-widget">
                        <h3 class="widget-title text-uppercase">Custom Category Post</h3>


                        <div class="custom-post">
                            <div>
                                <a href="#"><img src="/images/footer-img.png" alt=""></a>
                            </div>
                            <div>
                                <a href="#" class="text-uppercase">Home is peaceful Place</a>
                                <span class="p-date">February 15, 2016</span>
                            </div>
                        </div>
                    </aside>
                </div>
            </div>
        </div>
        <div class="footer-copy">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="text-center">&copy; 2017 <a href="#">Blog, </a> Designed with <i
                                    class="fa fa-heart"></i> by <a href="#">Marlin</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- js files -->
    <script type="text/javascript" src="/js/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/owl.carousel.min.js"></script>
    <script type="text/javascript" src="/js/jquery.stickit.min.js"></script>
    <script type="text/javascript" src="/js/menu.js"></script>
    <script type="text/javascript" src="/js/scripts.js"></script>
    <!-- Scripts -->

    <script src="{{ asset('js/app.js') }}"></script>
    <script src="{{ asset('js/front.js') }}"></script>
</body>
</html>
