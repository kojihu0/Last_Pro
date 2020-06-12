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
		<span class="text-gray-500"><a href="<%=request.getContextPath()%>/">Home</a>&nbsp;&nbsp;＞&nbsp;&nbsp;Profile</span>
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
				</div>
			</div>
		</div>
					
</body>
</html>