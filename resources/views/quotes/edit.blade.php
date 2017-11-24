@extends('layouts.app')

@section('content')
<div class="container">
    @if (session('msg'))

        <div class="alert alert-success">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
            <strong>Success!</strong> {{session('msg') }}
        </div>

    @endif
    <form action="{{route('quotes.show', ['id' => $quote->id])}}" method="POST">
        <legend>Form title</legend>
    
        <div class="form-group">
            <label for="title">
                Judul
                @if($errors->has('title'))
                    <p style="color: red"> {{ $errors->first('title') }} </p>
                @endif
            </label>
            <input type="text" name="title" class="form-control" value="{{old('title') ? old('title') : $quote->title}}" placeholder="Tulis Judul Disini">
        </div>

        <div class="form-group">
            <label for="Subject">
                Isi Kutipan
                
                @if($errors->has('subject'))
                    <p style="color: red"> {{ $errors->first('subject') }} </p>
                @endif
            </label>
            <textarea name="subject" class="form-control" rows="8" cols="80">{{old('subject') ? old('subject') : $quote->subject}}</textarea>
        </div>

        <div id="tag_wrapper">
            <label for="">Add (Max. 3)</label>
            <div id="add_tag">Add Tag</div>

            @foreach ($quote->tags as $oldtags)
                <select name="tags[]" id="tag_select">
                    <option value="0"> Tidak Ada</option>
                    @foreach ($tags as $tag)
                        <option value="{{$tag->id}}" @if($oldtags->id == $tag->id)
                            selected="selected"
                        @endif>
                            {{$tag->name}}
                        </option>}
                    @endforeach
                </select>
            @endforeach

            <script src="{{ asset('js/tag.js') }}" type="text/javascript" charset="utf-8"></script>
            
        </div><br>
    
        {{csrf_field()}}
        <input type="hidden" name="_method" value="PUT">
    
        <button type="submit" class="btn btn-primary" >Edit</button>
    </form>
</div>
@endsection
