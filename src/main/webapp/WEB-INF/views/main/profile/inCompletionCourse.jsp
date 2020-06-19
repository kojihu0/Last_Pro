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
			<ul class="flex roboto-slab">
				  <li class="-mb-px mr-1">
				    <a class="bg-white hover:border-brand-500 border-b border-l border-t border-r  py-3 px-4 text-gray-900  hover:text-brand-500 font-semibold" href="<%=ctx%>/courseOfStudy">Course</a>
				  </li> 
				  <li class="mr-1">
				    <a class="bg-white hover:border-brand-500   border-b border-l border-t border-r py-3 px-4 text-gray-900  hover:text-brand-500  font-semibold" href="<%=ctx%>/completionCourse">Completion Course</a>
				  </li>
				  <li class="mr-1">
				   	 <a class="bg-white border-brand-500  border-b border-l border-t-4 border-r py-3 px-4 text-brand-500  font-semibold" href="<%=ctx%>/inCompletionCourse">Incomplete Course</a>
				  </li>
				  <li class="mr-1">
				    <a class="bg-white hover:border-brand-500 border-b border-l border-t border-r py-3 px-4 text-gray-900 hover:text-brand-500 font-semibold" href="<%=ctx%>/schedule">Schedule</a>
				  </li>
				  <li class="mr-1">
				    <a class="bg-white hover:border-brand-500 border-b border-l border-t border-r py-3 px-4 text-gray-900 hover:text-brand-500 font-semibold" href="<%=ctx%>/profile">Profile</a>
				  </li>
				   <li class="mr-1">
				    <a class="  bg-white hover:border-brand-500 border-b border-l border-t border-r py-3 px-4 text-gray-900 hover:text-brand-500 font-semibold" href="<%=ctx%>/wishList">WishList</a>
				  </li>
				</ul>
				<div>
				<ul class="flex mt-8 roboto-slab bg-cta-400">
					<li class="ml-2 h-8 text-xl text-white w-1/6">Instructor</li>
					<li class="text-white text-xl w-1/3">Course</li>
					<li class="text-white text-xl w-1/6">FinalGrade</li>
					<li class="text-white text-xl w-1/5">CompletionStatus</li>
					<li class="text-white text-xl">End date</li>
				</ul>
				<ul class="flex my-4 roboto-slab">
					<li class="ml-2 h-8 text-xl text-black w-1/6"><a href="#" class="hover:text-cta-500">김길동</a></li>
					<li class="text-black text-xl w-1/3"><a href="#" class="hover:text-cta-500">즐기면서 배우는 코딩공부</a></li>
					<li class="text-black text-xl w-1/6">F등급</li>
					<li class="text-black text-xl w-1/5">NO</li>
					<li class="text-black text-xl ">2020-06-10</li>
				</ul>
				<div id="hr" class="my-4 border-cta-500 border-t border-solid"></div>
			</div>
		</div>
	</div>
</div>
