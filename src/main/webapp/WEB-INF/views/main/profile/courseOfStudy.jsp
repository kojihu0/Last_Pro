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
		<ul class="flex roboto-slab">
			  <li class="-mb-px mr-1">
			    <a class="bg-white border-brand-500 border-b border-l border-t-4 border-r  py-3 px-4 text-brand-500 font-semibold" href="<%=ctx%>/courseOfStudy?no=${student_no}">Course</a>
			  </li> 
			  <li class="mr-1">
			    <a class="bg-white hover:border-brand-500 border-b border-l border-t border-r py-3 px-4 text-gray-900 hover:text-brand-500 font-semibold" href="<%=ctx%>/completionCourse?no=${student_no}">Completion Course</a>
			  </li>
			  <li class="mr-1">
			   	 <a class="bg-white hover:border-brand-500 border-b border-l border-t border-r py-3 px-4 text-gray-900 hover:text-brand-500 font-semibold" href="<%=ctx%>/inCompletionCourse?no=${student_no}">Incomplete Course</a>
			  </li>
			  <li class="mr-1">
			    <a class="bg-white hover:border-brand-500 border-b border-l border-t border-r py-3 px-4 text-gray-900 hover:text-brand-500 font-semibold" href="<%=ctx%>/schedule?no=${student_no}">Schedule</a>
			  </li>
			  <li class="mr-1">
			    <a class="bg-white hover:border-brand-500 border-b border-l border-t border-r py-3 px-4 text-gray-900 hover:text-brand-500 font-semibold" href="<%=ctx%>/profile?no=${student_no}">Profile</a>
			  </li>
			   <li class="mr-1">
			    <a class="  bg-white hover:border-brand-500 border-b border-l border-t border-r py-3 px-4 text-gray-900 hover:text-brand-500 font-semibold" href="<%=ctx%>/wishList?no=${student_no}">WishList</a>
			  </li>
			</ul>
			<ul class="flex roboto-slab mt-16">
			  <li id="course" class="-mb-px mr-1">
			    <a class="bg-white border-b border-l border-t-4 border-r py-2 px-3 font-semibold border-brand-500 text-brand-500 " href="#">Course</a>
			  </li> 
			  <li id="grade" class="mr-1">
			    <a class="bg-white border-b border-l border-t border-r py-2 px-3 font-semibold text-gray-900 hover:text-brand-500 " href="#">Grade</a>
			  </li>
			</ul>
		<div id="courseList" style="display:block">
			<ul class="flex mt-8 roboto-slab bg-cta-400">
				<li class="ml-2 h-8 text-xl text-white w-1/6">Instructor</li>
				<li class="text-white text-xl w-1/3">Course</li>
				<li class="text-white text-xl w-1/6">Start Date</li>
				<li class="text-white text-xl w-1/6">End Date</li>
				<li class="text-white text-xl">Passing Grade</li>
				
			</ul>
			<c:forEach var ="courseList" items="${courseList}">
				<ul class="flex my-4 roboto-slab ">
					<li class="ml-2 h-8 text-xl text-black w-1/6"><a href="#" class="hover:text-cta-500">${courseList.employee_name}</a></li>
					<li class="text-black text-xl w-1/3"><a href="<%=ctx%>/myPageDetail?no=${student_no}" class="hover:text-cta-500">${courseList.course_name}</a></li>
					<li class="text-black text-xl w-1/6">${courseList.course_start_date}</li>
					<li class="text-black text-xl w-1/6">${courseList.course_end_date}</li>
					<li class="text-black text-xl w-1/6 text-center">1%</li>
				</ul>
				<div id="hr" class="my-4 border-cta-500 border-t border-solid"></div>
			</c:forEach>
		</div>
		
		<div id="gradeList" style="display:none">
				<ul class="flex mt-8 roboto-slab bg-cta-400">
					<li class="ml-2 h-8 text-xl text-white w-1/6">Instructor</li>
					<li class="text-white text-xl w-1/3">Course</li>
					<li class="text-white text-xl w-1/6">Grade</li>
					<li class="text-white text-xl w-1/6">Rating</li>
					<li class="text-white text-xl">Test Date</li>
				</ul>
				<ul class="flex my-4 roboto-slab">
					<c:forEach var ="courseList" items="${courseList}">
						<li class="ml-2 h-8 text-xl text-black w-1/6"><a href="#" class="hover:text-cta-500">${courseList.employee_name}</a></li>
						<li class="text-black text-xl w-1/3"><a href="<%=ctx%>/myPageDetail?no=${student_no}" class="hover:text-cta-500">${courseList.course_name}</a></li>
						<li class="text-black text-xl w-1/6">${courseList.grade}등급</li>
						<li class="text-black text-xl w-1/6">${courseList.rank}등급</li>
						<li class="text-black text-xl ">2020-06-10</li>
					</c:forEach>
				</ul>
				<div id="hr" class="my-4 border-cta-500 border-t border-solid"></div>
			</div>
		</div>
	</div>
</div>
