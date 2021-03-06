@extends("master")

@section("content")
    		<!-- Slide1 -->
		<section class="section-slide">
			<div class="wrap-slick1">
				<div class="slick1">
					<div
						class="item-slick1 item1-slick1"
						style="background-image: url(images/slide1-01.jpg);"
					>
						<div
							class="wrap-content-slide1 sizefull flex-col-c-m p-l-15 p-r-15 p-t-150 p-b-170"
						>
							<span
								class="caption1-slide1 txt1 t-center animated visible-false m-b-15"
								data-appear="fadeInDown"
							>
								Welcome to
							</span>

							<h2
								class="caption2-slide1 tit1 t-center animated visible-false m-b-37"
								data-appear="fadeInUp"
							>
								Maro Place
							</h2>

							<div
								class="wrap-btn-slide1 animated visible-false"
								data-appear="zoomIn"
							>
								<!-- Button1 -->
						<a href="{{ url('/menu') }}" class="btn1 flex-c-m size1 txt3 trans-0-4">
									Look Menu
								</a>
							</div>
						</div>
					</div>

					<div
						class="item-slick1 item2-slick1"
						style="background-image: url(images/master-slides-02.jpg);"
					>
						<div
							class="wrap-content-slide1 sizefull flex-col-c-m p-l-15 p-r-15 p-t-150 p-b-170"
						>
							<span
								class="caption1-slide1 txt1 t-center animated visible-false m-b-15"
								data-appear="rollIn"
							>
								Welcome to
							</span>

							<h2
								class="caption2-slide1 tit1 t-center animated visible-false m-b-37"
								data-appear="lightSpeedIn"
							>
								Maro Place
							</h2>

							<div
								class="wrap-btn-slide1 animated visible-false"
								data-appear="slideInUp"
							>
								<!-- Button1 -->
								<a href="{{ url('/menu') }}" class="btn1 flex-c-m size1 txt3 trans-0-4">
									Look Menu
								</a>
							</div>
						</div>
					</div>

					<div
						class="item-slick1 item3-slick1"
						style="background-image: url(images/master-slides-01.jpg);"
					>
						<div
							class="wrap-content-slide1 sizefull flex-col-c-m p-l-15 p-r-15 p-t-150 p-b-170"
						>
							<span
								class="caption1-slide1 txt1 t-center animated visible-false m-b-15"
								data-appear="rotateInDownLeft"
							>
								Welcome to
							</span>

							<h2
								class="caption2-slide1 tit1 t-center animated visible-false m-b-37"
								data-appear="rotateInUpRight"
							>
								Maro Place
							</h2>

							<div
								class="wrap-btn-slide1 animated visible-false"
								data-appear="rotateIn"
							>
								<!-- Button1 -->
								<a href="{{ url('/menu') }}" class="btn1 flex-c-m size1 txt3 trans-0-4">
									Look Menu
								</a>
							</div>
						</div>
					</div>
				</div>

				<div class="wrap-slick1-dots"></div>
			</div>
		</section>

		<!-- Welcome -->
		<section class="section-welcome bg1-pattern p-t-120 p-b-105">
			<div class="container">
				<div class="row">
					<div class="col-md-6 p-t-45 p-b-30">
						<div class="wrap-text-welcome t-center">
							<span class="tit2 t-center">
								Italian Restaurant
							</span>

							<h3 class="tit3 t-center m-b-35 m-t-5">
								Welcome
							</h3>

							<p class="t-center m-b-22 size3 m-l-r-auto">
								Donec quis lorem nulla. Nunc eu odio mi. Morbi nec lobortis est.
								Sed fringilla, nunc sed imperdiet lacinia, nisl ante egestas mi,
								ac facilisis ligula sem id neque.
							</p>

							<a href="{{ url('/contact') }}" class="txt4">
								More
								<i class="fa fa-long-arrow-right m-l-10" aria-hidden="true"></i>
							</a>
						</div>
					</div>

					<div class="col-md-6 p-b-30">
						<div
							class="wrap-pic-welcome size2 bo-rad-10 hov-img-zoom m-l-r-auto"
						>
							<img src="images/our-story-01.jpg" alt="IMG-OUR" />
						</div>
					</div>
				</div>
			</div>
		</section>

		<div
			class="header-intro parallax100 t-center p-t-135 p-b-158"
			style="background-image: url(images/bg-intro-01.jpg);"
		>
			<span class="tit2 p-l-15 p-r-15">
				Discover
			</span>

			<h3 class="tit4 t-center p-l-15 p-r-15 p-t-3">
				Maro Place
			</h3>
		</div>

		<!-- Our menu -->
		<section class="section-ourmenu bg2-pattern p-t-115 p-b-120">
			<div class="container">
				<div class="title-section-ourmenu t-center m-b-22">
					<span class="tit2 t-center">
						Discover
					</span>

					<a href="{{ url('/menu') }}"><h3 class="tit5 t-center m-t-2">
						Our Menu
					</h3></a>
				</div>

				<div class="row">
					<div class="col-md-8">
						<div class="row">
							<div class="col-sm-6">
								<!-- Item our menu -->
								<div
									class="item-ourmenu bo-rad-10 hov-img-zoom pos-relative m-t-30"
								>
									<img src="{{ asset('images/our-menu-01.jpg') }}" alt="IMG-MENU" />

									<!-- Button2 -->
									<a href="{{ url('/menu/["lunch"]') }}" class="btn2 flex-c-m txt5 ab-c-m size4">
										Lunch
									</a>
								</div>
							</div>

							<div class="col-sm-6">
								<!-- Item our menu -->
								<div
									class="item-ourmenu bo-rad-10 hov-img-zoom pos-relative m-t-30"
								>
									<img src="{{ asset('images/our-menu-05.jpg') }}" alt="IMG-MENU" />

									<!-- Button2 -->
									<a href="{{ url('/menu/["dinner"]') }}" class="btn2 flex-c-m txt5 ab-c-m size5">
										Dinner
									</a>
								</div>
							</div>

							<div class="col-12">
								<!-- Item our menu -->
								<div
									class="item-ourmenu bo-rad-10 hov-img-zoom pos-relative m-t-30"
								>
									<img src="{{ asset('images/our-menu-13.jpg') }}" alt="IMG-MENU" />

									<!-- Button2 -->
									<a href="{{ url('/menu/["breakfast"]') }}" class="btn2 flex-c-m txt5 ab-c-m size6">
										Breakfast
									</a>
								</div>
							</div>
						</div>
					</div>

					<div class="col-md-4">
						<div class="row">
							<div class="col-12">
								<!-- Item our menu -->
								<div
									class="item-ourmenu bo-rad-10 hov-img-zoom pos-relative m-t-30"
								>
									<img src="{{ asset('images/our-menu-08.jpg') }}" alt="IMG-MENU" />

									<!-- Button2 -->
									<a href="{{ url('/menu/["drink"]') }}" class="btn2 flex-c-m txt5 ab-c-m size7">
										Drink
									</a>
								</div>
							</div>

							<div class="col-12">
								<!-- Item our menu -->
								<div
									class="item-ourmenu bo-rad-10 hov-img-zoom pos-relative m-t-30"
								>
									<img src="{{ asset('images/our-menu-10.jpg') }}" alt="IMG-MENU" />

									<!-- Button2 -->
									<a href="{{ url('/menu/["starters"]') }}" class="btn2 flex-c-m txt5 ab-c-m size8">
										Starters
									</a>
								</div>
							</div>

							<div class="col-12">
								<!-- Item our menu -->
								<div
									class="item-ourmenu bo-rad-10 hov-img-zoom pos-relative m-t-30"
								>
									<img src="{{ asset('images/our-menu-16.jpg') }}" alt="IMG-MENU" />

									<!-- Button2 -->
									<a href="{{ url('/menu/["dessert"]') }}" class="btn2 flex-c-m txt5 ab-c-m size9">
										Dessert
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<!-- Blog -->
		<section class="section-blog bg-white p-t-115 p-b-123">
			<div class="container">
				<div class="title-section-ourmenu t-center m-b-22">
					<span class="tit2 t-center">
						Latest News
					</span>

					<h3 class="tit5 t-center m-t-2">
						The Blog
					</h3>
				</div>

				<div class="row">
				@foreach ($posts as $p)
					
					<div class="col-md-4 p-t-30">
						<!-- Block1 -->
						<div class="blo1">
							<div class="wrap-pic-blo1 bo-rad-10 hov-img-zoom pos-relative">
								<a href="blog-detail.html"
									><img src="{{ asset('storage/'.$p->image) }}" height="250" alt="IMG-INTRO"
								/></a>
							</div>

							<div class="wrap-text-blo1 p-t-35">
								<a href="blog-detail.html"
									><h4 class="txt5 color0-hov trans-0-4 m-b-13">
										{{ $p->title }}
									</h4></a
								>

								<p class="m-b-20">
									{{ $p->excerpt }}
								</p>

								<a href="{{ url('/blog') }}" class="txt4">
									See More
									<i
										class="fa fa-long-arrow-right m-l-10"
										aria-hidden="true"
									></i>
								</a>
							</div>
						</div>
					</div>
				@endforeach
				</div>
			</div>
		</section>

		<!-- Video -->
		<section
			class="section-video parallax100"
			style="background-image: url(images/bg-cover-video-02.jpg);"
		>
			<div class="content-video t-center p-t-225 p-b-250">
				<span class="tit2 p-l-15 p-r-15">
					Discover
				</span>

				<h3 class="tit4 t-center p-l-15 p-r-15 p-t-3">
					Our Video
				</h3>

				<div
					class="btn-play ab-center size16 hov-pointer m-l-r-auto m-t-43 m-b-33"
					data-toggle="modal"
					data-target="#modal-video-01"
				>
					<div class="flex-c-m sizefull bo-cir bgwhite color1 hov1 trans-0-4">
						<i class="fa fa-play fs-18 m-l-2" aria-hidden="true"></i>
					</div>
				</div>
			</div>
		</section>

@endsection