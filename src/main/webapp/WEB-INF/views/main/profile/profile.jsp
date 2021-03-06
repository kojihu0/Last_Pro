<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style type="text/css">
	.img_wrap{
		width:150px;
		
		height:150px;
	}
	.img_wrap img{
	max-width:100%;
	max-height:100%;
	} 
	
</style>
<script>

$(function(){
	function update(url, params, msg, input){
		$.ajax({
			url : url,
			data : params,
			type : "POST",
			success : function(result){
				console.log(input)
				if(result=="ok"){
					alert(msg);
					if(input=="password"){
						window.location.assign("<%=ctx%>/logout");
					}
					else{
						window.location.assign("<%=ctx%>/profile");
					}
				}else if(result=="no"){
					alert("정보 변경이 정상적으로 처리되지 못했습니다.\n다시 시도해주세요.");
				}
			},	
			error : function(e){
				console.log("정보 업데이트 에러");
			}
		});
	}
	$(document).on("click","#generalBtn",function(e){//수정할 정보 보내기
		e.preventDefault();
		var url = "<%=ctx%>/profileUpdate";
		var params = $("#profileUpdate").serialize();
		var msg = "정상적으로 정보수정이 완료되었습니다.";
		update(url,params,msg);
	});
	
	$(document).on("click","#pwUpdateBtn",function(e){//수정할 패스워드 보내기
		e.preventDefault();
		var url = "<%=ctx%>/profilePasswordUpdate";
		var params = "student_pw=" + $("#newPwd").val();
		var msg = "정상적으로 패스워드 변경이 완료되었습니다.\r\n새로운 패스워드로 로그인해주세요.";
		update(url,params,msg,"password");
	});
});
</script>
<script>
function preview(input, target) {
  if(input.files && input.files[0]){
    var fileName= input.files[0].name;
    var ext=fileName.substr(fileName.length-3, fileName.length);
    var isCheck=false; 
        if(ext.toLowerCase()=='jpg' || ext.toLowerCase()=='gif' || ext.toLowerCase()=='png'){
        isCheck=true;               
    }
    if(isCheck==false){
       alert("이미지 파일 아님");
       jQuery(input).val("");
        return;
    }
    var reader = new FileReader();
    reader.readAsDataURL(input.files[0]);          
    reader.onload = function(e) {
      jQuery(target).attr('src', e.target.result);
    }
  }
}
</script>
 <script>
  $(function(){ 
	$("#generalDelBtn").click(function(){
		if (confirm("회원탈퇴를 진행 하시겠습니까?") == true){
		var url = "<%=ctx%>/registerDelOk"
			$.ajax({
				url : url,
				success : function(result){
					if(result=='yes'){
						alert("회원탈퇴가  완료 되었습니다.");
						history.go(0);
					}else{
						alert("회원탈퇴 요청 중 에러가 발생 하였습니다 \n 다시 시도해주세요.");
						
					}
				}, error : function(){
					console.log("회원탈퇴 에러 ...");
				}
			});  
	 }else{
	     return false;
	 }
	}) 
});
 </script>
<div id="mainBanner" style="background-image:url('<%=ctx%>/img/top-banner.jpg')" class="bg-cover mb-4 w-full">
	<div class="container my-0 mx-auto">
		<h1 class="border-l-4 border-brand-600 text-5xl text-white roboto-slab font-bold">&nbsp;&nbsp;PROFILE</h1>
	</div>
</div>
<div id="profileMenu" class="my-0 mx-auto w-full max-w-screen-xl">
	<span class="text-gray-500"><a href="<%=ctx%>/">Home</a>&nbsp;&nbsp;<i class="xi-angle-right"></i>&nbsp;&nbsp;Profile</span>
	<div id="hr" class="my-4 border-t border-solid"></div>
	<div class="flex my-12">
		<div class="lg:w-1/5 flex-initial">
		<c:if test="${student_img != null }">
			<img src="<%=ctx%>/img/${student_img}">
		</c:if >
		<c:if test="${student_img == null }">
			<img src="<%=ctx%>/img/user-avatar.png">
		</c:if>
			<div id="hr" class="my-8 border-t border-solid"></div>
			<h1 class="text-4xl font-bold text-center">${student_name_ko}</h1>
			<div id="hr" class="m-0 m-auto bg-black border-black my-4 border-t border-solid w-4 border-2"></div>
			<h4 class="text-gray-500 text-center mb-4">${student_info}</h4>
		</div>
		<div class="lg:w-4/5 w-full mt-4 pl-8">
			<ul class="flex roboto-slab -mb-px">
			  <li class="mr-1">
			    <a class="bg-whitehover:border-brand-500  border-b border-l border-t border-r  py-3 px-4 text-gray-900 hover:text-brand-500 font-semibold" href="<%=ctx%>/courseOfStudy">Course</a>
			  </li> 
			  <li class="mr-1">
			    <a class="bg-white hover:border-brand-500 border-b border-l border-t border-r py-3 px-4 text-gray-900 hover:text-brand-500 font-semibold" href="<%=ctx%>/completionCourse">Completion Course</a>
			  </li>
			  <li class="mr-1">
			   	 <a class="bg-white hover:border-brand-500 border-b border-l border-t border-r py-3 px-4 text-gray-900 hover:text-brand-500 font-semibold" href="<%=ctx%>/inCompletionCourse">Incomplete Course</a>
			  </li>
			  <li class="mr-1">
			    <a class="bg-white hover:border-brand-500 border-b border-l border-t border-r py-3 px-4 text-gray-900 hover:text-brand-500 font-semibold" href="<%=ctx%>/schedule">Schedule</a>
			  </li>
			  <li class="mr-1">
			    <a class="bg-white border-brand-500 border-b border-l border-t-4 border-r py-3 px-4  text-brand-500  font-semibold" href="<%=ctx%>/profile">Profile</a>
			  </li>
			   <li class="mr-1">
			    <a class="bg-white hover:border-brand-500 border-b border-l border-t border-r py-3 px-4 text-gray-900 hover:text-brand-500 font-semibold" href="<%=ctx%>/wishList">WishList</a>
			  </li>
			  <li class="mr-1">
				 <a class="bg-white hover:border-brand-500 border-b border-l border-t border-r py-3 px-4 text-gray-900 hover:text-brand-500 font-semibold" href="<%=ctx%>/paymentHistory">PaymentHistory</a>
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
				
			<form id="profileUpdate" style="display:block">
				<div class="mb-4">
					<p class="font-bold mb-2">이름</p>
					<p><input type="text" name="student_name_ko" id="firstName" class='focus:outline-none bg-gray-200 py-2 px-3' value="${student_name_ko}"/></p>
				</div>
				<div>
					<p class="text-black font-bold mb-2">자기소개</p>
					<textarea id="student_info" name="student_info" class="focus:outline-none bg-gray-200 py-2 px-3" rows="8" cols="50">${student_info}</textarea>
					<p class="text-gray-500 text-sm">Share a little biographical information to fill out your profile. This may be shown publicly.</p>
				</div>
				<input value="변경하기" id="generalBtn" type="button" class="cursor-pointer focus:outline-none mt-5 mb-5 bg-brand-500 hover:bg-brand-700  text-black font-bold py-3 px-5 ">
				<input value="회원탈퇴" id="generalDelBtn" type="button" class="cursor-pointer focus:outline-none mt-5 mb-5 bg-brand-500 hover:bg-brand-700  text-black font-bold py-3 px-5 ">
			</form>
			
			<!--이미지 업로드   -->
			<form method="post" enctype="multipart/form-data" action="<%=ctx%>/profileImgUpdate" id="imgUpload" style="display:none">
				<div class='border-solid border-gray-500 border'>
					<div class="img_wrap my-4 ml-4 bg-gray-500">
						<img src="" id="img01"/>
					</div>
					<input onchange="preview(this, $('#img01'));"id="input_img" name="student_img" type="file" value="Upload" class=" text-gray-800 my-4 ml-4 bg-gray-300 hover:bg-gray-400 text-gray-800 font-bold py-2 px-4  inline-flex items-center">
				</div>	
				<input type="submit" value="프로필 사진 등록" id="imgUploadBtn" class="cursor-pointer focus:outline-none my-5 py-3 px-5 bg-brand-500 text-black font-bold">				
			</form>
			
			<form id="passwordUpdate"style="display:none">
				<div class="mt-3">
					<p class="font-bold">New Password</p>
					<p><input type="password" id="newPwd" name="student_pw" class="focus:outline-none my-4 bg-gray-200 py-2 px-3"></p>				
				</div>
				<div class="text-brand-500 text-sm" >비밀번호는 영문자,숫자,특수문자를 포함한 8자리 이상</div>
				<div class="mt-3">
					<p class="font-bold">Confirmation Password</p>
					<p><input type="password" id="newPwdChk" class="focus:outline-none my-4 bg-gray-200 py-2 px-3"></p>
				</div>
				<div class="text-brand-500 text-sm" id="mypagePw">비밀번호가 일치합니다.</div>
      	  		<div class="text-danger-500 text-sm" id="mypagePwChk">비밀번호가 일치하지 않습니다.</div>
				<input type="submit" id="pwUpdateBtn" value="변경하기" class="cursor-pointer focus:outline-none my-4 py-3 px-5 bg-brand-500 text-black font-bold">
			</form>
		</div>
	</div>
</div>