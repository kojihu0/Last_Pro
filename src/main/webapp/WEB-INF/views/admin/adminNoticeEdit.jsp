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
<title>noticeEdit</title>

 
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
				<i class="xi-school"></i>&nbsp;사내공지
			</div>
	<form method="post" action="">
		<div class="p-3">
				<table class="w-full">
					<thead>
						<tr>
							<th class="p-3 text-xl border-b-4 border-info-300"><input class="border-4 border-info-300 text-center" type="text" name="noticeSubject" placeholder="글 제목" size="40"/></th>
						<tr>
						<tr>
							<td>
								<div class="flex justify-end border-b-4 border-info-300">
									<div class="p-3"><i class="xi-gratipay"></i>&nbsp;작성자 : 정아무개</div>
									<div class="p-3"><i class="xi-gratipay"></i>&nbsp;작성일자 : 2020.06.11</div>
									<div class="p-3"><i class="xi-gratipay"></i>&nbsp;조회수 : 10</div>  
								</div>
							</td>
						</tr>
						
						<tr>
							<td class="border border-b-4 border-info-300">
								<div  style="min-height:400px">
									<textarea id="noticEditContent" name="noticEditContent" class="appearance-none border border-gray rounded w-full py-2 px-3 leading-tight focus:outline-none focus:shadow-outline"></textarea>
								</div>	
							<td>
						<tr>
					</thead> 
				</table>
			</div>
			<div class="p-3 text-right"> 
				<input type="submit" value="수정" class="bg-info-200 border border-black font-bold py-2 px-4 rounded"/>
				<a href="<%=projectPath%>/admin/adminNotice"  class="bg-info-200 border border-black font-bold py-2 px-4 rounded">수정 취소</a>
			</div>
		</form>		
	</div>
		<!-- 전체 틀 끝 -->	


<script type="text/javascript">
$(function(){
	CKEDITOR.replace('noticEditContent',
					 {height: 400 })
});

</script>


</body>
</html>