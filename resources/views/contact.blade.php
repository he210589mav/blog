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
                                <h3 class="text-uppercase">Отправьте нам письмо</h3>
                                <br>
                                <form class="form-horizontal contact-form" role="form" method="post" action="/mail">
                                    <div class="form-group">
                                        <div class="col-md-12">
                                            <input type="text" class="form-control" id="name" name="name"
                                                   placeholder="Имя Фамилию">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-12">
                                            <input type="text" class="form-control" id="email" name="email"
                                                   placeholder="Email">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-12">
                                            <input type="text" class="form-control" id="phone" name="phone"
                                                   placeholder="Номер телефона">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-12">

										<textarea class="form-control" rows="6" id="msg" name="msg"
                                                  placeholder="Напишите текст письма"></textarea>
                                        </div>
                                    </div>
                                    {{csrf_field()}}
                                    <button type="submit" name="submit" class="btn send-btn">Отправить письмо</button>

                                </form>

                            </header>
                            <div class="entry-content">


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
