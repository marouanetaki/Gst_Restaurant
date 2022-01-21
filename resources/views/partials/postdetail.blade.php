@extends("master")

@section("content")
    <!-- Title Page -->
	<section class="bg-title-page flex-c-m p-t-160 p-b-80 p-l-15 p-r-15" style="background-image: url(https://pluspng.com/img-png/restaurant-png-hd--1920.png);">
		<h2 class="tit6 t-center">
			Blog
		</h2>
	</section>


	<!-- Content page -->
	<section>
		<div class="bread-crumb bo5-b p-t-17 p-b-17">
			<div class="container">
				<a href="/" class="txt27">
					Home
				</a>

				<span class="txt29 m-l-10 m-r-10">/</span>

				<a href="{{ url('/blog') }}" class="txt27">
					Blog
				</a>

				<span class="txt29 m-l-10 m-r-10">/</span>

				<span class="txt29">
					{{ $post->title }}
				</span>
			</div>
		</div>

		<div class="container">
			<div class="row ">
				<div class="col-md-8 col-lg-9">
					<div class="p-t-80 p-b-124 bo5-r p-r-50 h-full p-r-0-md bo-none-md">
						<!-- Block4 -->
						<div class="blo4 p-b-63">
							<!-- - -->
							<div class="pic-blo4 hov-img-zoom bo-rad-10 pos-relative">
									<img src="{{ url('storage/'.$post->image) }}" alt="IMG-BLOG">
							</div>

							<!-- - -->
							<div class="text-blo4 p-t-33">
								<h4 class="p-b-16">
                                    {{ $post->title }}
								</h4>

								<p>
                                	{{ $p->excerpt }}
                            	</p>

								<p>
                                     {{ $post->body }}
                                </p>
							</div>
						</div>

						<!-- Leave a comment -->
						<form class="leave-comment p-t-10">
							<h4 class="txt33 p-b-14">
								Leave a Comment
							</h4>

							<p>
								Your email address will not be published. Required fields are marked *
							</p>

							<textarea class="bo-rad-10 size29 bo2 txt10 p-l-20 p-t-15 m-b-10 m-t-40" name="commentent" placeholder="Comment..."></textarea>

							<div class="size30 bo2 bo-rad-10 m-t-3 m-b-20">
								<input class="bo-rad-10 sizefull txt10 p-l-20" type="text" name="name" placeholder="Name *">
							</div>

							<div class="size30 bo2 bo-rad-10 m-t-3 m-b-20">
								<input class="bo-rad-10 sizefull txt10 p-l-20" type="text" name="email" placeholder="Email *">
							</div>

							<div class="size30 bo2 bo-rad-10 m-t-3 m-b-30">
								<input class="bo-rad-10 sizefull txt10 p-l-20" type="text" name="website" placeholder="Website">
							</div>

							<!-- Button3 -->
							<button type="submit" class="btn3 flex-c-m size31 txt11 trans-0-4">
								Post Comment
							</button>
						</form>
					</div>
				</div>

                <div class="col-md-4 col-lg-3">
					<div class="sidebar2 p-t-80 p-b-80 p-l-20 p-l-0-md p-t-0-md">
						<!-- Search -->
						<div class="search-sidebar2 size12 bo2 pos-relative">
							<input class="input-search-sidebar2 txt10 p-l-20 p-r-55" type="text" name="search" placeholder="Search">
							<button class="btn-search-sidebar2 flex-c-m ti-search trans-0-4"></button>
						</div>

						<!-- Categories -->
						<div class="categories">
							<h4 class="txt33 bo5-b p-b-35 p-t-58">
								Categories
							</h4>

							<ul>
								<li class="bo5-b p-t-8 p-b-8">
									<a href="href="{{ url('/blog') }}" class="txt27">
										All
									</a>
								</li>
								@foreach ($categories as $c)
									<li class="bo5-b p-t-8 p-b-8">
									<a href="href="{{ url('/blog/'.$c->id) }}" class="txt27">
										{{ $c->name }}
									</a>
									<span class="badge badge-danger float-right">{{ $c->posts->count() }}</span>
								</li>
								@endforeach
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
@endsection