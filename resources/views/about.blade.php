@extends('layouts.app')

@section('content')
    <!--main content start-->
    <div class="main-content">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <article class="post">
                        <div class="post-thumb">

                            <div class="post-content">
                                <header class="entry-header text-center text-uppercase">
                                    <h3 class="text-uppercase">Информация о блоге</h3>
                                    <br>

                                </header>
                                <div class="entry-content">
                                    Блог создан в учебных целях, для изучения фреймфорка Laravel.


                                    <div class="btn-continue-reading text-center text-uppercase">

                                    </div>
                                </div>
                                <div class="social-share">

                                    <ul class="text-center pull-right">
                                        <li><a class="s-facebook" href="#"><i class="fa fa-facebook"></i></a></li>
                                        <li><a class="s-twitter" href="#"><i class="fa fa-twitter"></i></a></li>
                                        <li><a class="s-google-plus" href="#"><i class="fa fa-google-plus"></i></a></li>
                                        <li><a class="s-linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>
                                        <li><a class="s-instagram" href="#"><i class="fa fa-instagram"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                    </article>
                </div>
                @include('sidebar')
            </div>
        </div>
        <!-- end main content-->
@endsection
