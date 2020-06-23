<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
    $(function(){ 

	function email(url,params,msg){
	$.ajax({
		url : url,
		data : params,
		success : function(result){
			var tag = result.split("<hr id='z'>");
			console.log(result);
			emailCode = tag[1].trim();
			console.log(emailCode);
			
			if(emailCode=='ok'){
				alert(msg);
			}else if(emailCode=="yes"){
				$("#emailCheckResult").val("yes");
				alert(msg);
			}else{
		
			}
		},
		error : function(){
			console.log("이메일 에러 ...");
		}
	});
	}

//이메일 인증코드 받기 joinMembershipEmailCheckBtn 
	$(document).on("click",'#emailCodeBtn',function(){
		var url="<%=ctx%>/emailSend"
		var params = "useremail="+$("#userEmail").val(); 
		var msg = "이메일로 인증코드를 전송하였습니다.";
		email(url,params,msg);
	});
//이메일 인증하기 
	$(document).on("click",'#joinMembershipEmailCheckBtn2',function(){
		var url="<%=ctx%>/joinMembership/emailCheckCode.do";
		var params = "user_email2="+$("#user_email2").val();
		var msg = "이메일 인증이 완료 되었습니다.";
		email(url,params,msg);
	});
});
	</script>
 <script>
  $(function(){ 
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
	<div class="w-1/3 m-0 mb-4 m-auto mt-8"><p class="font-bold text-2xl">Register a new account</p></div>
	<!-- 회원가입 폼  -->
	
	
	<form method="post" action="/lms/registerOk" class="m-0 m-auto w-full max-w-xl">
	  <div class="flex flex-wrap -mx-3 mb-6">
	    <div class="w-10/12 px-3">
	      <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="username">
	        Name
	      </label>
	      <input id="username" name="student_name_ko" class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200   py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white focus:border-brand-500" id="grid-password" type="text">
	    </div>
	  </div>
	  <div class="flex flex-wrap -mx-3 mb-6">
	    <div class="w-10/12 px-3">
	      <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="userId">
	        ID
	      </label>
	      <div class="flex">
	      	<input id="userId" name="userid" class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200   py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white focus:border-brand-500" id="grid-password" type="text">
	      	<input type="hidden" id="idStatus" value="N"/><!-- 아이디 중복검사 여부 설정 -->
	      <div class="ml-2">
	      	<input type="button" id="userIdChk" class="focus:outline-none cursor-pointer py-3 px-4 bg-brand-500 font-bold focus:bg-brand-700" value="중복체크"/>
	      </div>
	      </div>
	    </div>
	  </div>
	  <div class="flex flex-wrap -mx-3 mb-6">
	    <div class="w-10/12 px-3">
	      <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="userPw">
	        Password
	      </label>
	      <input id="userPw" name="student_pw" class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200   py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white focus:border-brand-500"  type="password" placeholder="******************">
	    </div>
	  </div> 
	  <div class="flex flex-wrap -mx-3 mb-6">
	    <div class="w-10/12 px-3">
	      <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="userPwChk">
	        PasswordCheck
	      </label>
	      <input id="userPwChk"  class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200   py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white focus:border-brand-500"  type="password" placeholder="******************">
	    </div>
	  </div>
	  <div id="userEmailText" style="display:block" class="flex flex-wrap -mx-3 mb-6">
	    <div class="w-10/12 px-3">
	      <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="userEmail">
	      	Email
	      </label>
	      <div class="flex">
	      <input id="userEmail" name="useremail" class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200   py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white focus:border-brand-500" type="text">
	      <div class="ml-2">
     		<input type="button" id="emailCodeBtn" class="focus:outline-none cursor-pointer py-3 px-4 bg-brand-500 font-bold focus:bg-brand-700" value="인증번호받기"/>
     	  </div>
     	  </div>
	    </div>
	  </div>
	  <div id="userEmailCodeText" style="display:none" class="flex flex-wrap -mx-3 mb-6">
	    <div class="w-10/12 px-3">
	      <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="userEmail">
	      	Email Code
	      </label>
	      <div class="flex">
	      <input id="userEmailCode" name="useremailCode" class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200   py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white focus:border-brand-500" type="text">
	      <div class="ml-2">
     		<input type="button" id="emailCodeCompleteBtn" class="focus:outline-none cursor-pointer py-3 px-4 bg-brand-500 font-bold focus:bg-brand-700" value="인증번호확인"/>
     	  </div>
     	  </div>
	    </div>
	  </div>
	  <div class="flex flex-wrap -mx-3 mb-6">
	    <div class="w-10/12 px-3">
	      <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="userTel">
	       Tel
	      </label>
	      <input id="userTel" name="usertel" class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200   py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white focus:border-brand-500"  type="text" >
	    </div>
	  </div>
	  <div class="w-10/12 h-20 mt-8" >
		<input type="submit" id="registerBtn" class="w-full focus:outline-none cursor-pointer py-3 px-5 bg-brand-500 font-bold focus:bg-brand-700" value="회원가입"/>
	  </div>
	  <div class="w-full  h-16">
		<span class="text-gray-500">Are you a member?</span>&nbsp;&nbsp;&nbsp;<a href="#" id="login-ico" data-target="#loginModal" class="login-ico inline-block">Login Now</a>
	  </div>
	</form>
</div>