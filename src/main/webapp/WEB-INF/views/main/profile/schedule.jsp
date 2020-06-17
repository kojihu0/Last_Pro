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
			<h1 class="text-4xl font-bold roboto-slab text-center">Hong Gil Dong</h1>
			<div id="hr" class="m-0 m-auto bg-black border-black my-4 border-t border-solid w-4 border-2"></div>
			<h4 class="text-gray-500 text-center mb-4">I have basics skills in leadership!</h4>
		</div>
		<div class="lg:w-4/5 w-3/4 mt-4 pl-8">
		<ul class="flex roboto-slab">
			  <li class="-mb-px mr-1">
			    <a class="bg-white hover:border-brand-500 border-b border-l border-t border-r py-3 px-4 text-gray-900 hover:text-brand-500 font-semibold" href="<%=ctx%>/courseOfStudy">Course</a>
			  </li> 
			  <li class="mr-1">
			    <a class="bg-white hover:border-brand-500 border-b border-l border-t border-r py-3 px-4 text-gray-900 hover:text-brand-500 font-semibold" href="<%=ctx%>/completionCourse">Completion Course</a>
			  </li>
			  <li class="mr-1">
			   	 <a class="bg-white hover:border-brand-500 border-b border-l border-t border-r py-3 px-4 text-gray-900 hover:text-brand-500 font-semibold" href="<%=ctx%>/inCompletionCourse">Incomplete Course</a>
			  </li>
			  <li class="mr-1">
			    <a class="bg-white border-brand-500 border-b border-l border-t-4 border-r  py-3 px-4 text-brand-500 font-semibold" href="<%=ctx%>/schedule">Schedule</a>
			  </li>
			  <li class="mr-1">
			    <a class="bg-white hover:border-brand-500 border-b border-l border-t border-r py-3 px-4 text-gray-900 hover:text-brand-500 font-semibold" href="<%=ctx%>/profile">Profile</a>
			  </li>
			   <li class="mr-1">
			    <a class="  bg-white hover:border-brand-500 border-b border-l border-t border-r py-3 px-4 text-gray-900 hover:text-brand-500 font-semibold" href="<%=ctx%>/wishList">WishList</a>
			  </li>
			</ul>
			<table class="text-white border text-center mt-8 h-64 bg-cta-500 w-9/12 border-gray-500">
				<tbody >
					<tr class="border border-white">
						<td class="border border-white">&nbsp;</td>
						<td class="border border-white">월</td>
						<td class="border border-white">화</td>
						<td class="border border-white">수</td>
						<td class="border border-white">목</td>
						<td class="border border-white">금</td>
					</tr>
					<tr class="border border-white">
						<td class="border border-white">1교시</td>
						<td class="border border-white">스프링 과정</td>
						<td class="border border-white">스프링 과정</td>
						<td class="border border-white">스프링 과정</td>
						<td class="border border-white">스프링 과정</td>
						<td class="border border-white">스프링 과정</td>
					</tr>
					<tr class="border border-white">
						<td class="border border-white">2교시</td>
						<td class="border border-white">MVC패턴</td>
						<td class="border border-white">MVC패턴</td>
						<td class="border border-white">MVC패턴</td>
						<td class="border border-white">MVC패턴</td>
						<td class="border border-white">MVC패턴</td>
					</tr>
					<tr class="border border-white">
						<td class="border border-white">3교시</td>
						<td class="border border-white">백엔드개발</td>
						<td class="border border-white">백엔드개발</td>
						<td class="border border-white">백엔드개발</td>
						<td class="border border-white">백엔드개발</td>
						<td class="border border-white">백엔드개발</td>
					</tr>
					<tr class="border border-white">
						<td class="border border-white">4교시</td>
						<td class="border border-white">데이터베이스 기초</td>
						<td class="border border-white">데이터베이스 기초</td>
						<td class="border border-white">데이터베이스 기초</td>
						<td class="border border-white">데이터베이스 기초</td>
						<td class="border border-white">데이터베이스 기초</td>
					</tr>
					<tr>
						<td class="border border-white">5교시</td>
						<td class="border border-white">자바스크립트</td>
						<td class="border border-white">자바스크립트</td>
						<td class="border border-white">자바스크립트</td>
						<td class="border border-white">자바스크립트</td>
						<td class="border border-white">자바스크립트</td>
					</tr>
					<tr class="border border-white">
						<td class="border border-white">6교시</td>
						<td class="border border-white">프로젝트 개발</td>
						<td class="border border-white">프로젝트 개발</td>
						<td class="border border-white">프로젝트 개발</td>
						<td class="border border-white">프로젝트 개발</td>
						<td class="border border-white">프로젝트 개발</td>
					</tr>
				</tbody>
			</table>
		<!-- DivTable.com -->
		</div>
	</div>
</div>