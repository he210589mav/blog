
<label for="">Страница о блоге</label>
<input type="text" class="form-control" name="title_about" placeholder=""
       value="{{$pages->title_about ?? ""}}" required>

<input type="text" class="form-control" name="text_about" placeholder=""
       value="{{$pages->text_about ?? ""}}" required>
<label for="">Страница контакты</label>
<input type="text" class="form-control" name="title_contact" placeholder=""
       value="{{$pages->title_contact ?? ""}}" required>

<input type="text" class="form-control" name="name_contact" placeholder=""
       value="{{$pages->name_contact ?? ""}}" required>

<input type="text" class="form-control" name="email_contact" placeholder=""
       value="{{$pages->email_contact ?? ""}}" required>

<input type="text" class="form-control" name="phone_contact" placeholder=""
       value="{{$pages->phone_contact ?? ""}}" required>

<input type="text" class="form-control" name="msg_contact" placeholder=""
       value="{{$pages->msg_contact ?? ""}}" required>

<input type="text" class="form-control" name="button_contact" placeholder=""
       value="{{$pages->button_contact ?? ""}}" required>

<hr />
<input class="btn btn-primary" type="submit" value="Сохранить">

