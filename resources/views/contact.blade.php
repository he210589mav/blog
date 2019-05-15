@extends('layouts.app')

@section('content')
    <!--main content start-->
    <div class="main-content">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <article class="post">
                        <div class="post-thumb">
                            @foreach($pages as $page)
                        <div class="post-content">
                            <header class="entry-header text-center text-uppercase">
                                <h3 class="text-uppercase">{{$page->title_contact}}</h3>
                                <br>
                                <form class="form-horizontal contact-form" role="form" method="post" action="/mail">
                                    <div class="form-group">
                                        <div class="col-md-12">
                                            <input type="text" class="form-control" id="name" name="name"
                                                   placeholder="{{$page->name_contact}}" required>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-12">
                                            <input type="email" class="form-control" id="email" name="email"
                                                   placeholder="{{$page->email_contact}}" required>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-12">
                                            <input type="number" class="form-control" id="phone" name="phone"
                                                   placeholder="{{$page->phone_contact}}" required>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-12">

										<textarea class="form-control" rows="6" id="msg" name="msg"
                                                  placeholder="{{$page->msg_contact}}" required></textarea>
                                        </div>
                                    </div>
                                    {{csrf_field()}}
                                    <button type="submit" name="submit" class="btn send-btn">{{$page->button_contact}}</button>

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
                @endforeach
                @include('sidebar')
            </div>
        </div>
        <!-- end main content-->
@endsection

