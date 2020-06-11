<%@ page language="java" contentType="text/html;charset=UTF-8" %>
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
		 <div class="w-full px-4 md:px-0 md:mt-8 mb-16 auto text-grey-darkest leading-normal">
			<div class="text-xl p-3">
				<i class="xi-school"></i>&nbsp;강사 업무 일지
			</div>
			
			<div class="p-3">
				<select class="border">
					<option>::강사::</option>
					<option>정진범</option>
					<option>김영권</option>
					<option>이현지</option>
					<option>이학송</option>
					<option>김춘식</option>
				</select>
				<select class="border"> 
					<option>::과목::</option>
					<option>JAVA</option>
					<option>javascript</option>
					<option>Html/CSS</option>
					<option>Spring</option>	
				</select>
				
					<select class="border"> 
					<option>::승인여부::</option>
					<option>결제 완료</option>
					<option>결제 대기</option>	
				</select>
			</div>
			
			
			
			<!-- 테이블 -->
			<div class="p-3">
				<table class="border">
					<thead>
						<tr>
							<th class="bg-info-300 px-4 py-2 text-center">번호</th>
							<th class="bg-info-300 px-4 py-2 text-center">강의 일자</th>
							<th class="bg-info-300 px-32 py-2 text-center">클래스</th>
							<th class="bg-info-300 px-4 py-2 text-center">담당자</th>
							<th class="bg-info-300 px-4 py-2 text-center">결제</th>
							<th class="bg-info-300 px-32 py-2 text-center">한 줄 의견</th>		
						</tr>
					</thead>
					<tbody> 
						<tr>
							<td class="border px-4 py-2 text-center">1</td>
							<td class="border px-4 py-2 text-center">06.11</td>
							<td class="border px-32 py-2 text-center">기초 자바 웹 프로그래밍</td>
							<td class="border px-4 py-2 text-center">정진범</td>
							<td class="border px-4 py-2 text-center">미승인</td>
							<td class="border px-32 py-2 text-center">수고</td>		
						</tr>
					</tbody>
				</table>
				<!-- 테이블 end -->
			</div>
		</div>
</body>
</html>