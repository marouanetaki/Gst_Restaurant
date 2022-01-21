@extends('master')

@section('content')

    <!-- Title Page -->
	<section class="section-lunch bgwhite">
		<div class="header-lunch parallax0 parallax100" style="background-image: url(https://images.unsplash.com/photo-1414235077428-338989a2e8c0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80);">
			<div class="bg1-overlay t-center p-t-170 p-b-165">
				<h2 class="tit4 t-center">
					Menu List
				</h2>
			</div>
		</div>
	</section>
    
	<!-- Main Menu -->
		<div class="container">
            <div class="wrap-label-gallery filter-tope-group size28 mt-5 flex-w flex-sb-m m-l-r-auto flex-col-c-sm p-l-15 p-r-15 m-b-6">
                <a class="label-gallery txt26 trans-0-4 is-actived" href="{{ url('/menu') }}">
                    All Items
                </a>

                <a class="label-gallery txt26 trans-0-4" href="{{ url('/menu/["breakfast"]') }}">
                    BreakFast
                </a>

                <a class="label-gallery txt26 trans-0-4" href="{{ url('/menu/["lunch"]') }}">
                    Lunch
                </a>

                <a class="label-gallery txt26 trans-0-4" href="{{ url('/menu/["dinner"]') }}">
                    Dinner
                </a>

                <a class="label-gallery txt26 trans-0-4" href="{{ url('/menu/["starters"]') }}">
                    Starters
                </a>

                <a class="label-gallery txt26 trans-0-4" href="{{ url('/menu/["dessert"]') }}">
                    Dessert
                </a>

                <a class="label-gallery txt26 trans-0-4" href="{{ url('/menu/["drink"]') }}">
                    Drinks
                </a>
            </div>

			<div class="row p-t-70 p-b-70">
			@foreach ($plats as $p)
		<div class="col-md-4 my-3">
            <div class="card text-center">
              <img class="card-img-top" src="{{ asset('/storage/'.$p->image)}}" height="200" alt="">
              <div class="card-body">
                <h4 class="card-title my-2">{{ $p->title }}</h4>
                <p class="card-text mb-3">{{ $p->description }}</p>
              <a href="{{ route('product.addToCart',$p->id) }}" class="btn btn-danger" style="color: white">${{ $p->price }}</a>
              </div>
            </div>
        </div>
            @endforeach
	</div>
</div>
@endsection