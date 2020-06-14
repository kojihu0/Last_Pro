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
    
    <link rel="stylesheet" href="<%=projectPath %>/css/tailwind.css" type="text/css"/>
	<link rel="stylesheet" href="<%=projectPath %>/css/adminCss.css" type="text/css"/>
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
	
</head>
<body>


	<div class="w-full max-w-screen-xl my-0 mx-auto items-center justify-between flex-wrap px-8 xl:px-0">
			<div class="text-xl p-3 mx-16 ">  
				<i class="xi-school"></i>&nbsp;강좌목록
			</div>
			
			<div class="p-3 searchDiv text-right bg-gray-600 border-b-4 border-gray-400 flex">  
				<select class="mx-2">
					<option selected="selected">::연도::</option>
					<c:forEach var="i" begin="2020" end="2050">
						<option>${i}</option>
					</c:forEach>
						
				</select>
				<select class="mx-2">
					<option selected="selected">::Class::</option>
					<option>JAVA</option>
					<option>javascript</option>
					<option>Spring</option>
				</select> 
				<input type="text" name="search" placeholder="검색어 입력" class="mx-2 border border-black"/>&nbsp;<a href="#"><i class="xi-search"></i></a>
			</div>
			
				
			<div class="p-3 bg-info-100">
				<table class="w-full">
					<thead>
						<tr>   
							<th rowspan="2" class="border-b-4 border-info-700 bg-info-300 w-16">번호</th>
							<th rowspan="2" class="border-b-4 border-info-700 bg-info-300 bg-info-300 w-32">개강일</th>
							<th rowspan="2" class="border-b-4 border-info-700 bg-info-300 bg-info-300 w-64">강좌/과정</th>
							<th rowspan="2" class="border-b-4 border-info-700 bg-info-300 bg-info-300 w-32">수강료</th> 
							<th rowspan="2" class="border-b-4 border-info-700 bg-info-300 bg-info-300 w-32">상태</th>
							<th rowspan="2" class="border-b-4 border-info-700 bg-info-300 bg-info-300 w-32">관리</th>
							<th colspan="3" class="border-b-4 border-info-700 bg-info-300 bg-info-300 w-32">상세정보</th> 
						</tr>
						<tr>   
							<th class="border-4 border-info-700 bg-info-300 bg-info-300 w-32">요일</th>
							<th class="border-4 border-info-700 bg-info-300 bg-info-300 w-32">시간</th>
							<th class="border-4 border-info-700 bg-info-300 bg-info-300 w-32">장소</th> 
						</tr>
					</thead> 
					<tbody>
						<tr>
							<th class="border border-black bg-white w-16">1</th>
							<th class="border border-black bg-white  w-32">2020.06.31</th>
							<th class="border border-black bg-white  w-64">JAVA</th>
							<th class="border border-black bg-white  w-32">360000</th> 
							<th class="border border-black bg-white  w-32">개강준비</th>
							<th class="border border-black bg-white  w-32">
								<a class="bg-gray-500 hover:bg-blue-700 border border-black text-x  rounded-full" href="<%=projectPath%>/admin/adminCourseEdit">수정</a>
								<a class="bg-gray-500 hover:bg-blue-700 border border-black text-x  rounded-full"  href="<%=projectPath%>/admin/adminCourseDel">삭제</a>
							</th>
							<th class="border border-black bg-white  w-32">월 수 금</th>
							<th class="border border-black bg-white  w-32">10:00~13:00</th>
							<th class="border border-black bg-white  w-32">본관 : A301</th>
						</tr>
					</tbody>
				</table>
			</div>
			
			<div class="text-right p-3">
				<a class="bg-gray-500 border-black border hover:bg-cta-800 font-bold py-2 px-4 rounded-full" href="<%=projectPath%>/admin/adminCourseRegi">등록하기</a>
			</div>
	</div>

</body>
</html>