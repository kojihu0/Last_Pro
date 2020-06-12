<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/tailwind.css" type="text/css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/profile.css" type="text/css">
<script src="<%=request.getContextPath()%>/js/profile.js"></script>
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
				<div id="hr" class="m-0 m-auto bg-black border-black my-4 border-t border-solid w-4 border-2"></div>
				<h4 class="text-gray-500 text-center mb-4">I have basics skills in leadership!</h4>
			</div>
			<div class="w-full mt-4 ml-8">
				<ul class="flex roboto-slab">
					  <li class="-mb-px mr-1">
					    <a class="bg-whitehover:border-brand-500  border-b border-l border-t border-r  py-3 px-4 text-gray-900 hover:text-brand-500 font-semibold" href="<%=request.getContextPath()%>/courseOfStudy">Course</a>
					  </li> 
					  <li class="mr-1">
					    <a class="bg-white hover:border-brand-500 border-b border-l border-t border-r py-3 px-4 text-gray-900 hover:text-brand-500 font-semibold" href="<%=request.getContextPath()%>/completionCourse">Completion Course</a>
					  </li>
					  <li class="mr-1">
					   	 <a class="bg-white hover:border-brand-500 border-b border-l border-t border-r py-3 px-4 text-gray-900 hover:text-brand-500 font-semibold" href="<%=request.getContextPath()%>/inCompletionCourse">Incomplete Course</a>
					  </li>
					  <li class="mr-1">
					    <a class="  bg-white hover:border-brand-500 border-b border-l border-t border-r py-3 px-4 text-gray-900 hover:text-brand-500 font-semibold" href="<%=request.getContextPath()%>/schedule">Schedule</a>
					  </li>
					  <li class="mr-1">
					    <a class=" bg-white border-brand-500 border-b border-l border-t-4 border-r py-3 px-4  text-brand-500  font-semibold" href="<%=request.getContextPath()%>/profile">Profile</a>
					  </li>
					   <li class="mr-1">
					    <a class="  bg-white hover:border-brand-500 border-b border-l border-t border-r py-3 px-4 text-gray-900 hover:text-brand-500 font-semibold" href="<%=request.getContextPath()%>/wishList">WishList</a>
					  </li>
					</ul>
					
					<ul class="flex roboto-slab mt-16 mb-4">
					  <li id="general" class="-mb-px mr-1">
					    <a class="bg-white border-b border-l border-t-4 border-r py-2 px-3 font-semibold border-brand-500 text-brand-500 " href="#">General</a>
					  </li> 
					  <li id="avatar" class="mr-1">
					    <a class="bg-white border-b border-l border-t border-r py-2 px-3 font-semibold text-gray-900 hover:text-brand-500 " href="#">Avatar</a>
					  </li>
					  <li id="password" class="mr-1">
					    <a class="bg-white border-b border-l border-t border-r py-2 px-3 font-semibold text-gray-900 hover:text-brand-500 " href="#">Password</a>
					  </li>
					</ul>
					
					
					
					<form id="profileUpdate"  style="display:block">
						<span class="text-gray-500 ">Biographical Info</span><br/>
						<textarea  class="focus:outline-none bg-gray-200 mt-4 " rows="8" cols="50"></textarea><br/>
						<span class="text-gray-500 ">Share a little biographical information to fill out your profile. This may be shown publicly.</span><br/>
						<div class="mt-5">
							<span class="font-bold">FirstName</span><br/>
							<input type="text" class='focus:outline-none bg-gray-200 py-2 px-3'/><br/>
						</div>
						
						<div class="mt-5">
							<span class=" font-bold">LastName</span><br/>
							<input type="text" class='focus:outline-none bg-gray-200 py-2 px-3'/><br/>
						</div>
						<div class="mt-5">
							<span class=" font-bold">NickName</span><br/>
							<input type="text" class='focus:outline-none bg-gray-200 py-2 px-3'/><br/>
						</div>
						<input value="변경하기" type="submit"class="cursor-pointer focus:outline-none mt-5 mb-5 bg-brand-500 hover:bg-brand-700  text-black font-bold py-3 px-5 ">
					</form>
					
					<form id="imgUpload" style="display:none">
						<div class='border-solid border-gray-500 border'>
							<img src="<%=request.getContextPath()%>/img/user-avatar.png" class="my-4 ml-4" style="width:150px;height:150px">
							
							<button type="submit"  class="my-4 ml-4 bg-gray-300 hover:bg-gray-400 text-gray-800 font-bold py-2 px-4  inline-flex items-center">
								<i class="xi-file-upload-o "></i>
								<span class="text-gray-800">Upload</span>
							</button>
						</div>	
						<input type="submit" value="변경하기" class="cursor-pointer focus:outline-none my-5 py-3 px-5 bg-brand-500 text-black font-bold">				
					</form>
					
					<form id="passwordUpdate"style="display:none">
						<div class="mt-5">
							<span class="font-bold">Old Password</span><br/>					
							<input type="password" class="focus:outline-none my-4 bg-gray-200 py-2 px-3"><br/>
						</div>
						<div class="mt-3">
							<span class="font-bold">New Password</span><br/> 	
							<input type="password" class="focus:outline-none my-4 bg-gray-200 py-2 px-3"><br/> 						
						</div>
						<div class="mt-3">
							<span class="font-bold">Confirmation password</span><br/>
							<input type="password" class="focus:outline-none my-4 bg-gray-200 py-2 px-3"><br/>
						</div>
						<input type="submit" value="변경하기" class="cursor-pointer focus:outline-none my-4 py-3 px-5 bg-brand-500 text-black font-bold">
					</form>
				</div>
			</div>
		</div>
		
</body>
</html>