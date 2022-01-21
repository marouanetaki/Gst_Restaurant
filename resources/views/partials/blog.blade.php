@extends("master") 
@section("content")
<!-- Title Page -->
<section
    class="bg-title-page flex-c-m p-t-160 p-b-80 p-l-15 p-r-15"
    style="
        background-image: url(https://pluspng.com/img-png/restaurant-png-hd--1920.png);
    "
>
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

            <span class="txt29">
                Blog
            </span>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-md-8 col-lg-9">
                <div
                    class="p-t-80 p-b-124 bo5-r h-full p-r-50 p-r-0-md bo-none-md"
                >
                    @foreach ($posts as $p)

                    <!-- Block4 -->
                    <div class="blo4 p-b-63">
                        <div
                            class="pic-blo4 hov-img-zoom bo-rad-10 pos-relative"
                        >
                            <a href="{{ url('/blog/'.$p->id) }}">
                                <img
                                    src="{{ asset('storage/'.$p->image) }}"
                                    alt="{{ $p->image }}"
                                />
                            </a>
                        </div>

                        <div class="text-blo4 p-t-33">
                            <h4 class="p-b-16">
                                <a
                                    href="{{ url('/blog/'.$p->id) }}"
                                    class="tit9" style="color: red;"
                                    >{{ $p->title }}</a
                                >
                            </h4>

                            <p>
                                {{ $p->excerpt }}
                            </p>

                            <a
                                href="{{ url('/blog/'.$p->id) }}"
                                class="dis-block txt4 m-t-30"
                            >
                                Continue Reading
                                <i
                                    class="fa fa-long-arrow-right m-l-10"
                                    aria-hidden="true"
                                ></i>
                            </a>
                        </div>
                    </div>

                    @endforeach

                    <!-- Pagination -->
                    <div class="pagination">
                        <a href="">
                            {{ $posts->links() }}
                        </a>
                    </div>
                </div>
            </div>

            <div class="col-md-4 col-lg-3">
                <div class="sidebar2 p-t-80 p-b-80 p-l-20 p-l-0-md p-t-0-md">
                    <!-- Search -->
                    <div class="search-sidebar2 size12 bo2 pos-relative">
                        <input
                            class="input-search-sidebar2 txt10 p-l-20 p-r-55"
                            type="text"
                            name="search"
                            placeholder="Search"
                        />
                        <button
                            class="btn-search-sidebar2 flex-c-m ti-search trans-0-4"
                        ></button>
                    </div>

                    <!-- Categories -->
                    <div class="categories">
                        <h4 class="txt33 bo5-b p-b-35 p-t-58">
                            Categories
                        </h4>

                        <ul>
                            <li class="bo5-b p-t-8 p-b-8">
                                <a href="{{ url('/blog') }}" class="txt27">
                                    All
                                </a>
                            </li>
                            @foreach ($categories as $c)
								<li class="bo5-b p-t-8 p-b-8">
									<a
										href="{{ url('/blog/'.$c->id) }}"
										class="txt27"
									>
										{{ $c->name }}
									</a>
									<span
										class="badge badge-danger float-right"
										>{{ $c->posts->count() }}</span
									>
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
