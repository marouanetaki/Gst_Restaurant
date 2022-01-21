@extends("master")

@section("content")

    <!-- Title Page -->
	<section class="section-lunch bgwhite">
		<div class="header-lunch parallax0 parallax100" style="background-image: url(https://images.unsplash.com/photo-1414235077428-338989a2e8c0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80);">
			<div class="bg1-overlay t-center p-t-170 p-b-165">
				<h2 class="tit4 t-center">
					Gallery
				</h2>
			</div>
		</div>
	</section>

	<!-- Gallery -->
	<div class="section-gallery p-t-118 p-b-100">
		<div class="wrap-label-gallery filter-tope-group size27 mt-5 flex-w flex-sb-m m-l-r-auto flex-col-c-sm p-l-15 p-r-15 m-b-60">
			<a class="label-gallery txt26 trans-0-4 is-actived" href="{{ url('/gallery') }}">
				All Photo
			</a>

			<a class="label-gallery txt26 trans-0-4" href="{{ url('/gallery/lunch') }}">
				Lunch
			</a>

			<a class="label-gallery txt26 trans-0-4" href="{{ url('/gallery/dinner') }}">
				Dinner
			</a>

			<a class="label-gallery txt26 trans-0-4" href="{{ url('/gallery/event') }}">
				Events
			</a>
		</div>

		<div class="wrap-gallery isotope-grid flex-w p-l-25 p-r-25">
			<!-- - -->
			@foreach ($galleries as $g)
				<div class="item-gallery isotope-item bo-rad-10 hov-img-zoom events guests">
					<img src="{{ asset('storage/'.$g->image) }}" alt="IMG-GALLERY" height="250px">

					<div class="overlay-item-gallery trans-0-4 flex-c-m">
						<a class="btn-show-gallery flex-c-m fa fa-search" href="{{ asset('storage/'.$g->image) }}" data-lightbox="gallery"></a>
					</div>
				</div>
			@endforeach
		</div>
	</div>

	<!-- Pagination -->
		

@endsection