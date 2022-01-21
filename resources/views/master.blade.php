<!DOCTYPE html>
<html lang="en">
	<head>
		<title>MaroEtk | Restaurant</title>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--===============================================================================================-->
		<link rel="icon" type="image/png" href="{{ asset('images/icons/icon.png') }}" />
		<!--===============================================================================================-->
		<link
			rel="stylesheet"
			type="text/css"
			href="{{ asset('vendor/bootstrap/css/bootstrap.min.css') }}"
		/>
		<!--===============================================================================================-->
		<link
			rel="stylesheet"
			type="text/css"
			href="{{ asset('fonts/font-awesome-4.7.0/css/font-awesome.min.css') }}"
		/>
		<!--===============================================================================================-->
		<link
			rel="stylesheet"
			type="text/css"
			href="{{ asset('fonts/themify/themify-icons.css') }}"
		/>
		<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="{{ asset('vendor/animate/animate.css') }}" />
		<!--===============================================================================================-->
		<link
			rel="stylesheet"
			type="text/css"
			href="{{ asset('vendor/css-hamburgers/hamburgers.min.css') }}"
		/>
		<!--===============================================================================================-->
		<link
			rel="stylesheet"
			type="text/css"
			href="{{ asset('vendor/animsition/css/animsition.min.css') }}"
		/>
		<!--===============================================================================================-->
		<link
			rel="stylesheet"
			type="text/css"
			href="{{ asset('vendor/select2/select2.min.css') }}"
		/>
		<!--===============================================================================================-->
		<link
			rel="stylesheet"
			type="text/css"
			href="{{ asset('vendor/daterangepicker/daterangepicker.css') }}"
		/>
		<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="{{ asset('vendor/slick/slick.css') }}" />
		<!--===============================================================================================-->
		<link
			rel="stylesheet"
			type="text/css"
			href="{{ asset('vendor/lightbox2/css/lightbox.min.css') }}"
		/>
		<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="{{ asset('css/util.css') }}" />
		<link rel="stylesheet" type="text/css" href="{{ asset('css/main.css') }}" />
		<!--===============================================================================================-->
	</head>
	<body class="animsition">
		<!-- Header -->
		<header>
			<!-- Header desktop -->
			<div class="wrap-menu-header gradient1 trans-0-4">
				<div class="container h-full">
					<div class="wrap_header trans-0-3">
						<!-- Logo -->
						<div class="logo">
							<a href="/">
								<img
									src="{{ asset('images/icons/maroetk.png') }}"
									alt="IMG-LOGO"
									style="width: 130px; height=150px;"
									data-logofixed="{{ asset('images/icons/maroetk.png') }}"
								/>
							</a>
						</div>
						<!-- Menu -->
						<div class="wrap_menu p-l-45 p-l-0-xl">
							<nav class="menu">
								{{ menu('menu','nav') }}
							</nav>
						</div>

						<!-- Social -->
						<div class="social flex-w flex-l-m p-r-20">
							@guest
								<li class="nav-item">
									<a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
								</li>
								@if (Route::has('register'))
								<li class="nav-item">
									<a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
								</li>
								@endif
							@else
								<li class="nav-item dropdown">
									<a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
										{{ Auth::user()->name }} <span class="caret"></span>
									</a>

									<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
										<a class="dropdown-item" style="color: black" href="{{ route('profile.orders') }}">
											My Orders
										</a>

										<a class="dropdown-item" style="color: black" href="{{ route('logout') }}"
											onclick="event.preventDefault();
															document.getElementById('logout-form').submit();">
											{{ __('Logout') }}
										</a>

										<form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
											@csrf
										</form>
									</div>
								</li>
								<div class="social flex-w flex-l-m p-r-6">
									<a href="{{ route('product.shoppingCart') }}" class="nav-item" style="color: red">
										<i class="fa fa-shopping-cart" aria-hidden="true"></i>
									<span class="badge" style="color: red">{{ Session::has('cart') ? count(Session::get('cart')->items) : ''}}</span>
									</a>
								</div>
							@endguest

							<button class="btn-show-sidebar m-l-33 trans-0-4"></button>
						</div>
					</div>
				</div>
			</div>
		</header>
		
		<!-- Sidebar -->
	<aside class="sidebar trans-0-4">
		<!-- Button Hide sidebar -->
		<button class="btn-hide-sidebar ti-close color0-hov trans-0-4"></button>

		<!-- - -->
		<ul class="menu-sidebar p-t-95 p-b-70">
			<li class="t-center m-b-13">
				<a href="{{ url('/') }}" class="txt19">Home</a>
			</li>

			<li class="t-center m-b-13">
				<a href="{{ url('/menu') }}" class="txt19">Menu</a>
			</li>

			<li class="t-center m-b-13">
				<a href="{{ url('/gallery') }}" class="txt19">Gallery</a>
			</li>

			<li class="t-center m-b-13">
				<a href="{{ url('/blog') }}" class="txt19">Blog</a>
			</li>

			<li class="t-center m-b-33">
				<a href="{{ url('/contact') }}" class="txt19">Contact</a>
			</li>

			<li class="t-center">
				<!-- Button3 -->
				<a href="{{ url('/reservation') }}" class="btn3 flex-c-m size13 txt11 trans-0-4 m-l-r-auto">
					Reservation
				</a>
			</li>
		</ul>
	</aside>
	@yield("content")

		<!-- Sign up -->
	<div class="section-signup bg1-pattern p-t-85 p-b-85">
		<form action="{{ url('/contact') }}" method="post" class="flex-c-m flex-w flex-col-c-m-lg p-l-5 p-r-5">
			<span class="txt5 m-10">
				Specials Sign up
			</span>

			<div class="wrap-input-signup size17 bo2 bo-rad-10 bgwhite pos-relative txt10 m-10">
				<input class="bo-rad-10 sizefull txt10 p-l-20" type="text" name="email-address" placeholder="Email Adrress">
				<i class="fa fa-envelope ab-r-m m-r-18" aria-hidden="true"></i>
			</div>

			<!-- Button3 -->
			<button type="submit" class="btn3 flex-c-m size18 txt11 trans-0-4 m-10">
				Sign-up
			</button>
		</form>
	</div>

		<!-- Footer -->
		<footer class="bg1">
			<div class="container p-t-40 p-b-70">
				<div class="row">
					<div class="col-sm-6 col-md-4 p-t-50">
						<!-- - -->
						<h4 class="txt13 m-b-33">
							Contact Us
						</h4>

						<ul class="m-b-70">
							<li class="txt14 m-b-14">
								<i
									class="fa fa-map-marker fs-16 dis-inline-block size19"
									aria-hidden="true"
								></i>
								44 Rue Carre-Eden, Gueliz, Marrakech
							</li>

							<li class="txt14 m-b-14">
								<i
									class="fa fa-phone fs-16 dis-inline-block size19"
									aria-hidden="true"
								></i>
								(+212) 569 255 255
							</li>

							<li class="txt14 m-b-14">
								<i
									class="fa fa-envelope fs-13 dis-inline-block size19"
									aria-hidden="true"
								></i>
								contact@maroetk.com
							</li>
						</ul>

						<!-- - -->
						<h4 class="txt13 m-b-32">
							Opening Times
						</h4>

						<ul>
							<li class="txt14">
								10:30 AM – 11:30 PM
							</li>

							<li class="txt14">
								Every Day
							</li>
						</ul>
					</div>

					<div class="col-sm-6 col-md-4 p-t-50">
						<!-- - -->
						<h4 class="txt13 m-b-33">
							Latest twitter
						</h4>

						<div class="m-b-25">
							<span class="fs-13 color2 m-r-5">
								<i class="fa fa-twitter" aria-hidden="true"></i>
							</span>
							<a href="#" class="txt15">
								@colorlib
							</a>

							<p class="txt14 m-b-18">
								Activello is a good option. It has a slider built into that
								displays the featured image in the slider.
								<a href="#" class="txt15">
									https://buff.ly/2zaSfAQ
								</a>
							</p>

							<span class="txt16">
								21 Dec 2017
							</span>
						</div>

						<div>
							<span class="fs-13 color2 m-r-5">
								<i class="fa fa-twitter" aria-hidden="true"></i>
							</span>
							<a href="#" class="txt15">
								@colorlib
							</a>

							<p class="txt14 m-b-18">
								Activello is a good option. It has a slider built into that
								displays
								<a href="#" class="txt15">
									https://buff.ly/2zaSfAQ
								</a>
							</p>

							<span class="txt16">
								21 Dec 2017
							</span>
						</div>
					</div>

					<div class="col-sm-6 col-md-4 p-t-50">
						<!-- - -->
						<h4 class="txt13 m-b-38">
							Gallery
						</h4>

						<!-- Gallery footer -->
						<div class="wrap-gallery-footer flex-w">
							<a
								class="item-gallery-footer wrap-pic-w"
								href="{{ asset('images/photo-gallery-01.jpg') }}"
								data-lightbox="gallery-footer"
							>
								<img src="{{ asset('images/photo-gallery-thumb-01.jpg') }}" alt="GALLERY" />
							</a>

							<a
								class="item-gallery-footer wrap-pic-w"
								href="{{ asset('images/photo-gallery-02.jpg') }}"
								data-lightbox="gallery-footer"
							>
								<img src="{{ asset('images/photo-gallery-thumb-02.jpg') }}" alt="GALLERY" />
							</a>

							<a
								class="item-gallery-footer wrap-pic-w"
								href="{{ asset('images/photo-gallery-03.jpg') }}"
								data-lightbox="gallery-footer"
							>
								<img src="{{ asset('images/photo-gallery-thumb-03.jpg') }}" alt="GALLERY" />
							</a>

							<a
								class="item-gallery-footer wrap-pic-w"
								href="{{ asset('images/photo-gallery-04.jpg') }}"
								data-lightbox="gallery-footer"
							>
								<img src="{{ asset('images/photo-gallery-thumb-04.jpg') }}" alt="GALLERY" />
							</a>

							<a
								class="item-gallery-footer wrap-pic-w"
								href="{{ asset('images/photo-gallery-05.jpg') }}"
								data-lightbox="gallery-footer"
							>
								<img src="{{ asset('images/photo-gallery-thumb-05.jpg') }}" alt="GALLERY" />
							</a>

							<a
								class="item-gallery-footer wrap-pic-w"
								href="{{ asset('images/photo-gallery-06.jpg') }}"
								data-lightbox="gallery-footer"
							>
								<img src="{{ asset('images/photo-gallery-thumb-06.jpg') }}" alt="GALLERY" />
							</a>

							<a
								class="item-gallery-footer wrap-pic-w"
								href="{{ asset('images/photo-gallery-07.jpg') }}"
								data-lightbox="gallery-footer"
							>
								<img src="{{ asset('images/photo-gallery-thumb-07.jpg') }}" alt="GALLERY" />
							</a>

							<a
								class="item-gallery-footer wrap-pic-w"
								href="{{ asset('images/photo-gallery-08.jpg') }}"
								data-lightbox="gallery-footer"
							>
								<img src="{{ asset('images/photo-gallery-thumb-08.jpg') }}" alt="GALLERY" />
							</a>

							<a
								class="item-gallery-footer wrap-pic-w"
								href="{{ asset('images/photo-gallery-09.jpg') }}"
								data-lightbox="gallery-footer"
							>
								<img src="{{ asset('images/photo-gallery-thumb-09.jpg') }}" alt="GALLERY" />
							</a>

							<a
								class="item-gallery-footer wrap-pic-w"
								href="{{ asset('images/photo-gallery-10.jpg') }}"
								data-lightbox="gallery-footer"
							>
								<img src="{{ asset('images/photo-gallery-thumb-10.jpg') }}" alt="GALLERY" />
							</a>

							<a
								class="item-gallery-footer wrap-pic-w"
								href="{{ asset('images/photo-gallery-11.jpg') }}"
								data-lightbox="gallery-footer"
							>
								<img src="{{ asset('images/photo-gallery-thumb-11.jpg') }}" alt="GALLERY" />
							</a>

							<a
								class="item-gallery-footer wrap-pic-w"
								href="{{ asset('images/photo-gallery-12.jpg') }}"
								data-lightbox="gallery-footer"
							>
								<img src="{{ asset('images/photo-gallery-thumb-12.jpg') }}" alt="GALLERY" />
							</a>
						</div>
					</div>
				</div>
			</div>

			<div class="end-footer bg2">
				<div class="container">
					<div class="flex-sb-m flex-w p-t-22 p-b-22">
						<div class="p-t-5 p-b-5">
							<a href="#" class="fs-15 c-white"
								><i class="fa fa-tripadvisor" aria-hidden="true"></i
							></a>
							<a href="#" class="fs-15 c-white"
								><i class="fa fa-facebook m-l-18" aria-hidden="true"></i
							></a>
							<a href="#" class="fs-15 c-white"
								><i class="fa fa-twitter m-l-18" aria-hidden="true"></i
							></a>
						</div>

						<div class="txt17 p-r-20 p-t-5 p-b-5">
							Copyright &copy; 2020 All rights reserved | This Script is made
							with <i class="fa fa-heart"></i> by
							<a href="https://www.marouma.com/">Marouane Ettaki</a>
						</div>
					</div>
				</div>
			</div>
		</footer>

		<!-- Back to top -->
		<div class="btn-back-to-top bg0-hov" id="myBtn">
			<span class="symbol-btn-back-to-top">
				<i class="fa fa-angle-double-up" aria-hidden="true"></i>
			</span>
		</div>

		<!-- Container Selection1 -->
		<div id="dropDownSelect1"></div>

		<!-- Modal Video 01-->
		<div
			class="modal fade"
			id="modal-video-01"
			tabindex="-1"
			role="dialog"
			aria-hidden="true"
		>
			<div class="modal-dialog" role="document" data-dismiss="modal">
				<div
					class="close-mo-video-01 trans-0-4"
					data-dismiss="modal"
					aria-label="Close"
				>
					&times;
				</div>

				<div class="wrap-video-mo-01">
					<div class="w-full wrap-pic-w op-0-0">
						<img src="images/icons/video-16-9.jpg" alt="IMG" />
					</div>
					<div class="video-mo-01">
						<iframe
							src="https://www.youtube.com/embed/5k1hSu2gdKE?rel=0&amp;showinfo=0"
							allowfullscreen
						></iframe>
					</div>
				</div>
			</div>
		</div>

		<!--===============================================================================================-->
		<script
			type="text/javascript"
			src="{{ asset('vendor/jquery/jquery-3.2.1.min.js') }}"
		></script>
		<!--===============================================================================================-->
		<script
			type="text/javascript"
			src="{{ asset('vendor/animsition/js/animsition.min.js') }} "
		></script>
		<!--===============================================================================================-->
		<script type="text/javascript" src="{{ asset('vendor/bootstrap/js/popper.js') }}"></script>
		<script
			type="text/javascript"
			src="{{ asset('vendor/bootstrap/js/bootstrap.min.js') }}"
		></script>
		<!--===============================================================================================-->
		<script type="text/javascript" src="{{ asset('vendor/select2/select2.min.js') }}"></script>
		<!--===============================================================================================-->
		<script
			type="text/javascript"
			src="{{ asset('vendor/daterangepicker/moment.min.js') }}"
		></script>
		<script
			type="text/javascript"
			src="{{ asset('vendor/daterangepicker/daterangepicker.js') }}"
		></script>
		<!--===============================================================================================-->
		<script type="text/javascript" src="{{ asset('vendor/slick/slick.min.js') }}"></script>
		<script type="text/javascript" src="{{ asset('js/slick-custom.js') }}"></script>
		<!--===============================================================================================-->
		<script
			type="text/javascript"
			src="{{ asset('vendor/parallax100/parallax100.js') }}"
		></script>
		<script type="text/javascript">
			$(".parallax100").parallax100();
		</script>
		<!--===============================================================================================-->
		<script
			type="text/javascript"
			src="{{ asset('vendor/countdowntime/countdowntime.js') }}"
		></script>
		<!--===============================================================================================-->
		<script
			type="text/javascript"
			src="{{ asset('vendor/lightbox2/js/lightbox.min.js') }}"
		></script>
		<!--===============================================================================================-->
		<script
			type="text/javascript"
			src="{{ asset('js/map-custom.js') }}"
		></script>

		<script src="{{ asset('js/main.js') }}"></script>
	</body>
</html>
