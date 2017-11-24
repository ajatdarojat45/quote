@extends('layouts.app')

@section('content')
<div class="container">
    <form action="{{route('quotes-comment-update', ['id' => $comment->id])}}" method="POST">
        <legend>Form title</legend>

        <div class="form-group">
            <label for="Subject">
                Isi Komentar
                
                @if($errors->has('subject'))
                    <p style="color: red"> {{ $errors->first('subject') }} </p>
                @endif
            </label>
            <textarea name="subject" class="form-control" rows="8" cols="80">{{old('subject') ? old('subject') : $comment->subject}}</textarea>
        </div>
    
        {{csrf_field()}}
        <input type="hidden" name="_method" value="PUT">
    
        <button type="submit" class="btn btn-primary" >Edit Komentar</button>
    </form>
</div>
@endsection
