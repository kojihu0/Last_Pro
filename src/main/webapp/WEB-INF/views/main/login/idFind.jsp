<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="mainBanner" style="background-image:url('<%=ctx%>/img/top-banner.jpg')" class="bg-cover mb-4 w-full">
	<div class="container my-0 mx-auto">
		<h1 class="border-l-4 border-brand-600 text-5xl text-white roboto-slab font-bold">&nbsp;&nbsp;ACCOUNT</h1>
	</div>
</div>
<div id="register"  class="m-0 m-auto w-full max-w-screen-xl">
	<span class="text-gray-500"><a href="<%=request.getContextPath()%>/">Home</a>&nbsp;&nbsp;<i class="xi-angle-right"></i>&nbsp;&nbsp;Find Id&Password</span>
	<div id="hr"class="my-4 border-t border-solid"></div>
	<div class="flex mb-12">
		<div class="w-1/2 px-40">
			<form action="<%=ctx%>/idFind" method="post" class="find-userinfo">
				<p class="font-bold text-2xl text-center my-4 pb-4">Get Your Id</p>
				<div class="mb-4">
					<input type="text" id="userName" name="student_name_ko" placeholder="USERNAME" class="block w-full focus:outline-none focus:bg-white focus:border-brand-500 bg-gray-200 py-2 px-3 border-2 border"/>
				</div>
				<div class="mb-4">
					<input type="text" id="userEmail" name="student_email" placeholder="EMAIL" class="block w-full focus:outline-none focus:bg-white focus:border-brand-500 bg-gray-200 py-2 px-3 border-2 border"/>
				</div>
				<input type="submit" id="idFindBtn" class="text-white block w-full focus:outline-none cursor-pointer py-3 px-5 bg-brand-500 font-bold focus:bg-brand-700" value="아이디찾기"/>
			</form>
		</div>
		<div class="w-1/2 px-40">
			<form action="<%=ctx%>/pwdFind" method="post" class="find-userinfo">
				<p class="font-bold text-2xl text-center my-4 pb-4">Get Your Password</p>
				<div class="w-full">
					<div class="mb-4">
						<input type="text" id="username" name="student_name_ko" placeholder="USERNAME" class="block w-full focus:outline-none focus:bg-white focus:border-brand-500 bg-gray-200 py-2 px-3 border-2 border"/>
					</div>
					<div class="mb-4">
						<input type="text"id="userid" name="student_id" placeholder="USERID" class="block w-full focus:outline-none focus:bg-white focus:border-brand-500 bg-gray-200 py-2 px-3 border-2 border"/>
					</div>
					<div class="mb-4">
						<input type="text" id="useremail" name="student_email" placeholder="EMAIL" class="block w-full focus:outline-none focus:bg-white focus:border-brand-500 bg-gray-200 py-2 px-3 border-2 border"/>
					</div>
					<input type="submit" id="pwFindBtn" class="text-white block w-full focus:outline-none cursor-pointer py-3 px-5 bg-brand-500 font-bold focus:bg-brand-700" value="패스워드찾기"/>
				</div>
			</form>
		</div>	
	</div>
</div>
