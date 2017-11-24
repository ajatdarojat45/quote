@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <center>
            <h3>Halaman Notif</h3>
            <h1>

            </h1>
        </center>
        <ul class="list-group">
            @foreach ($notifications as $notif)
                <li class="list-group-item">
                    <a href="{{route('quotes.show', ['slug' => $notif->quote->slug])}} " title="">
                        {{$notif->subject .' di judul '.$notif->quote->title}}
                    </a>
                </li>
            @endforeach
        </ul>

        @php
            $notif_model::where('user_id', $user->id)->where('seen', 0)->update(['seen' => 1]);
        @endphp
    </div>
</div>
@endsection
