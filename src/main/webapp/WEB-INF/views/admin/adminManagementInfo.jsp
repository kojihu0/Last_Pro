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


<title>business diary</title> 

    <link rel="stylesheet" href="<%=projectPath %>/css/tailwind.css" type="text/css"/>
	<link rel="stylesheet" href="<%=projectPath %>/css/adminCss.css" type="text/css"/>
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
</head>
<body>
		 <div class="w-full max-w-screen-xl my-0 mx-auto items-center justify-between flex-wrap px-8 xl:px-0">
			
			<div class="text-xl p-3 mx-16 ">  
				<i class="xi-school"></i>&nbsp;강사 업무 일지
			</div>
			
			<div class="p-3 flex bg-gray-600 border-b-4 border-gray-400 w-full">
				<form>
					<select class="border flex-initial mx-2">
						<option>::강사::</option>
						<option>정진범</option>
						<option>김영권</option>
						<option>이현지</option>
						<option>이학송</option>
						<option>김춘식</option>
					</select>
				</form>
				<form>
					<select class="border flex-initial mx-2">   
						<option>::과목::</option>
						<option>JAVA</option>
						<option>javascript</option>
						<option>Html/CSS</option>
						<option>Spring</option>	
					</select>
				</form>
				<form>
					<select class="border flex-initial mx-2"> 
						<option>::승인여부::</option>
						<option>결제 완료</option>
						<option>결제 대기</option>	
					</select>
				</form>
			</div>
			<!-- 테이블 -->
			<div class="p-3 bg-info-100">  	
				<table class="border my-0 w-full"> 
					<thead>
						<tr> 
							<th class="bg-info-300 px-4 py-2 text-center">번호</th>
							<th class="bg-info-300 px-4 py-2 text-center">강의 일자</th>
							<th class="bg-info-300 px-64 py-2 text-center">클래스</th>
							<th class="bg-info-300 px-4 py-2 text-center">담당자</th>
							<th class="bg-info-300 px-4 py-2 text-center">결제</th>
							<th class="bg-info-300 px-32 py-2 text-center">한 줄 의견</th>		
						</tr>
					</thead> 
					<tbody> 
						
						<tr>
							<td class="border bg-white px-4 py-2 text-center"><a href="<%=projectPath%>/admin/adminManageView">1</a></td>
							<td class="border bg-white px-4 py-2 text-center"><a href="<%=projectPath%>/admin/adminManageView">06.11</a></td>
							<td class="border bg-white px-64 py-2 text-center"><a href="<%=projectPath%>/admin/adminManageView">기초 자바 웹 프로그래밍</a></td>
							<td class="border bg-white px-4 py-2 text-center"><a href="<%=projectPath%>/admin/adminManageView">정진범</a></td>
							<td class="border bg-white px-4 py-2 text-center"><a href="<%=projectPath%>/admin/adminManageView">미승인</a></td>
							<td class="border bg-white px-32 py-2 text-center"><a href="<%=projectPath%>/admin/adminManageView">수고</a></td>	 	
						</tr>
						
					</tbody>
				</table>
				<div class="p-3"></div>
				<!-- 테이블 end -->
				<div class="text-right">
					<button class="bg-gray-500 border-black border hover:bg-blue-700 font-bold py-2 px-4 rounded-full"><a href="<%=projectPath%>/admin/adminManageRegi">등록</a></button>		
				</div>
			</div>
		</div>
</body>
</html>