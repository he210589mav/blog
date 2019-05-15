@extends('admin.layouts.app_admin')
@section('content')
    <div class="container">
        @component('admin.components.breadcrumb')
            @slot('title') Редактирование О блоге/контакты @endslot
            @slot('parent') Главная @endslot
            @slot('active') блог-контакты @endslot
        @endcomponent
        <hr/>
        <form class="form-horizontal" action="{{route('admin.pages.update',$pages)}}" method="post">
            <input type="hidden" name="_method" value="put">
            {{csrf_field()}}
            {{--form include--}}
            @include('admin.pages.partials.form')
        </form>
    </div>
@endsection
