<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %> 
<%
	String projectPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<script src="/lms/js/jquery-3.4.1.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	
	
	<script src="<%=projectPath %>/ckeditor/ckeditor.js"></script>
	
	<link rel="stylesheet" href="<%=projectPath %>/css/tailwind.css" type="text/css"/>
	<link rel="stylesheet" href="<%=projectPath %>/css/adminCss.css" type="text/css"/>
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">

	 


</head>
<body>


	<div class="w-full max-w-screen-xl my-0 mx-auto items-center justify-between flex-wrap px-8 xl:px-0">
		<div class="text-xl p-3 mx-16 ">  
			<i class="xi-school"></i>&nbsp;사내 공지사항 작성
		</div>
	
		<div class="p-3 text-right"> 
			<button class="bg-gray-500 hover:bg-blue-700 border border-black font-bold py-2 px-4 rounded-full"><a href="<%=projectPath%>/admin/adminNotice">목록으로</a></button>
		</div>
		
		
		
		<div class="p-3 bg-gray-100 tableDiv border border-cta-900">
		<form>
			<table class=" my-0 mx-auto"> 
				<thead>
					<tr>
						<th class="bg-info-300 w-32 border border-black">작성자</th>
						<th class="p-2 text-left border border-black"><input  style="width:400px" class="border border-black" type="text" name="noticeWriteSubject"/></th>
					</tr>
					<tr>
						<th class="bg-info-300 w-32 border border-black">제목</th>
						<th class="p-2 text-left border border-black"><input  style="width:400px" class="border border-black" type="text" name="noticeWriteSubject"/></th>
					</tr>
					
				</thead>
				<tbody>
					<tr>
						<th class="bg-info-300 w-32 border border-black">내용</th>  
						<td class="border border-black"><textarea id="noticeWriteContent" name="noticeWriteContent" class="appearance-none border border-gray rounded w-full py-2 px-3 leading-tight focus:outline-none focus:shadow-outline"></textarea></td>
					</tr>
				</tbody>
				<tfoot>
					<tr> 
						<th class="bg-info-300 w-16 border border-black">비밀번호</th>
						<td class="p-2 border border-black"><input  style="width:400px" class="border border-black" type="password" name="noticeWritePw"></td>
					</tr>
				</tfoot>
			</table>
		
				<div class="text-right">  
					<input type="submit" value="등록" class="bg-gray-500 border-black border hover:bg-cta-800 font-bold py-2 px-4 rounded-full"/>
					<a href="<%=projectPath %>/admin/adminNotice" class="bg-gray-500 border-black border hover:bg-cta-800 font-bold py-2 px-4 rounded-full">등록취소</a> 
				</div> 
		
		</form>
		
		</div>
		
		
		
		
		
	</div>









<script type="text/javascript">
$(function(){
	CKEDITOR.replace('noticeWriteContent',
					 {height: 350 })
});

</script>

</body>
</html>