<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TeacherList</title>

</head>
<body>


	
	<div class="w-full max-w-screen-xl my-0 mx-auto items-center justify-between flex-wrap px-8 xl:px-0">
		
		
		<div class="text-xl p-6 mx-16 ">  
			<i class="xi-school"></i>&nbsp;직원현황
		</div>
		
		<div class="p-3 searchDiv text-right bg-gray-200 border-solid border-4 border-gray-600 flex">  
			<select class="mx-2">
				<option>::직급::</option>
				<option>관리자</option>
				<option>강사</option>
				<option>임시강사</option>
			</select>
			<select class="mx-2">
				<option>::Class::</option>
				<option>A</option>
				<option>B</option>
				<option>C</option>
				<option>D</option>
				<option>E</option>
			</select> 
			<input type="text" name="search" placeholder="검색어 입력" class="mx-2 border border-black"/>&nbsp;<a href="#"><i class="xi-search"></i></a>
		</div>
			
		<div class="p-3 bg-info-100">
			<table class="w-full">
				<thead>
					<tr>   
						<th class="border-b-4 border-info-700 bg-info-300 w-16">번호</th>
						<th class="border-b-4 border-info-700 bg-info-300 bg-info-300 w-32">이름</th>
						<th class="border-b-4 border-info-700 bg-info-300 bg-info-300 w-32">직급</th>
						<th class="border-b-4 border-info-700 bg-info-300 bg-info-300 w-64">담당</th> 
						<th class="border-b-4 border-info-700 bg-info-300 bg-info-300 w-32">구분</th>
						<th class="border-b-4 border-info-700 bg-info-300 bg-info-300 w-32">ID</th>
						<th class="border-b-4 border-info-700 bg-info-300 bg-info-300 w-32">권한</th> 
						<th class="border-b-4 border-info-700 bg-info-300 bg-info-300 w-32">비고</th>  
						<th class="border-b-4 border-info-700 bg-info-300 bg-info-300 w-32">수정</th> 
					</tr>
				</thead> 
				<tbody>
					<c:forEach var="vo" items="${list }">
						<tr class="bg-white">
							<td  class="border text-center p-2">${vo.employee_no}</td>
							<td  class="border text-center p-2">${vo.employee_name }</td>
							<td  class="border text-center p-2">${vo.employee_rank }</td>
							<td  class="border text-center p-2">${vo.employee_class }</td>
							<td  class="border text-center p-2">직원</td>
							<td  class="border text-center p-2">${vo.admin_id }</td>
							<td  class="border text-center p-2">${vo.employee_authority }</td> 
							<td  class="border text-center p-2">${vo.employee_state }</td>     
							<td  class="border text-center p-2"><a href="<%=projectPath %>/admin/adminTeacherEdit?employee_no=${vo.employee_no}&employee_name=${vo.employee_name }<c:if test="${vo.employee_class != null}">&employee_class=${vo.employee_class }</c:if><c:if test="${vo.employee_state != null}">&employee_state=${vo.employee_state }</c:if><c:if test="${vo.employee_authority != null }">&employee_authority=${vo.employee_authority }</c:if><c:if test="${vo.employee_rank != null }">&employee_rank=${vo.employee_rank }</c:if><c:if test="${vo.admin_id != null}">&admin_id=${vo.admin_id }</c:if>" class="bg-info-200 hover:bg-blue-700 border border-black font-bold  px-4 rounded">수정</a></td>
						</tr> 
					</c:forEach> 
				</tbody>
			</table>
		</div>
		
		<div class="p-3 text-right">  
			<a class="bg-info-200 hover:bg-blue-700 border border-black font-bold py-2 px-4 rounded" href="<%=projectPath%>/admin/adminTeacherRegi">직원등록</a>
		</div>	
		
		
	</div>
	




</body>
</html>