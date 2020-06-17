<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="mainBanner" style="background-size:cover;background-image:url('<%=request.getContextPath()%>/img/top-banner.jpg')" class="mb-4  w-full ">
		<div id="bannerText">
			<h1 class="border-l-4 border-brand-600 text-5xl text-white roboto-slab font-bold">&nbsp;&nbsp;PROFILE</h1>
		</div>
	</div>
	<div id="profileMenu" class="my-0 mx-auto w-full max-w-screen-xl">
		<span class="text-gray-500"><a href="<%=request.getContextPath()%>/">Home</a>&nbsp;&nbsp;<i class="xi-angle-right"></i>&nbsp;&nbsp;Profile</span>
		<div id="hr" class="my-4 border-t border-solid"></div>
		<div class="flex mt-12">
			<div>
				<img src="<%=request.getContextPath()%>/img/user-avatar.png">
				<div id="hr" class="my-8 border-t border-solid"></div>
				<h1 class="text-4xl font-bold roboto-slab text-center">Hong Gil Dong</h1>
				<div id="hr" class="m-0 m-auto border-black my-4 border-t bg-black border-solid w-4 border-2"></div>
				<h4 class="text-gray-500 text-center mb-4">I have basics skills in leadership!</h4>
			</div>
			<div class="w-full mt-4 ml-8">
				<ul class="flex roboto-slab">
					  <li class="-mb-px mr-1">
					    <a class="bg-white hover:border-brand-500 border-b border-l border-t border-r py-3 px-4 text-gray-900 hover:text-brand-500 font-semibold" href="<%=request.getContextPath()%>/courseOfStudy">Course</a>
					  </li> 
					  <li class="mr-1">
					    <a class="bg-white hover:border-brand-500 border-b border-l border-t border-r py-3 px-4 text-gray-900 hover:text-brand-500 font-semibold" href="<%=request.getContextPath()%>/completionCourse">Completion Course</a>
					  </li>
					  <li class="mr-1">
					   	 <a class="bg-white hover:border-brand-500 border-b border-l border-t border-r py-3 px-4 text-gray-900 hover:text-brand-500 font-semibold" href="<%=request.getContextPath()%>/inCompletionCourse">Incomplete Course</a>
					  </li>
					  <li class="mr-1">
					    <a class="bg-white border-brand-500 border-b border-l border-t-4 border-r  py-3 px-4 text-brand-500 font-semibold" href="<%=request.getContextPath()%>/schedule">Schedule</a>
					  </li>
					  <li class="mr-1">
					    <a class="bg-white hover:border-brand-500 border-b border-l border-t border-r py-3 px-4 text-gray-900 hover:text-brand-500 font-semibold" href="<%=request.getContextPath()%>/profile">Profile</a>
					  </li>
					   <li class="mr-1">
					    <a class="  bg-white hover:border-brand-500 border-b border-l border-t border-r py-3 px-4 text-gray-900 hover:text-brand-500 font-semibold" href="<%=request.getContextPath()%>/wishList">WishList</a>
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
</body>
</html>