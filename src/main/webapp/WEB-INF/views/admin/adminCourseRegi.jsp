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
				<i class="xi-school"></i>&nbsp;강좌 등록
			</div>
			
	
		<div class="p-3 flex justify-center">
			<form method="post" action="">
				<table>
					<thead>
						<tr>
							<th class="bg-info-300 p-3 w-32">과  정</th>
							<td class="p-3"><input class="border border-black" type="text" name="courseName" /></td>
						</tr>
						<tr>
							<th class="bg-info-300 p-3 w-32">개강일</th>
							<td class="p-3" ><input type="date" name="courseStart"/></td>
						</tr>
						<tr>
							<th class="bg-info-300 p-3 w-32">담당</th>
							<td class="p-3"><input type="text" name="teacherNmae" placeholder="김아무개"/></td>
						</tr>
						<tr>
							<th class="bg-info-300 p-3 w-32">수강료</th>
							<td class="p-3"><input type="text" name="coursePrice" placeholder="360000"/></td>
						</tr>
						<tr>
							<th class="bg-info-300 p-3 w-32">접수 기간</th>
							<td class="p-3">
								<input type="date" name="startRegiDate"/>&nbsp;~&nbsp;<input type="date" name="endRegiDate"/>
							</td>
						</tr>
						<tr>
							<th class="bg-info-300 p-3 w-32">수강기간</th>
							<td class="p-3">
								<input type="date" name="startCourseDate"/>&nbsp;~&nbsp;<input type="date" name="endCourseDate"/>
							</td>
						</tr>
						<tr>
							<th class="bg-info-300 p-3 w-32">상태</th>
							<td class="p-3">
								<input type="radio" name="courseState" value="개강"/>&nbsp;개 강&nbsp;
								<input type="radio" name="courseState" value="대기"/>&nbsp;대 기&nbsp;
								<input type="radio" name="courseState" value="폐강"/>&nbsp;폐 강&nbsp;
							</td>
						</tr>
						<tr>
							<th class="bg-info-300 p-3 w-32">강좌개요</th> 
							<td class="p-3">
								<textarea class="border border-black" rows="7" cols="100" style="resize: none;" name="courseStory"></textarea>
							</td>
						</tr>
						<tr>
							<th class="bg-info-300 p-3 w-32">강좌소개</th>
							<td class="p-3"> 
								<textarea rows="" cols="" id="courseRegiContent" class="courseRegiContent"></textarea>	
							</td>
						</tr>
						<tr>
							<th class="bg-info-300 p-3 w-32">사용교재</th>
							<td class="p-3">
								<input class="border border-black" type="text" name="courseTextbook"/>
							</td>
						</tr>
						<tr>
							<th colspan="2" class="p-3 text-right">
								<input class="bg-gray-500 border-black border hover:bg-cta-800 font-bold py-2 px-4 rounded-full" type="submit" value="등록"/>
								<a class="bg-gray-500 border-black border hover:bg-cta-800 font-bold py-2 px-4 rounded-full" href="<%=projectPath%>/admin/adminCourseList">돌아가기</a>
							</th>
							<th>
							</th>
						</tr>
					</thead>
				</table>
			</form>
		</div>
		</div>

<script>
	$(function(){
		CKEDITOR.replace('courseRegiContent', {height:350})
	});
</script>

</body>
</html>