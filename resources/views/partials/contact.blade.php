@extends("master")

@section("content")
    <!-- Title Page -->
	<section class="bg-title-page flex-c-m p-t-160 p-b-80 p-l-15 p-r-15" style="background-image: url(images/bg-title-page-02.jpg);">
		<h2 class="tit6 t-center">
			Contact
		</h2>
	</section>


	@if(session('success'))
        <div class="row">
            <div class="col-md-12 my-3 text-center">
                <div class="alert alert-dismissible alert-primary">
                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                    <strong>{{ session('success') }}</strong>
                </div>
            </div>
        </div>
    @endif
	
	<!-- Contact form -->
	<section class="section-contact bg1-pattern p-t-90 p-b-113">
		<!-- Map -->
		<div class="container">
			<div class="map bo8 bo-rad-10 of-hidden">
				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d13588.23184437359!2d-8.021693226788472!3d31.632263371161734!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xdafee8d931f3209%3A0x96ce34d39325c762!2sGu%C3%A9liz%2C%20Marrakech%2040000!5e0!3m2!1sfr!2sma!4v1594218797770!5m2!1sfr!2sma" width="1200" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
			</div>
		</div>

		<div class="container">
			<h3 class="tit7 t-center p-b-62 p-t-105">
				Send us a Message
			</h3>

			<form action="{{ url('/addcontact') }}" method="post" class="wrap-form-reservation size22 m-l-r-auto">
				@csrf 
				<div class="row">
					<div class="col-md-4">
						<!-- Name -->
						<span class="txt9">
							Name
						</span>

						<div class="wrap-inputname size12 bo2 bo-rad-10 m-t-3 m-b-23">
							<input class="bo-rad-10 sizefull txt10 p-l-20" type="text" name="name" placeholder="Name">
						</div>
					</div>

					<div class="col-md-4">
						<!-- Email -->
						<span class="txt9">
							Email
						</span>

						<div class="wrap-inputemail size12 bo2 bo-rad-10 m-t-3 m-b-23">
							<input class="bo-rad-10 sizefull txt10 p-l-20" type="email" name="email" placeholder="Email">
						</div>
					</div>

					<div class="col-md-4">
						<!-- Phone -->
						<span class="txt9">
							Phone
						</span>

						<div class="wrap-inputphone size12 bo2 bo-rad-10 m-t-3 m-b-23">
							<input class="bo-rad-10 sizefull txt10 p-l-20" type="text" name="phone" placeholder="Phone">
						</div>
					</div>

					<div class="col-12">
						<!-- Message -->
						<span class="txt9">
							Message
						</span>
						<textarea class="bo-rad-10 size35 bo2 txt10 p-l-20 p-t-15 m-b-10 m-t-3" name="message" placeholder="Message"></textarea>
					</div>
				</div>

				<div class="wrap-btn-booking flex-c-m m-t-13">
					<!-- Button3 -->
					<button type="submit" class="btn3 flex-c-m size36 txt11 trans-0-4">
						Submit
					</button>
				</div>
			</form>
		</div>
	</section>
@endsection