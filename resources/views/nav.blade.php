<ul class="main_menu">
	@foreach ($items as $i)
        <li>
			<a href="{{ $i->url }}">{{ $i->title }}</a>
		</li>
	@endforeach
</ul>