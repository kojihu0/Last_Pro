<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 메인슬라이더 -->
<div class="main-slide-section w-full h-screen relative">
	<div id="mainSlider" class="h-full">
		<div class="slide bg-cover bg-center h-full opacity-75" style="background-image:url('<%=ctx %>/img/main1.jpg')">
			<h1>최고의 교육</h1>
		</div>
		<div class="slide bg-cover bg-center h-full opacity-75" style="background-image:url('<%=ctx %>/img/main2.jpg')">
		</div>
		<div class="slide bg-cover bg-center h-full opacity-75" style="background-image:url('<%=ctx %>/img/main3.jpg')">
		</div>
	</div>
	<div class="w-full absolute bottom-0 main-slide-cols mb-16">
		<div class="w-full max-w-screen-xl flex my-0 mx-auto text-white opacity-75">
			<div class="w-1/3 bg-black p-6 mr-2 flex col">
				<div class="mr-10"><img alt="" src="<%=ctx %>/img/mainslide-graduation-cap.png"></div>
				<div>
					<h1>ABOUT US</h1>
					<p>소개</p>
					<a class="text-xs text-brand-500" href="#">VIEW MORE <i class="xi-angle-right"></i></a>
				</div>
			</div>
			<div class="w-1/3 bg-black p-6 mr-2 flex col">
				<div class="mr-10"><img alt="" src="<%=ctx %>/img/mainslide-graduation-cap.png"></div>
				<div>
					<h1>ABOUT US</h1>
					<p>소개</p>
					<a class="text-xs text-brand-500" href="#">VIEW MORE <i class="xi-angle-right"></i></a>
				</div>
			</div>
			<div class="w-1/3 bg-black p-6 flex col">
				<div class="mr-10"><img alt="" src="<%=ctx %>/img/mainslide-graduation-cap.png"></div>
				<div>
					<h1>ABOUT US</h1>
					<p>소개</p>
					<a class="text-xs text-brand-500" href="#">VIEW MORE <i class="xi-angle-right"></i></a>
				</div>
			</div>
		</div>
	</div>
	<button class="slide-arrow arrow-prev outline-none"><i class="xi-angle-left"></i></button>
	<button class="slide-arrow arrow-next outline-none"><i class="xi-angle-right"></i></button>
</div>
<!-- 메인슬라이더 -->
<!-- 베스트강의 -->
<div class="best-section w-full max-w-screen-xl my-0 mx-auto py-16">
	<div class="flex justify-between">
		<h1 class="roboto-slab">POPULAR COURSES</h1>
		<div class="carou-btn">
			<button class="slide-arrow arrow-prev outline-none border border-black"><i class="xi-angle-left"></i></button>
			<button class="slide-arrow arrow-next outline-none border border-black"><i class="xi-angle-right"></i></button>
		</div>
	</div>
	<div id="courseCarousel">
		<div class="carou-slide"></div>
		<div class="carou-slide"></div>
		<div class="carou-slide"></div>
		<div class="carou-slide"></div>
		<div class="carou-slide"></div>
		<div class="carou-slide"></div>
		<div class="carou-slide"></div>
		<div class="carou-slide"></div>
	</div>
	<div class="text-center">
		<a class="bg-black text-white py-2 px-4 rounded" href="#">READ MORE</a>
	</div>
</div>
<!-- 베스트강의 -->
<!-- 가입하기 -->
<div class="register-section w-full bg-cover bg-center relative" style="background-image:url('<%=ctx %>/img/register.jpg')">
	<div class="w-full max-w-screen-xl my-0 mx-auto py-16">
		<div class="w-full flex items-center">
			<div class="w-2/3 relative">
				<h1  class="roboto-slab text-white text-6xl">REGISTER NOW</h1>
			</div>
			<div class="w-1/3 bg-white relative">
				<div class="bg-brand-500 text-white text-center py-6">
					<h1>간편 회원가입</h1>
				</div>
				<div class="p-8">
					<form action="">
						<p class="mb-4"><input type="text" placeholder="아이디" class="appearance-none border w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"></p>
						<p class="mb-4"><input type="text" placeholder="이메일" class="appearance-none border w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"></p>
						<p class="mb-4"><input type="password" placeholder="패스워드" class="appearance-none border w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"></p>
						<p class="mb-4"><input type="password" placeholder="패스워드 확인" class="appearance-none border w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"></p>
						<input type="submit" value="가입하기" class="w-full outline-none bg-black text-white py-2 px-4">
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- 이벤트 -->
<div class="event-section w-full max-w-screen-xl my-16 mx-auto">
	<div class="flex justify-between">
		<h1 class="roboto-slab">EVENTS</h1>
		<a class="outline-none border border-black text-xs px-4 view-all" href="#">VIEW ALL</a>
	</div>
	<div>
		<div class="event-row"></div>
		<div class="event-row"></div>
		<div class="event-row"></div>
	</div>
</div>
<!-- 이벤트 -->
<!-- 새소식 -->
<div class="news-section w-full py-16 bg-cover relative" style="background-image:url('<%=ctx %>/img/writing.jpg');">
	<div class="w-full max-w-screen-xl my-0 mx-auto relative">
		<div class="flex justify-between">
			<h1 class="roboto-slab">LATEST NEWS</h1>
			<div class="carou-btn">
				<button class="slide-arrow arrow-prev outline-none border border-black"><i class="xi-angle-left"></i></button>
				<button class="slide-arrow arrow-next outline-none border border-black"><i class="xi-angle-right"></i></button>
			</div>
		</div>
		<div id="newsCarousel">
			<div class="carou-slide"></div>
			<div class="carou-slide"></div>
			<div class="carou-slide"></div>
			<div class="carou-slide"></div>
			<div class="carou-slide"></div>
			<div class="carou-slide"></div>
		</div>
	</div>
	<div class="text-center relative">
		<a class="bg-black text-white py-2 px-4 rounded" href="#">READ MORE</a>
	</div>
</div>
<!-- 새소식 -->