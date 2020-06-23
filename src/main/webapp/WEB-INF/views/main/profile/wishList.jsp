<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="mainBanner" style="background-image:url('<%=ctx%>/img/top-banner.jpg')" class="bg-cover mb-4 w-full">
	<div class="container my-0 mx-auto">
		<h1 class="border-l-4 border-brand-600 text-5xl text-white roboto-slab font-bold">&nbsp;&nbsp;PROFILE</h1>
	</div>
</div>
<div id="profileMenu" class="my-0 mx-auto w-full max-w-screen-xl">
	<span class="text-gray-500"><a href="<%=ctx%>/">Home</a>&nbsp;&nbsp;<i class="xi-angle-right"></i>&nbsp;&nbsp;Profile</span>
	<div id="hr" class="my-4 border-t border-solid"></div>
	<div class="flex mt-12">
		<div class="lg:w-1/5 flex-initial">
			<img src="<%=ctx%>/img/user-avatar.png">
			<div id="hr" class="my-8 border-t border-solid"></div>
			<h1 class="text-4xl font-bold text-center">${username}</h1>
			<div id="hr" class="m-0 m-auto bg-black border-black my-4 border-t border-solid w-4 border-2"></div>
			<h4 class="text-gray-500 text-center mb-4">I have basics skills in leadership!</h4>
		</div>
		<div class="lg:w-4/5 w-3/4 mt-4 pl-8">
			<ul class="flex flex-initial roboto-slab">
				  <li class="-mb-px mr-1">
				    <a class="bg-whitehover:border-brand-500  border-b border-l border-t border-r  py-3 px-4 text-gray-900 hover:text-brand-500 font-semibold" href="<%=ctx%>/courseOfStudy?no=${student_no}">Course</a>
				  </li> 
				  <li class="mr-1">
				    <a class="bg-white hover:border-brand-500 border-b border-l border-t border-r py-3 px-4 text-gray-900 hover:text-brand-500 font-semibold" href="<%=ctx%>/completionCourse?no=${student_no}">Completion Course</a>
				  </li>
				  <li class="mr-1">
				   	 <a class="bg-white hover:border-brand-500 border-b border-l border-t border-r py-3 px-4 text-gray-900 hover:text-brand-500 font-semibold" href="<%=ctx%>/inCompletionCourse?no=${student_no}">Incomplete Course</a>
				  </li>
				  <li class="mr-1">
				    <a class="  bg-white hover:border-brand-500 border-b border-l border-t border-r py-3 px-4 text-gray-900 hover:text-brand-500 font-semibold" href="<%=ctx%>/schedule?no=${student_no}">Schedule</a>
				  </li>
				  <li class="mr-1">
					<a class="  bg-white hover:border-brand-500 border-b border-l border-t border-r py-3 px-4 text-gray-900 hover:text-brand-500 font-semibold" href="<%=ctx%>/profile?no=${student_no}">Profile</a>
				  </li>
				   <li class="mr-1">
				    <a class=" bg-white border-brand-500 border-b border-l border-t-4 border-r py-3 px-4  text-brand-500  font-semibold" href="<%=ctx%>/wishList?no=${student_no}">WishList</a>
				  </li>
				</ul>
				<div class="best-section my-0 mx-auto py-16">
					<div class="flex justify-between relative pb-4 mb-10">
						<div>
							<h1 class="roboto-slab font-bold">FAVORITE COURSES</h1>
						</div>
						<div class="carou-btn" >
							<button class="slide-arrow arrow-prev focus:outline-none border border-black duration-300 hover:border-brand-500 hover:text-brand-500"><i class="xi-angle-left"></i></button>
							<button class="slide-arrow arrow-next focus:outline-none border border-black duration-300 hover:border-brand-500 hover:text-brand-500"><i class="xi-angle-right"></i></button>
						</div>
						<span class="heading-line bg-black absolute bottom-0 left-0"></span>
					</div>
				<div id="wishListCourseCarousel" class="-mx-4 overflow-hidden">
				
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
			</div>
		</div>
	</div>
</div><!--end  -->
