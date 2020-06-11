<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 메인슬라이더 -->
<div class="main-slide-section w-full h-screen relative">
	<div id="mainSlider" class="h-full text-white">
		<div class="slide-item bg-cover bg-center h-full" style="background-image:url('<%=ctx %>/img/main1.jpg')">
			<div class="w-full max-w-screen-xl my-0 mx-auto h-full flex flex-col items-center relative">
				<div class="tw-el tw-left">
					<h1 class="text-6xl">Best For Education</h1>
					<p>노년에게서 가치를 방황하였으며, 방황하여도, 하였으며, 보라. 관현악이며, 너의 풍부하게 것은 사막이다.</p>
				</div>
			</div>
		</div>
		<div class="slide-item bg-cover bg-center h-full opacity-75" style="background-image:url('<%=ctx %>/img/main2.jpg')">
		</div>
		<div class="slide-item bg-cover bg-center h-full opacity-75" style="background-image:url('<%=ctx %>/img/main3.jpg')">
		</div>
	</div>
	<div class="w-full absolute bottom-0 main-slide-cols mb-16">
		<div class="w-full max-w-screen-xl flex my-0 mx-auto text-white opacity-75">
			<div class="w-1/3 bg-black p-6 mr-2 flex col">
				<div class="mr-10"><img alt="" src="<%=ctx %>/img/mainslide-graduation-cap.png"></div>
				<div>
					<h1 class="roboto-slab font-bold">ABOUT US</h1>
					<p>소개</p>
					<a class="text-xs text-brand-500" href="#">VIEW MORE <i class="xi-angle-right"></i></a>
				</div>
			</div>
			<div class="w-1/3 bg-black p-6 mr-2 flex col">
				<div class="mr-10"><img alt="" src="<%=ctx %>/img/mainslide-graduation-cap.png"></div>
				<div>
					<h1 class="roboto-slab font-bold">ABOUT US</h1>
					<p>소개</p>
					<a class="text-xs text-brand-500" href="#">VIEW MORE <i class="xi-angle-right"></i></a>
				</div>
			</div>
			<div class="w-1/3 bg-black p-6 flex col">
				<div class="mr-10"><img alt="" src="<%=ctx %>/img/mainslide-graduation-cap.png"></div>
				<div>
					<h1 class="roboto-slab font-bold">ABOUT US</h1>
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
	<div class="flex justify-between items-end relative pb-4 mb-10">
		<div>
			<h1 class="roboto-slab font-bold">POPULAR COURSES</h1>
			<p>현재 인기있는 강좌입니다</p>
		</div>
		<div class="carou-btn">
			<button class="slide-arrow arrow-prev outline-none border border-black duration-300 hover:border-brand-500 hover:text-brand-500"><i class="xi-angle-left"></i></button>
			<button class="slide-arrow arrow-next outline-none border border-black duration-300 hover:border-brand-500 hover:text-brand-500"><i class="xi-angle-right"></i></button>
		</div>
		<span class="heading-line bg-black absolute bottom-0 left-0"></span>
	</div>
	<div id="courseCarousel" class="-mx-4">
		<div class="course-item px-4 text-center"><!-- course-item -->
			<div class="course-image relative overflow-hidden border border-gray-300">
				<a href="#"><img class="duration-300" src="<%=ctx %>/img/spring.png"></a>
				<a class="course-readmore overlay-center bg-brand-500 inline-block py-2 px-4 text-sm duration-300" href="#">READ MORE</a>
			</div>
			<div class="course-content border-b border-l border-r border-gray-300 bg-white px-6">
				<h2 class="course-title hover:text-brand-500 duration-500 pt-4 mb-4">
					<a href="#">자바 스프링 완전정복</a>
				</h2>
				<div class="course-author text-gray-900 mb-4">홍길동</div>
				<div class="course-price text-danger-500 relative py-4">110,000<span>원</span></div>
			</div>
		</div><!-- course-item -->
		<div class="course-item px-4 text-center"><!-- course-item -->
			<div class="course-image relative overflow-hidden border border-gray-300">
				<a href="#"><img class="duration-300" src="<%=ctx %>/img/spring.png"></a>
				<a class="course-readmore overlay-center bg-brand-500 inline-block py-2 px-4 text-sm duration-300" href="#">READ MORE</a>
			</div>
			<div class="course-content border-b border-l border-r border-gray-300 bg-white px-6">
				<h2 class="course-title hover:text-brand-500 duration-500 pt-4 mb-4">
					<a href="#">자바 스프링 완전정복</a>
				</h2>
				<div class="course-author text-gray-900 mb-4">홍길동</div>
				<div class="course-price text-danger-500 relative py-4">110,000<span>원</span></div>
			</div>
		</div><!-- course-item -->
		<div class="course-item px-4 text-center"><!-- course-item -->
			<div class="course-image relative overflow-hidden border border-gray-300">
				<a href="#"><img class="duration-300" src="<%=ctx %>/img/spring.png"></a>
				<a class="course-readmore overlay-center bg-brand-500 inline-block py-2 px-4 text-sm duration-300" href="#">READ MORE</a>
			</div>
			<div class="course-content border-b border-l border-r border-gray-300 bg-white px-6">
				<h2 class="course-title hover:text-brand-500 duration-500 pt-4 mb-4">
					<a href="#">자바 스프링 완전정복</a>
				</h2>
				<div class="course-author text-gray-900 mb-4">홍길동</div>
				<div class="course-price text-danger-500 relative py-4">110,000<span>원</span></div>
			</div>
		</div><!-- course-item -->
		<div class="course-item px-4 text-center"><!-- course-item -->
			<div class="course-image relative overflow-hidden border border-gray-300">
				<a href="#"><img class="duration-300" src="<%=ctx %>/img/spring.png"></a>
				<a class="course-readmore overlay-center bg-brand-500 inline-block py-2 px-4 text-sm duration-300" href="#">READ MORE</a>
			</div>
			<div class="course-content border-b border-l border-r border-gray-300 bg-white px-6">
				<h2 class="course-title hover:text-brand-500 duration-500 pt-4 mb-4">
					<a href="#">자바 스프링 완전정복</a>
				</h2>
				<div class="course-author text-gray-900 mb-4">홍길동</div>
				<div class="course-price text-danger-500 relative py-4">110,000<span>원</span></div>
			</div>
		</div><!-- course-item -->
		<div class="course-item px-4 text-center"><!-- course-item -->
			<div class="course-image relative overflow-hidden border border-gray-300">
				<a href="#"><img class="duration-300" src="<%=ctx %>/img/spring.png"></a>
				<a class="course-readmore overlay-center bg-brand-500 inline-block py-2 px-4 text-sm duration-300" href="#">READ MORE</a>
			</div>
			<div class="course-content border-b border-l border-r border-gray-300 bg-white px-6">
				<h2 class="course-title hover:text-brand-500 duration-500 pt-4 mb-4">
					<a href="#">자바 스프링 완전정복</a>
				</h2>
				<div class="course-author text-gray-900 mb-4">홍길동</div>
				<div class="course-price text-danger-500 relative py-4">110,000<span>원</span></div>
			</div>
		</div><!-- course-item -->
		<div class="course-item px-4 text-center"><!-- course-item -->
			<div class="course-image relative overflow-hidden border border-gray-300">
				<a href="#"><img class="duration-300" src="<%=ctx %>/img/spring.png"></a>
				<a class="course-readmore overlay-center bg-brand-500 inline-block py-2 px-4 text-sm duration-300" href="#">READ MORE</a>
			</div>
			<div class="course-content border-b border-l border-r border-gray-300 bg-white px-6">
				<h2 class="course-title hover:text-brand-500 duration-500 pt-4 mb-4">
					<a href="#">자바 스프링 완전정복</a>
				</h2>
				<div class="course-author text-gray-900 mb-4">홍길동</div>
				<div class="course-price text-danger-500 relative py-4">110,000<span>원</span></div>
			</div>
		</div><!-- course-item -->
	</div>
	<div class="text-center mt-8 mb-2">
		<a class="inline-block bg-black text-white py-2 px-4 rounded border border-black duration-300 hover:bg-white hover:text-black" href="#">READ MORE</a>
	</div>
</div>
<!-- 베스트강의 -->
<!-- 가입하기 -->
<div class="register-section w-full bg-cover bg-center relative" style="background-image:url('<%=ctx %>/img/register.jpg')">
	<div class="w-full max-w-screen-xl my-0 mx-auto py-16">
		<div class="w-full flex items-center">
			<div class="w-2/3 relative pr-12 text-white">
				<p class="text-lg">인간의 거선의 속잎나고, 방황하였으며, 청춘에서만 되는 곧 두기 있다.<br>청춘은 행복스럽고 이상을 노년에게서 어디 대고, 힘있다.</p>
				<h1 class="roboto-slab font-bold text-6xl">REGISTER NOW</h1>
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
	<div class="flex justify-between items-end relative pb-4 mb-10">
		<div>
			<h1 class="roboto-slab font-bold">EVENTS</h1>
			<p>현재 인기있는 강좌입니다</p>
		</div>
		<a class="outline-none border border-black text-xs px-4 view-all" href="#">VIEW ALL</a>
		<span class="heading-line bg-black absolute bottom-0 left-0"></span>
	</div>
	<div>
		<div class="event-row flex border-t border-gray-300 py-12"><!-- event-row -->
			<div class="event-date flex-shrink-0 text-brand-500 text-center mr-12">
				<div class="date text-6xl font-bold">11</div>
				<div class="month">06월</div>
			</div>
			<div class="event-content relative px-16">
				<h2 class="font-bold hover:text-brand-500 duration-500"><a href="#">~~~~이벤트 입니다.</a></h2>
				<div class="event-desc text-gray-700 mt-6">
				노년에게서 가치를 방황하였으며, 방황하여도, 하였으며, 보라. 관현악이며, 너의 풍부하게 것은 사막이다. 우는 인간은 꽃이 튼튼하며, 이상은 반짝이는 남는 것이다.
				</div>
			</div>
			<div class="event-img flex-shrink-0 overflow-hidden">
				<img class="w-full" src="<%=ctx %>/img/eventthumb.jpg">
			</div>
		</div><!-- event-row -->
		<div class="event-row flex border-t border-gray-300 py-12"><!-- event-row -->
			<div class="event-date flex-shrink-0 text-brand-500 text-center mr-12">
				<div class="date text-6xl font-bold">11</div>
				<div class="month">06월</div>
			</div>
			<div class="event-content relative px-16">
				<h2 class="font-bold hover:text-brand-500 duration-500"><a href="#">~~~~이벤트 입니다.</a></h2>
				<div class="event-desc text-gray-700 mt-6">
				노년에게서 가치를 방황하였으며, 방황하여도, 하였으며, 보라. 관현악이며, 너의 풍부하게 것은 사막이다. 우는 인간은 꽃이 튼튼하며, 이상은 반짝이는 남는 것이다.
				</div>
			</div>
			<div class="event-img flex-shrink-0 overflow-hidden">
				<img class="w-full" src="<%=ctx %>/img/eventthumb.jpg">
			</div>
		</div><!-- event-row -->
		<div class="event-row flex border-t border-gray-300 py-12"><!-- event-row -->
			<div class="event-date flex-shrink-0 text-brand-500 text-center mr-12">
				<div class="date text-6xl font-bold">11</div>
				<div class="month">06월</div>
			</div>
			<div class="event-content relative px-16">
				<h2 class="font-bold hover:text-brand-500 duration-500"><a href="#">~~~~이벤트 입니다.</a></h2>
				<div class="event-desc text-gray-700 mt-6">
				노년에게서 가치를 방황하였으며, 방황하여도, 하였으며, 보라. 관현악이며, 너의 풍부하게 것은 사막이다. 우는 인간은 꽃이 튼튼하며, 이상은 반짝이는 남는 것이다.
				</div>
			</div>
			<div class="event-img flex-shrink-0 overflow-hidden">
				<img class="w-full" src="<%=ctx %>/img/eventthumb.jpg">
			</div>
		</div><!-- event-row -->
	</div>
</div>
<!-- 이벤트 -->
<!-- 새소식 -->
<div class="news-section w-full py-16 bg-cover relative" style="background-image:url('<%=ctx %>/img/writing.jpg');">
	<div class="w-full max-w-screen-xl my-0 mx-auto">
		<h1 class="roboto-slab text-white font-bold relative">LATEST NEWS</h1>
		<div class="flex justify-between items-end text-white relative pb-4 mb-10">
			<div>새 소식을 알려드립니다.</div>
			<div class="carou-btn">
				<button class="slide-arrow arrow-prev outline-none border border-white duration-300 hover:border-brand-500 hover:text-brand-500"><i class="xi-angle-left"></i></button>
				<button class="slide-arrow arrow-next outline-none border border-white duration-300 hover:border-brand-500 hover:text-brand-500"><i class="xi-angle-right"></i></button>
			</div>
			<span class="heading-line bg-white absolute bottom-0 left-0"></span>
		</div>
		<div id="newsCarousel" class="-mx-4">
			<div class="news-item px-4"><!-- news-item -->
				<div class="news-img overflow-hidden">
					<a href="#"><img src="<%=ctx %>/img/restroom.jpg"></a>
				</div>
				<div class="news-content text-center -mt-4">
					<div class="news-date bg-brand-500 text-white text-sm inline-block px-4 py-1">2020/06/11</div>
					<h2 class="text-white py-4 hover:text-brand-500 duration-500"><a href="#">새로운 강좌 안내</a></h2>
				</div>
			</div><!-- news-item -->
			<div class="news-item px-4"><!-- news-item -->
				<div class="news-img overflow-hidden">
					<a href="#"><img src="<%=ctx %>/img/restroom.jpg"></a>
				</div>
				<div class="news-content text-center -mt-4">
					<div class="news-date bg-brand-500 text-white text-sm inline-block px-4 py-1">2020/06/11</div>
					<h2 class="text-white py-4 hover:text-brand-500 duration-500"><a href="#">새로운 강좌 안내</a></h2>
				</div>
			</div><!-- news-item -->
			<div class="news-item px-4"><!-- news-item -->
				<div class="news-img overflow-hidden">
					<a href="#"><img src="<%=ctx %>/img/restroom.jpg"></a>
				</div>
				<div class="news-content text-center -mt-4">
					<div class="news-date bg-brand-500 text-white text-sm inline-block px-4 py-1">2020/06/11</div>
					<h2 class="text-white py-4 hover:text-brand-500 duration-500"><a href="#">새로운 강좌 안내</a></h2>
				</div>
			</div><!-- news-item -->
			<div class="news-item px-4"><!-- news-item -->
				<div class="news-img overflow-hidden">
					<a href="#"><img src="<%=ctx %>/img/restroom.jpg"></a>
				</div>
				<div class="news-content text-center -mt-4">
					<div class="news-date bg-brand-500 text-white text-sm inline-block px-4 py-1">2020/06/11</div>
					<h2 class="text-white py-4 hover:text-brand-500 duration-500"><a href="#">새로운 강좌 안내</a></h2>
				</div>
			</div><!-- news-item -->
			<div class="news-item px-4"><!-- news-item -->
				<div class="news-img overflow-hidden">
					<a href="#"><img src="<%=ctx %>/img/restroom.jpg"></a>
				</div>
				<div class="news-content text-center -mt-4">
					<div class="news-date bg-brand-500 text-white text-sm inline-block px-4 py-1">2020/06/11</div>
					<h2 class="text-white py-4 hover:text-brand-500 duration-500"><a href="#">새로운 강좌 안내</a></h2>
				</div>
			</div><!-- news-item -->
		</div>
	</div>
	<div class="text-center mt-8 mb-2 relative">
		<a class="bg-black text-white py-2 px-4 rounded border border-black duration-300 hover:bg-white hover:text-black" href="#">READ MORE</a>
	</div>
</div>
<!-- 새소식 -->