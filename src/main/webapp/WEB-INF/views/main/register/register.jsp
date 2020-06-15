<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/tailwind.css" type="text/css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/profile.css" type="text/css">
<script src="<%=request.getContextPath()%>/js/profile.js"></script>
</head>
<body>
<body>
	<div id="mainBanner" style="background-size:cover;background-image:url('<%=request.getContextPath()%>/img/top-banner.jpg')" class="mb-4  w-full ">
		<div id="bannerText">
			<h1 class="border-l-4 border-brand-600 text-5xl text-white roboto-slab font-bold">&nbsp;&nbsp;ACCOUNT</h1>
		</div>
	</div>
	<div id="register"  class="m-0 m-auto w-full max-w-screen-xl">
		<span class="text-gray-500"><a href="<%=request.getContextPath()%>/">Home</a>&nbsp;&nbsp;＞&nbsp;&nbsp;Register</span>
		<div id="hr"class="my-4 border-t border-solid"></div>
		<div class="w-1/3 m-0 mb-4 m-auto mt-8"><p class="font-bold text-2xl">Register a new account</p></div>
		
		<form>
			<div class="w-full">
				<div>
					<div class="w-1/3 m-0 m-auto" >
						<input type="text" id="username" placeholder="USERNAME" class="focus:outline-none  bg-gray-200 focus:bg-white border-brand-500 py-2 px-3  border-2 border " name="username"/><br/>
					</div>
					<div class="w-1/3 m-0 m-auto">
						<input type="text" id="userId" placeholder="ID" class="focus:outline-none my-4 bg-gray-200 focus:bg-white border-brand-500 py-2 px-3  border-2 border" name="userid"/>
						<input type="button" id="userIdChk" class="focus:outline-none cursor-pointer py-2 px-3 bg-brand-500 font-bold focus:bg-brand-700" value="중복체크"/>
						<br/>
					</div>
					<div class="w-1/3 m-0 m-auto" >
						<input type="password" id="userPw" placeholder="PASSWORD" class="focus:outline-none bg-gray-200 focus:bg-white border-brand-500 py-2 px-3  border-2 border " name="userpwd"/><br/>
					</div>
					<div class="w-1/3 m-0 m-auto mt-4" >
						<input type="password" id="userPwChk" placeholder="PASSWORD CHECK" class="focus:outline-none bg-gray-200 focus:bg-white border-brand-500 py-2 px-3  border-2 border" name="userpwdChk"/><br/>
					</div>
					<div class="w-1/3 m-0 m-auto" >
						<input type="text" id="userTel" placeholder="TEL" class="focus:outline-none my-4 border-brand-500 py-2 px-3  border-2 border bg-gray-200 focus:bg-white" name="usertel"/><br/>
					</div>
					<div class="w-1/3 m-0 m-auto" >
						<input type="text" id="userEmail" placeholder="EMAIL" class="focus:outline-none border-brand-500 bg-gray-200 focus:bg-white py-2 px-3 border-2 border " name="useremail"/>
						<input type="button" id="emailCodeBtn" class="focus:outline-none cursor-pointer py-2 px-3 bg-brand-500 font-bold focus:bg-brand-700" value="인증번호받기"/>
					</div>
					<div class="w-1/3 m-0 m-auto h-20 mt-8" >
						<input type="submit" id="registerBtn" class="w-1/3 focus:outline-none cursor-pointer py-3 px-5 bg-brand-500 font-bold focus:bg-brand-700" value="회원가입"/>
					</div>
					<div class="w-1/3 m-0 m-auto h-16">
						<span class="text-gray-500">Are you a member?</span> <a href="#" id="login-ico" data-target="#loginModal" class="inline-block">Login Now</a>
					</div>
				</div>
				
			</div>
		</form>
	</div>
	
</body>
</html>