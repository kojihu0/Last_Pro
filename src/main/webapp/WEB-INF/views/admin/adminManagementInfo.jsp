<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


<title>business diary</title> 

  
</head>
<body>
		 <div class="w-full max-w-screen-xl my-0 mx-auto items-center justify-between flex-wrap px-8 xl:px-0">
			
			<div class="text-xl p-3 mx-16 ">  
				<i class="xi-school"></i>&nbsp;강사 업무 일지
			</div>
			
			<div class="border-solid border-4 border-gray-600 p-3 bg-gray-200 w-full flex">
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
							<th class="bg-info-300 px-32 py-2 text-center">담당 분야</th>
							<th class="bg-info-300 px-4 py-2 text-center">담당자</th>
							<th class="bg-info-300 px-4 py-2 text-center">결제</th>
							<th class="bg-info-300 px-64 py-2 text-center">건의사항</th>		
						</tr>
					</thead>  
					<tbody>  
					<c:forEach var="vo" items="${resultList}">   
						<tr class="bg-white hover:bg-gray-200"> 
							<td class="border  text-center p-2"><a href="<%=projectPath%>/admin/adminManageView?admin_manageinfo_no=${vo.admin_manageinfo_no}">${vo.admin_manageinfo_no} </a></td>
							<td class="border  text-center p-2"><a href="<%=projectPath%>/admin/adminManageView?admin_manageinfo_no=${vo.admin_manageinfo_no}">${vo.admin_manageinfo_date} </a></td>
							<td class="border  text-center p-2"><a href="<%=projectPath%>/admin/adminManageView?admin_manageinfo_no=${vo.admin_manageinfo_no}">${vo.admin_manageinfo_subject} </a></td>
							<td class="border  text-center p-2"><a href="<%=projectPath%>/admin/adminManageView?admin_manageinfo_no=${vo.admin_manageinfo_no}">${vo.employee_name} </a></td>
							
							
							<c:if test="${vo.admin_manageinfo_ok == 0}">
								<td class="border  text-center p-2"><a href="<%=projectPath%>/admin/adminManageView?admin_manageinfo_no=${vo.admin_manageinfo_no}">미승인</a></td>		
							</c:if>
							<c:if test="${vo.admin_manageinfo_ok == 1}">  
								<td class="border  text-center p-2"><a href="<%=projectPath%>/admin/adminManageView?admin_manageinfo_no=${vo.admin_manageinfo_no}">승인</a></td>	
							</c:if>
						
							<td class="border  text-center p-2"><a href="<%=projectPath%>/admin/adminManageView?admin_manageinfo_no=${vo.admin_manageinfo_no}">${vo.admin_manageinfo_opinion} </a></td>	 	
						</tr> 
					</c:forEach>	
						
					</tbody>
				</table>
				<div class="p-3"></div>
				<!-- 테이블 end -->
				<div class="text-right">
					<a href="<%=projectPath%>/admin/adminManageRegi" class="bg-info-200 border-solid border-2 border-gray-600 rounded py-2 px-4">등록</a>
				</div>
			</div>
		</div>
</body>
</html>