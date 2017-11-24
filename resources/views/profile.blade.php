@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <center>
            <h3>Halaman Profile</h3>
            <h1>
                {{$user->name}}
            </h1>
        </center>
        <ul class="list-group">
            @foreach ($user->quotes as $quote)
                <li class="list-group-item">
                    <a href="{{route('quotes.show', ['slug' => $quote->slug])}} " title="">
                        {{$quote->title}}
                    </a>
                </li>
            @endforeach
        </ul>
    </div>
</div>
@endsection
