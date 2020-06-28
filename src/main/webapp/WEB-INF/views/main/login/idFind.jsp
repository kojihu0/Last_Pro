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
		
	<div class="flex">
		<form action="/lms/idFind" method="post"  class="w-1/2">
			<div class="w-1/3 m-0 mb-4 m-auto"><p class="font-bold text-2xl">Get Your Id</p></div>
				<div class="w-full">
					<div>
						<div class="w-1/3 m-0 m-auto" >
							<input type="text" id="userName" placeholder="USERNAME" class="focus:outline-none  bg-gray-200 focus:bg-white border-brand-500 py-2 px-3  border-2 border " name="student_name_ko"/><br/>
						</div>
						<div class="w-1/3 m-0 m-auto mt-4" >
							<input type="text" id="userEmail" placeholder="EMAIL" class="focus:outline-none border-brand-500 bg-gray-200 focus:bg-white py-2 px-3 border-2 border " name="useremail"/>
						</div>
						<div class="text-center m-0 m-auto h-20 mt-8" >
							<input type="submit" id="idFindBtn" class="focus:outline-none cursor-pointer py-3 px-5 bg-brand-500 font-bold focus:bg-brand-700" value="아이디찾기"/>
						</div>
					</div>
				</div>
			</form>
			
			<form class="w-1/2 border-l border-1 mb-2" action="/lms/pwdFind" method="post">
				<div class="text-center m-0 mb-4 m-auto "><p class="font-bold text-2xl">Get Your Password</p></div>
				<div class="w-full">
					<div>
						<div class="w-1/3 m-0 m-auto" >
							<input type="text" id="username" placeholder="USERNAME" class="focus:outline-none  bg-gray-200 focus:bg-white border-brand-500 py-2 px-3  border-2 border" name="student_name_ko"/><br/>
						</div>
						<div class="w-1/3 m-0 m-auto mt-4" >
							<input type="text"id="userid" placeholder="USERID" class="focus:outline-none  bg-gray-200 focus:bg-white border-brand-500 py-2 px-3  border-2 border" name="student_id"/><br/>
						</div>
						<div class="w-1/3 m-0 m-auto mt-4" >
							<input type="text"id="useremail" placeholder="EMAIL" class="focus:outline-none border-brand-500 bg-gray-200 focus:bg-white py-2 px-3 border-2 border" name="useremail"/>
						</div>
						<div class="text-center m-0 m-auto h-20 mt-8" >
							<input type="submit" id="pwFindBtn" class="focus:outline-none cursor-pointer py-3 px-5 bg-brand-500 font-bold focus:bg-brand-700" value="패스워드찾기"/>
						</div>
					</div>
				</div>
			</form>
		</div>
</div>
