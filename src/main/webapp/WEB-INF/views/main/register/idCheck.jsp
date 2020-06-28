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
<h1>아이디 중복체크</h1>
<span id="idSearch" class="font-xl text-brand-500">${userid}</span>는
	<c:if test="${cnt == 0 }">
	<span class="font-xl">사용가능 한 아이디 입니다</span> 
		<script>
		   alert("사용가능한 아이디입니다.");
		   document.getElementById("userId").value =${userid};
		</script>
		 
		<input type="button" value="아이디 사용하기" id="idSet" onClick='window.close()'/>
 	</c:if>
 	
	<c:if test="${cnt==1 }">
	<span class="font-xl">사용 불가능한 아이디 입니다</span> 
		<script>
		   alert("사용불가능 아이디입니다.");
		   document.getElementById("userId").value ="";
		</script>
		<input type="button" class="text-brand-500" value="닫기" id="idSet" onClick='window.close()'/>
	</c:if>
</div>
</body>