@extends('layouts.app')

@section('content')
<div class="container">
    @if (session('msg'))

        <div class="alert alert-success">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
            <strong>Success!</strong> {{session('msg') }}
        </div>

    @endif
    <div class="jumbotron">
        <div class="container">
            <h1>{{ $quote->title }} </h1>
            <p>{{ $quote->subject }}</p>
            <p>Ditulis Oleh: 
                <a href="{{route('profile', ['id' => $quote->user->id])}}">{{$quote->user->name}}</a>
            </p>
            <p>
                <a href="{{route('quotes.index')}}" class="btn btn-primary btn-lg">Kembali ke daftar</a>

                @component('layouts/likes', [
                    'content' => $quote, 'model_id' => 1]) 
                @endcomponent
            </p>

            @if($quote->isOwner())
            <p>
                <a href="{{route('quotes.edit', [$quote->id])}}" class="btn btn-primary">Edit</a>

                <form action="{{route('quotes.destroy', [$quote->id])}}" method="POST" accept-charset="utf-8">
                    {{csrf_field()}}
                    <input type="hidden" name="_method" value="Delete">
                    <button type="submit" class="btn btn-danger">Delete</button>
                </form>
            </p>
            @endif
        </div> <hr>

        @foreach ($quote->comments as $comment)
            <div class="row">
                <div class="col-md-6 col-lg-6">
                    <p> {{$comment->subject}} </p>
                    <p> Ditulis oleh :  
                        <a href="{{route('profile', ['id' => $comment->user->id])}}">{{$comment->user->name}}</a>
                    </p>
                </div>

                <div class="col-md-2 col-lg-2">
                    @component('layouts/likes', [
                        'content' => $comment, 'model_id' => 2]) 
                    @endcomponent
                </div>

                @if($comment->isOwner())
                <div class="col-md-2 col-lg-2">
                    <a href="{{route('quotes-comment-edit', [$comment->id])}}" class="btn btn-primary">Edit</a>
                </div>

                <div class="col-md-2 col-lg-2">
                    <form action="{{route('quotes-comment-delete', [$comment->id])}}" method="POST" accept-charset="utf-8">
                    {{csrf_field()}}
                        <input type="hidden" name="_method" value="Delete">
                        <button type="submit" class="btn btn-danger">Delete</button>
                    </form>
                </div>
                @endif
            </div>
            <hr>

        @endforeach

        <form action="{{route('quotes-comment', [$quote->id])}}" method="POST">
            <div class="form-group">
            <label for="Subject">
                Isi Komentar
                
                @if($errors->has('subject'))
                    <p style="color: red"> {{ $errors->first('subject') }} </p>
                @endif
            </label>
            <textarea name="subject" class="form-control" rows="8" cols="80">{{old('subject')}}</textarea>
        </div>
    
        {{csrf_field()}}
    
        <button type="submit" class="btn btn-primary" >Submit</button>
        </form>
    </div>
    <script src="{{ asset('js/quote.js') }}" charset="utf-8"></script>
</div>
@endsection
