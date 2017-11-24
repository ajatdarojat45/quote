@extends('layouts.app')

@section('content')
<div class="container">
    @if(session('tag_error'))
        <div class="alert alert-danger">
            <strong>Warning!</strong>
            {{session('tag_error')}}
        </div>
    @endif

    <form action=" {{route('quotes.store')}} " method="POST">
        <legend>Form title</legend>
    
        <div class="form-group">
            <label for="title">
                Judul
                @if($errors->has('title'))
                    <p style="color: red"> {{ $errors->first('title') }} </p>
                @endif
            </label>
            <input type="text" name="title" class="form-control" value="{{old('title')}}" placeholder="Tulis Judul Disini">
        </div>

        <div class="form-group">
            <label for="Subject">
                Isi Kutipan
                
                @if($errors->has('subject'))
                    <p style="color: red"> {{ $errors->first('subject') }} </p>
                @endif
            </label>
            <textarea name="subject" class="form-control" rows="8" cols="80">{{old('subject')}}</textarea>
        </div>

        <div id="tag_wrapper">
            <label for="">Add (Max. 3)</label>
            <div id="add_tag">Add Tag</div>

            @if(old('tags'))
                @for($i=0; $i < count(old('tags')); $i++)
                    <select name="tags[]" id="tag_select">
                        <option value="0"> Tidak Ada</option>
                        @foreach ($tags as $tag)
                            <option value="{{$tag->id}}"
                                @if (old('tags.'.$i) == $tag->id) selected="selected"
                                @endif >
                                {{$tag->name}}</option>}
                        @endforeach
                    </select>
                @endfor
            @else
                <select name="tags[]" id="tag_select">
                    <option value="0"> Tidak Ada</option>
                    @foreach ($tags as $tag)
                        <option value="{{$tag->id}}"> {{$tag->name}}</option>}
                    @endforeach
                </select>
            @endif

            <script src="{{ asset('js/tag.js') }}" type="text/javascript" charset="utf-8"></script>
            
        </div><br>
    
        {{csrf_field()}}
    
        <button type="submit" class="btn btn-primary" >Submit</button>
    </form>
</div>
@endsection
