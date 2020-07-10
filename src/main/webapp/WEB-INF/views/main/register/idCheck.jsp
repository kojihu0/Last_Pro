<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<style>
   footer {display:none}
   #site-header{display:none}
</style>
<script>
$(function(){
	$("#idSet").click(function(){
		opener.document.getElementById("idStatus").value="Y";
		self.close();
	});
	$("#check").click(function(){
		window.close();
	});
});
</script>
<body>
<div class="idCheck_container" id="idCheckContainer">
<h1 class="text-center font-bold p-2">아이디 중복체크</h1>
<div class="m-0 m-auto text-center p-2">
	<span id="idSearch" class="text-lg text-center text-brand-500">
	<input type="text" class="text-center m-0 m-auto w-4/12 border-brand-500 border" value="${userid}"/><br/>
	</span>
</div>

	<c:if test="${cnt == 0 }">
	<div class="m-0 m-auto text-center"><span class="text-xl"> 사용 가능 한 아이디 입니다.</span> </div>
		<script>
		   document.getElementById("userId").value =${userid};
		</script>
		<div class="m-0 m-auto text-center"><input type="button"class="mt-2 p-1 bg-brand-500"value="사용하기" id="idSet" onClick='window.close()'/></div>
 	</c:if>
 	
	<c:if test="${cnt==1 }">
		<div class="m-0 m-auto text-center"><span class="text-xl text-center">사용 불가능한 아이디 입니다.</span></div> 
		<script>
		   document.getElementById("userId").value ="";
		</script>
		<div class="m-0 m-auto text-center"><input type="button" class="mt-2 p-1 bg-brand-500" value="닫기" id="idSet" onClick='window.close()'/></div>
	</c:if>
</div>
</body>