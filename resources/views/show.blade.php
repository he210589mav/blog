@extends('layouts.app')

@section('content')
    <!--main content start-->
    <div class="main-content">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <article class="post">
                        <div class="post-thumb">
                            <a href="{{route('article.show', $article->slug)}}"><img src="{{$article->getImage()}}" alt=""></a>
                        </div>
                        <div class="post-content">
                            <header class="entry-header text-center text-uppercase">
                                <h6><a href="{{route('category.show', $article->categories()->pluck('slug')->implode(', '))}}">{{$article->categories()->pluck('title')->implode(', ')}} </a></h6>

                                <h1 class="entry-title"><a href="{{route('article.show', $article->slug)}}">{!! $article->title !!}</a></h1>


                            </header>
                            <div class="entry-content">
                                {!! $article->description !!}

                            </div>
                            <div class="decoration">
                                @foreach($article->tags as $tag)
                                <a href="{{route('tag.show', $tag->slug)}}" class="btn btn-default">{{$tag->title}}</a>
                                @endforeach
                            </div>

                            <div class="social-share">
							<span
                                    class="social-share-title pull-left text-capitalize">{!! $article->created_at !!}</span>
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
                    <div class="top-comment"><!--top comment-->
                        <img src="/images/comment.jpg" class="pull-left img-circle" alt="">
                        <h4>Rubel Miah</h4>

                        <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy hello ro mod tempor
                            invidunt ut labore et dolore magna aliquyam erat.</p>
                    </div><!--top comment end-->
                    <div class="row"><!--blog next previous-->
                        <div class="col-md-6">
                            @if($article->hasPrevious())
                            <div class="single-blog-box">
                                <a href="{{route('article.show', $article->getPrevious()->slug)}}">
                                    <img src="{{$article->getPrevious()->getImage()}}" alt="">

                                    <div class="overlay">

                                        <div class="promo-text">
                                            <p><i class=" pull-left fa fa-angle-left"></i></p>
                                            <h5>{{$article->getPrevious()->title}}</h5>
                                        </div>
                                    </div>


                                </a>
                            </div>
                                @endif
                        </div>
                        <div class="col-md-6">
                            @if($article->hasNext())
                            <div class="single-blog-box">
                                <a href="{{route('article.show', $article->getNext()->slug)}}">
                                    <img src="{{$article->getNext()->getImage()}}" alt="">

                                    <div class="overlay">
                                        <div class="promo-text">
                                            <p><i class=" pull-right fa fa-angle-right"></i></p>
                                            <h5>{{$article->getNext()->title}}</h5>

                                        </div>
                                    </div>
                                </a>
                            </div>
                                @endif
                        </div>
                    </div><!--blog next previous end-->
                    <div class="related-post-carousel"><!--related post carousel-->
                        <div class="related-heading">
                            <h4>You might also like</h4>
                        </div>
                        <div class="items">
                            @foreach($article->related() as $item)
                            <div class="single-item">
                                <a href="{{route('article.show',$item->slug)}}">
                                    <img src="{{$item->getImage()}}" alt="">

                                    <p>{{$item->title}}</p>
                                </a>
                            </div>
                          @endforeach
                        </div>
                    </div><!--related post carousel-->
                    <div class="bottom-comment"><!--bottom comment-->
                        <h4>3 comments</h4>

                        <div class="comment-img">
                            <img class="img-circle" src="/images/comment-img.jpg" alt="">
                        </div>

                        <div class="comment-text">
                            <a href="#" class="replay btn pull-right"> Replay</a>
                            <h5>Rubel Miah</h5>

                            <p class="comment-date">
                                December, 02, 2015 at 5:57 PM
                            </p>


                            <p class="para">Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed
                                diam nonumy
                                eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam
                                voluptua. At vero eos et cusam et justo duo dolores et ea rebum.</p>
                        </div>
                    </div>
                    <!-- end bottom comment-->

                 @if(Auth::check())
                    <div class="leave-comment"><!--leave comment-->
                        <h4>Leave a reply</h4>


                        <form class="form-horizontal contact-form" role="form" method="post" action="#">
                            <div class="form-group">
                                <div class="col-md-6">
                                    <input type="text" class="form-control" id="name" name="name" placeholder="Name">
                                </div>
                                <div class="col-md-6">
                                    <input type="email" class="form-control" id="email" name="email"
                                           placeholder="Email">
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-md-12">
                                    <input type="text" class="form-control" id="subject" name="subject"
                                           placeholder="Website url">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12">
										<textarea class="form-control" rows="6" name="message"
                                                  placeholder="Write Massage"></textarea>
                                </div>
                            </div>
                            <a href="#" class="btn send-btn">Post Comment</a>
                        </form>
                    </div><!--end leave comment-->
                     @endif
                </div>
                @include('sidebar')
        </div>
    </div>
    <!-- end main content-->
@endsection
