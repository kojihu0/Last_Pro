<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
$(function(){ 
	function email(url,params,msg){
		$('.ajax-overlay').removeClass('hidden').addClass('flex');
		$.ajax({
			url : url,
			data : params,
			success : function(result){
				$('.ajax-overlay').removeClass('flex').addClass('hidden');
				if(result=="ok"){
					alert(msg);
					$("#userEmailText").addClass("hidden");
					$("#userEmailCodeText").removeClass("hidden");
				}
				else if(result=="duplicate"){
					alert("이미 존재하는 이메일입니다. 다른 이메일을 입력해주세요.");
				}
				else if(result=="yes"){
					$("#emailCheckResult").val("yes");
					$('#emailCodeCompleteBtn').prop('disabled', true);
					$("#userEmailCode").prop('disabled', true);
					alert(msg);
				}
				else if(result=="error"){
					alert("인증코드가 일치하지 않습니다.. 다시 시도해주세요.");
				}
			},
			error : function(){
				console.log("이메일 에러 ...");
			}
		});
	}

//이메일 인증코드 받기  
	$(document).on("click",'#emailCodeBtn',function(){
		var url="<%=ctx%>/emailSend";
		var params = "student_email="+$("#userEmail").val(); 
		var msg = "이메일로 인증코드를 전송하였습니다.";
		email(url,params,msg);
	});
//이메일 인증하기 
	$(document).on("click",'#emailCodeCompleteBtn',function(){
		var url="<%=ctx%>/emailCodeCheck";
		var params = "useremailCode="+$("#userEmailCode").val();
		var msg = "이메일 인증이 완료 되었습니다.";
		email(url,params,msg);
	});
	
	$("#userIdChk").click(function(){
		reg = /^[a-zA-Z]{1}\w{7,11}$/; //[a-zA-Z0-9_] = \w: 영어 대소문자, 숫자,_		
		if (!reg.test($("#userId").val())) {
			alert("아이디는 첫번째 문자는 영문자 ,영,숫자,_만 허용 , 8~12글자까지 허용합니다...");
			return false;
		}else{
			//아이디 중복 체크 
			window.open("<%=ctx%>/idCheck?userid="+$('#userId').val(),"userIdChk","width=400px, height=300px");
		}
	});
});
 </script>
<div id="mainBanner" style="background-image:url('<%=ctx%>/img/top-banner.jpg')" class="bg-cover mb-4 w-full">
	<div class="container my-0 mx-auto">
		<h1 class="border-l-4 border-brand-600 text-5xl text-white roboto-slab font-bold">&nbsp;&nbsp;ACCOUNT</h1>
	</div>
</div>
<div id="register"  class="m-0 m-auto w-full max-w-screen-xl">
	<span class="text-gray-500"><a href="<%=ctx%>/">Home</a>&nbsp;&nbsp;<i class="xi-angle-right"></i>&nbsp;&nbsp;Register</span>
	<div id="hr"class="my-4 border-t border-solid"></div>
	<div class="mb-4 mt-8 font-bold text-2xl text-center">Register a new account</div>
	<!-- 회원가입 폼  -->
	<form method="post" action="/lms/registerOk" class="my-0 mx-auto w-full max-w-md px-4">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
	  <div class="flex flex-wrap mb-6">
	    <div class="w-full">
	      <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="username">Name</label>
	      <input id="username" name="student_name_ko" class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200   py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white focus:border-brand-500" id="grid-password" type="text">
	    </div>
	  </div>
	  <div class="flex flex-wrap mb-6">
	    <div class="w-full">
	      <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="userId">ID</label>
	      <div class="flex">
	      	<input id="userId" name="student_id" class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200   py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white focus:border-brand-500" id="grid-password" type="text">
	      	<input type="hidden" id="idStatus" value="N"/><!-- 아이디 중복검사 여부 설정 -->
	      <div class="ml-2">
	      	<input type="button" id="userIdChk" class="focus:outline-none cursor-pointer  text-white py-3 px-4 bg-brand-500 font-bold focus:bg-brand-700" value="중복체크"/>
	      </div>
	      </div>
	    </div>
	  </div>
	  <div class="flex flex-wrap mb-6">
	    <div class="w-full">
	      <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="userPw">Password</label>
	      <input id="userPw" name="student_pw" class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200   py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white focus:border-brand-500"  type="password" placeholder="******************">
	      <div class="text-brand-500 text-sm" >비밀번호는 영문자,숫자,특수문자를 포함한 8자리 이상</div>
	    </div>
	  </div> 
	  <div class="flex flex-wrap mb-6">
	    <div class="w-full">
	      <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="userPwChk">PasswordCheck</label>
	      <input id="userPwChk"  class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200   py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white focus:border-brand-500"  type="password" placeholder="******************">
	      <div class="text-brand-500 text-sm" id="registerPw">비밀번호가 일치합니다.</div>
      	  <div class="text-danger-500 text-sm" id="registerPwChk">비밀번호가 일치하지 않습니다.</div>
	    </div>
	  </div>
	  
	  <div id="userEmailText" class="flex flex-wrap mb-6">
	    <div class="w-full">
	      <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="userEmail">Email</label>
	      <div class="flex">
	      <input id="userEmail" name="student_email" class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200   py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white focus:border-brand-500" type="text">
	      <div class="ml-2">
     		<input type="button" id="emailCodeBtn" class="focus:outline-none text-white cursor-pointer py-3 px-4 bg-brand-500 font-bold focus:bg-brand-700" value="인증번호받기"/>
     	  </div>
     	  	<input type="hidden" name="emailCheckResult" id="emailCheckResult" value="no"/>
     	  </div>
	    </div>
	  </div>
	  
	  <div id="userEmailCodeText" class="flex flex-wrap mb-6 hidden">
	    <div class="w-full">
	      <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="userEmail">Email Code</label>
	      <div class="flex">
	      <input id="userEmailCode" name="useremailCode" class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200   py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white focus:border-brand-500" type="text">
	      <div class="ml-2">
     		<input type="button" id="emailCodeCompleteBtn" class="focus:outline-none cursor-pointer text-white py-3 px-4 bg-brand-500 font-bold focus:bg-brand-700" value="인증번호확인"/>
     	  </div>
   	  		<input type="hidden" name="emailCheckResult" id="emailCheckResult" value="no"/>
     	  </div>
	    </div>
	  </div>
	  <div class="flex flex-wrap mb-6">
	    <div class="w-full">
	      <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="userTel">Tel</label>
	      <input id="userTel" name="student_tel_phone" class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200   py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white focus:border-brand-500"  type="text" >
	        <div class="text-brand-500 text-sm" >전화번호를 입력시  &nbsp;'-' &nbsp;를 입력해주세요.</div>
	    </div>
	  </div>
	  <div class="mb-4">
	  <input type="checkbox" value="동의" id="accept_policy" class="align-middle" class="mr-2">
	  <label for="accept_policy" class="text-sm"><a class="text-danger-500" href="/lms/termsOfService" target="_blank">사이트 이용약관</a> 및 <a class="text-danger-500" href="/lms/privacyPolicy" target="_blank">개인정보 처리방침</a>에 동의합니다.</label>
	  </div>
	  <div class="h-20 mt-8 text-center">
		<input type="submit" id="registerBtn" class="w-full max-w-sm focus:outline-none text-white cursor-pointer py-3 px-5 bg-brand-500 font-bold focus:bg-brand-700" value="회원가입"/>
	  </div>
	  <div class="w-full h-16 text-center">
		<span class="text-gray-500">Are you a member?</span>&nbsp;&nbsp;&nbsp;<a href="#" id="login-ico" data-target="#loginModal" class="login-ico inline-block">Login Now</a>
	  </div>
	</form>
</div>