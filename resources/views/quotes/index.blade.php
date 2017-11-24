@extends('layouts.app')

@section('content')
<div class="container">

    @if (session('msg'))

        <div class="alert alert-success">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
            <strong>Success!</strong> {{session('msg') }}
        </div>

    @endif
    <div class="row">
        <div class="col-md-4 col-lg-4">
            <a href="{{route('random')}}" title="" class="btn btn-primary">Random</a>
            <a href="{{route('quotes.create')}}" title="" class="btn btn-primary">Create Quote</a>
        </div>

        <div class="col-md-8 col-lg-8">
            Filter Tags :
            <a href="{{route('quotes.index')}}" title="">All</a>
            @foreach ($tags as $tag)
                <a href="{{route('quotes-filter', [$tag->name])}}" title="">/ {{$tag->name}} </a>
            @endforeach
            <form action="{{route('quotes.index')}}" method="get" class="navbar-form navbar-left pull-right">
                <div class="form-group">
                    <input type="search" name="search" class="form-control">
                </div>
                <button type="submit" class="btn btn-primary">Search</button>
            </form>
        </div>
    </div><br>
    <div class="row">
        @foreach ($quotes as $quote)
            <div class="col-md-4 col-lg-4">
                <div class="thumbnail">
                    <div class="caption"> {{ $quote->title }} </div>
                    Tags :
                    <span>
                        @foreach ($quote->tags as $tag)
                            <span> {{$tag->name}} </span>
                        @endforeach
                    </span>
                    <p> <a href="{{route('quotes.show', ['slug' => $quote->slug])}}" title="" class="btn btn-primary">Lihat Kutipan</a></p>
                </div>
            </div>
        @endforeach
    </div>
</div>
@endsection
