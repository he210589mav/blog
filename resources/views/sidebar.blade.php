<div class="col-md-4" data-sticky_column>
    <div class="primary-sidebar">

        <aside class="widget border pos-padding">
            <h3 class="widget-title text-uppercase text-center">Категории</h3>
            <ul>
                @foreach($categories as $category )
                    <li>
                        <a href="{{route('category.show', $category->slug)}}">{{$category->title }}</a>
                        <span class="post-count pull-right"> ({{$category->articles()->count() }})</span>
                    </li>
                @endforeach
            </ul>
        </aside>
        <aside class="widget">
            <h3 class="widget-title text-uppercase text-center">Популярные статьи</h3>
         @foreach($popularArticle as $article )
            <div class="popular-post">


                <a href="{{route('article.show', $article->slug)}}" class="popular-img"><img src="{{$article->getImage()}}" alt="">

                    <div class="p-overlay"></div>
                </a>

                <div class="p-content">
                    <a href="{{route('article.show', $article->slug)}}" class="text-uppercase">{{$article->title }}</a>
                    <span class="p-date">{{ $article->created_at }}</span>

                </div>
            </div>
             @endforeach

        </aside>
       <!--<aside class="widget">
            <h3 class="widget-title text-uppercase text-center">Featured Posts</h3>
                       <div id="widget-feature" class="owl-carousel">

                <div class="item">
                    <div class="feature-content">
                        <img src="/images/p1.jpg" alt="">

                        <a href="#" class="overlay-text text-center">
                            <h5 class="text-uppercase">Home is peaceful</h5>

                            <p>Lorem ipsum dolor sit ametsetetur sadipscing elitr, sed </p>
                        </a>
                    </div>
                </div>
                <div class="item">
                    <div class="feature-content">
                        <img src="/images/p2.jpg" alt="">

                        <a href="#" class="overlay-text text-center">
                            <h5 class="text-uppercase">Home is peaceful</h5>

                            <p>Lorem ipsum dolor sit ametsetetur sadipscing elitr, sed </p>
                        </a>
                    </div>
                </div>
                <div class="item">
                    <div class="feature-content">
                        <img src="/images/p3.jpg" alt="">

                        <a href="#" class="overlay-text text-center">
                            <h5 class="text-uppercase">Home is peaceful</h5>

                            <p>Lorem ipsum dolor sit ametsetetur sadipscing elitr, sed </p>
                        </a>
                    </div>
                </div>
            </div>
        </aside>-->
        <aside class="widget pos-padding">
            <h3 class="widget-title text-uppercase text-center">Последние добавленные</h3>
            @foreach($recentArticle as $article )
            <div class="thumb-latest-posts">


                <div class="media">
                    <div class="media-left">
                        <a href="{{route('article.show', $article->slug)}}" class="popular-img"><img src="{{$article->getImage()}}" alt="">
                            <div class="p-overlay"></div>
                        </a>
                    </div>
                    <div class="p-content">
                        <a href="{{route('article.show', $article->slug)}}" class="text-uppercase">{{$article->title }}</a>
                        <span class="p-date">{{ $article->created_at }}</span>
                    </div>
                </div>
            </div>
           @endforeach
        </aside>

    </div>
</div>
</div>
