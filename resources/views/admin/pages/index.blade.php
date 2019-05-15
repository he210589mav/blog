@extends('admin.layouts.app_admin')

@section('content')
    <div class="container">
        @component('admin.components.breadcrumb')
            @slot('title') О блоге/контакты @endslot
            @slot('parent') Главная @endslot
            @slot('active') блог-контакты @endslot
        @endcomponent
            <hr>

                <tbody>
                @forelse($pages as $page)
                    <div class="post-content">
                        <header class="entry-header text-center text-uppercase">
                            <h3 class="text-uppercase">{{$page->title_about}}</h3>
                            <br>

                        </header>
                        <div class="entry-content">
                            {{$page->text_about}}


                            <div class="btn-continue-reading text-center text-uppercase">

                            </div>
                        </div>

                    <header class="entry-header text-center text-uppercase">
                        <h3 class="text-uppercase">    {{$page->title_contact}}</h3>
                        <br>
                        <form class="form-horizontal contact-form" role="form" >
                            <div class="form-group">
                                <div class="col-md-12">
                                    <input type="text" class="form-control" id="name" name="name"
                                           placeholder="{{$page->name_contact}}" readonly=""d>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <input type="email" class="form-control" id="email" name="email"
                                           placeholder="{{$page->email_contact}}" readonly="">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <input type="number" class="form-control" id="phone" name="phone"
                                           placeholder="{{$page->phone_contact}}" readonly="">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12">

										<textarea class="form-control" rows="6" id="msg" name="msg"
                                                  placeholder="{{$page->msg_contact}}" readonly=""></textarea>
                                </div>
                            </div>
                            {{csrf_field()}}
                            <div class="form-group">
                                <div class="col-md-12">
                                    <input type="number" class="form-control" id="phone" name="phone"
                                           placeholder="{{$page->button_contact}}" readonly="">
                                </div>
                            </div>


                        </form>

                    </header>
                                {{csrf_field()}}
                                <a class="btn btn-default" href="{{route('admin.pages.edit',$page)}}">
                                    <i class="fa fa-edit"></i> </a>


                @empty
                    <tr>
                        <td colspan="3" class="text-center"><h2>Данные отсутсвуют</h2></td>
                    </tr>
                @endforelse
                </tbody>
                <tfoot>
                <tr>
                    <td colspan="3">
                        <ul class="pagination pull-right">

                        </ul>
                    </td>
                </tr>
                </tfoot>
            </table>
    </div>









@endsection
