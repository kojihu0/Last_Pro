<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
	<div class="w-full max-w-screen-xl my-0 mx-auto items-center justify-between flex-wrap px-8 xl:px-0">
		<div class="text-xl p-6">  
			<i class="xi-school"></i>&nbsp;강사 업무 일지
		</div>
		<div class="p-3 mb-4 w-full flex bg-gray-300 items-center flex">
			<div class="inline-block relative mx-2">
				<select name="employee_no" onChange="location.href='<%=projectPath %>/admin/adminManagementInfo?admin_manageinfo_ok=${selectOk}&admin_manageinfo_subject=${selectSubject }&employee_no='+ this.value" class="appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline">
					<option <c:if test="${i.employee_no == -1}">selected</c:if> value="0">::강사::</option>
					<c:forEach var="i" items="${nameList}">     
						<option value="${i.employee_no}" <c:if test="${i.employee_no == selectNo}">selected</c:if>>${i.employee_name}</option>		 			
					</c:forEach>
				</select>
				<div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
   			    	<i class="xi-angle-down"></i>
			    </div>
			</div>
			<div class="inline-block relative mx-2">
				<select name="admin_manageinfo_subject"  onChange="location.href='<%=projectPath %>/admin/adminManagementInfo?employee_no=${selectNo}&admin_manageinfo_ok=${selectOk}&admin_manageinfo_subject='+ this.value" class="appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline">   
					<option value="::과목::"<c:if test="${selectSubject == '::과목::'}">selected</c:if>>::과목::</option> 
					<option value="JAVA"       <c:if test="${selectSubject == 'JAVA'}">selected</c:if>>JAVA</option>
					<option value="javascript" <c:if test="${selectSubject == 'javascript'}">selected</c:if>>javascript</option> 
					<option value="Html/CSS"   <c:if test="${selectSubject == 'Html/CSS'}">selected</c:if>>Html/CSS</option>
					<option value="Spring"     <c:if test="${selectSubject == 'Spring'}">selected</c:if>>Spring</option>	 
				</select>
			
				<div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
   			    	<i class="xi-angle-down"></i>
			    </div>
			</div>
			<div class="inline-block relative mx-2">
				<select name="admin_manageinfo_ok"  onChange="location.href='<%=projectPath %>/admin/adminManagementInfo?admin_manageinfo_subject=${selectSubject }&employee_no=${selectNo}&admin_manageinfo_ok='+ this.value" class="appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline">  
						<option value="0"  <c:if test="${selectOk  == '0'}">selected</c:if>>미승인</option> 
						<option value="1"  <c:if test="${selectOk  == '1'}">selected </c:if>>승인</option>  						
				</select>
				<div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
   			    	<i class="xi-angle-down"></i>
			    </div>
			</div>
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
						<td class="border  text-center p-2"><a href="<%=projectPath%>/admin/adminManageView?admin_manageinfo_no=${vo.admin_manageinfo_no}">${vo.admin_manageinfo_title}&nbsp;&nbsp;/&nbsp;&nbsp;${vo.admin_manageinfo_subject} </a></td>
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
				<c:if test="${employee_name != '관리자' }">
					<a href="<%=projectPath%>/admin/adminManageRegi" class="bg-info-700 text-white rounded py-2 px-4">등록</a>
				</c:if>
			</div>
		</div>
			
			
	<div class="text-center">	
	<!-- 현재 페이지 -->
		<c:if test="${pageVo.pageNum == 1 }"> 
			<i class="xi-angle-left text-2xl"></i>
		</c:if>	  
		
		<c:if test="${pageVo.pageNum > 1 }"> 
			<a href="<%=projectPath %>/admin/adminManagementInfo?pageNum=${pageVo.pageNum -1}<c:if test="${pageVo.searchKey_01 != null || pageVo.searchKey_02 != null || pageVo.searchKey_03 != null}">&selectNo=${selectNo }&selectOk=${selectOk }&selectSubject=${selectSubject }</c:if>"><i class="xi-angle-left text-2xl"></i></a>
		</c:if>
		
		<c:forEach var="i" begin="${pageVo.startPage }" end="${pageVo.startPage + pageVo.onePageCount - 1}" >
			<c:if test="${i <= pageVo.totalPage }">
				<a class="text-2xl" href="<%=projectPath %>/admin/adminManagementInfo?pageNum=${i}<c:if test="${pageVo.searchKey_01 != null || pageVo.searchKey_02 != null || pageVo.searchKey_03 != null}">&selectNo=${selectNo }&selectOk=${selectOk }&selectSubject=${selectSubject }</c:if>"<c:if test="${i == pageVo.pageNum }">style='color:red'</c:if>> ${i}</a> 
			</c:if>
		</c:forEach>  
		
		<!-- 현재 페이지가 마지막일 경우 -->
		<c:if test="${pageVo.pageNum == pageVo.totalPage }">
			<i class="xi-angle-right text-2xl"></i>  
		</c:if>
		<c:if test="${pageVo.pageNum < pageVo.totalPage }"> 
			<a href="<%=projectPath%>/admin/adminManagementInfo?pageNum=${pageVo.pageNum + 1}<c:if test="${pageVo.searchKey_01 != null || pageVo.searchKey_02 != null || pageVo.searchKey_03 != null}">&selectNo=${selectNo }&selectOk=${selectOk }&selectSubject=${selectSubject }</c:if>"><i class="xi-angle-right text-2xl"></i></a> 
		</c:if>
	</div>
			
			
</div>
