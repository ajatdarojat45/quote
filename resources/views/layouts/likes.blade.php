@if(Auth::check())
<div class="like_wrapper">
	<div class="{{$content->is_liked() ? 'btn btn-danger btn-unlike' : 'btn btn-primary btn-like'}}" data-model-id="{{$content->id}}" data-type="{{$model_id}}">
		{{$content->is_liked() ? 'Unlike' : 'Like'}}
	</div>
	<div class="total_like">
		<span class="like_number"> {{$content->likes->count()}} </span> Total Like
		<span class="like_warning" style="display: none;">Tidak Boleh Like diri sendiri</span>
	</div>
</div>
@endif