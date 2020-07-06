<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="mainBanner" style="background-image:url('<%=ctx%>/img/top-banner.jpg')" class="bg-cover mb-4 w-full">
	<div class="container my-0 mx-auto">
		<h1 class="border-l-4 border-brand-600 text-5xl text-white roboto-slab font-bold">&nbsp;&nbsp;WISH  LIST</h1>
	</div>
</div>
<div id="profileMenu" class="my-0 mx-auto w-full max-w-screen-xl">
	<span class="text-gray-500"><a href="<%=ctx%>/">Home</a>&nbsp;&nbsp;<i class="xi-angle-right"></i>&nbsp;&nbsp;Profile</span>
	<div id="hr" class="my-4 border-t border-solid"></div>
	<div class="flex my-12">
		<div class="lg:w-1/5 flex-initial">
		
		<c:if test="${student_img != null }">
			<img src="<%=ctx%>/img/${student_img}">
		</c:if >
		<c:if test="${student_img == null }">
			<img src="<%=ctx%>/img/user-avatar.png">
		</c:if>
			<div id="hr" class="my-8 border-t border-solid"></div>
			<h1 class="text-4xl font-bold text-center">${student_name_ko}</h1>
			<div id="hr" class="m-0 m-auto bg-black border-black my-4 border-t border-solid w-4 border-2"></div>
			<h4 class="text-gray-500 text-center mb-4">${student_info}</h4>
		</div>
		<div class="lg:w-4/5 w-3/4 mt-4 pl-8">
			<ul class="flex roboto-slab -mb-px">
				  <li class="mr-1">
				    <a class="bg-whitehover:border-brand-500  border-b border-l border-t border-r  py-3 px-4 text-gray-900 hover:text-brand-500 font-semibold" href="<%=ctx%>/courseOfStudy">Course</a>
				  </li> 
				  <li class="mr-1">
				    <a class="bg-white hover:border-brand-500 border-b border-l border-t border-r py-3 px-4 text-gray-900 hover:text-brand-500 font-semibold" href="<%=ctx%>/completionCourse">Completion Course</a>
				  </li>
				  <li class="mr-1">
				   	 <a class="bg-white hover:border-brand-500 border-b border-l border-t border-r py-3 px-4 text-gray-900 hover:text-brand-500 font-semibold" href="<%=ctx%>/inCompletionCourse">Incomplete Course</a>
				  </li>
				  <li class="mr-1">
				    <a class="  bg-white hover:border-brand-500 border-b border-l border-t border-r py-3 px-4 text-gray-900 hover:text-brand-500 font-semibold" href="<%=ctx%>/schedule">Schedule</a>
				  </li>
				  <li class="mr-1">
					<a class="  bg-white hover:border-brand-500 border-b border-l border-t border-r py-3 px-4 text-gray-900 hover:text-brand-500 font-semibold" href="<%=ctx%>/profile">Profile</a>
				  </li>
				   <li class="mr-1">
				    <a class=" bg-white border-brand-500 border-b border-l border-t-4 border-r py-3 px-4  text-brand-500  font-semibold" href="<%=ctx%>/wishList">WishList</a>
				  </li>
				   <li class="mr-1">
				    <a class="  bg-white hover:border-brand-500 border-b border-l border-t border-r py-3 px-4 text-gray-900 hover:text-brand-500 font-semibold" href="<%=ctx%>/paymentHistory">PaymentHistory</a>
				  </li>
				</ul>
				<div class="best-section my-0 mx-auto py-16">
				<c:if test="${list != null}">
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
					<c:if test="${empty list}">
								<p class="py-8 text-center text-lg font-bold">선택하신 강좌가 없습니다.</p>
					</c:if>
				<div id="wishListCourseCarousel" class="-mx-4 overflow-hidden">
				
					<c:forEach var="list" items="${list}">
						<div class="course-item px-4 text-center"><!-- course-item -->
							<div class="course-image relative overflow-hidden border border-gray-300">
								<img class="duration-300" src="<%=ctx %>/img/${list.course_img}">
								<a class="course-readmore overlay-center bg-brand-500 inline-block py-2 px-4 text-sm duration-300" href="<%=ctx %>/course/courseDetail?course_no=${list.course_no}">READ MORE</a>
							</div>
							<div class="course-content border-b border-l border-r border-gray-300 bg-white px-6">
								<h2 class="course-title hover:text-brand-500 duration-500 pt-4 mb-4">
									<a href="<%=ctx %>/course/courseDetail?course_no=${list.course_no}">${list.course_name}</a>
								</h2>
								<div class="course-author text-gray-900 mb-4">${list.employee_name}</div>
								<div class="course-price text-danger-500 relative py-4">${list.course_price}<span>원</span></div>
							</div>
						</div><!-- course-item -->
					</c:forEach>
				</div>
				</c:if>
			</div>
		</div>
	</div>
</div><!--end  -->
