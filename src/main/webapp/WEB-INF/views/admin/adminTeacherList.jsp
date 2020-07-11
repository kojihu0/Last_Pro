<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
	<div class="w-full max-w-screen-xl my-0 mx-auto items-center justify-between flex-wrap px-8 xl:px-0">
		<div class="text-xl p-6">  
			<i class="xi-school"></i>&nbsp;직원현황
		</div>
		<div class="p-3 mb-4 searchDiv w-full flex bg-gray-300 items-center flex">
			<div class="inline-block relative mx-2"> 
				<select name="employee_rank" class="appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline" onChange="location.href='<%=projectPath %>/admin/adminTeacherList?employee_class=${employee_class}&employee_rank='+ this.value">
					<option value="::직급::"<c:if test="${employee_rank == '::직급::' }">selected</c:if>>::직급::</option>
					<option value="평강사"   <c:if test="${employee_rank == '평강사' }">selected</c:if>>평강사</option>
					<option value="임시강사"  <c:if test="${employee_rank == '임시강사' }">selected</c:if>>임시강사</option>
					<option value="강사"     <c:if test="${employee_rank == '강사' }">selected</c:if>>강사</option>
				</select>
				<div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
   			    	<i class="xi-angle-down"></i>
			    </div>
			</div>
			<div class="inline-block relative mx-2"> 
				<select name="employee_class" class="appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline"  onChange="location.href='<%=projectPath %>/admin/adminTeacherList?employee_rank=${employee_rank}&employee_class='+ this.value">
					<option value="::Class::">::Class::</option>
					<option value="A" <c:if test="${employee_class == 'A' }">selected</c:if>>A</option>
					<option value="B" <c:if test="${employee_class == 'B' }">selected</c:if>>B</option>
					<option value="C" <c:if test="${employee_class == 'C' }">selected</c:if>>C</option>
					<option value="D" <c:if test="${employee_class == 'D' }">selected</c:if>>D</option>
					<option value="E" <c:if test="${employee_class == 'E' }">selected</c:if>>E</option> 
				</select>
				<div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
   			    	<i class="xi-angle-down"></i>
			    </div>
			</div>  
			<input type="text" name="searchNameT" placeholder="이름 검색" id="searchName" class="mx-2 appearance-none bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline"/>&nbsp;<button id="buttonName"><i class="xi-search"></i></button>
		</div>
			
		<div class="p-3 bg-info-100">
			<table class="w-full">
				<thead>
					<tr>   
						<th class="border-b-4 border-info-700 bg-info-300 w-16">번호</th>
						<th class="border-b-4 border-info-700 bg-info-300 bg-info-300 w-32">사진</th>
						<th class="border-b-4 border-info-700 bg-info-300 bg-info-300 w-32">이름</th>
						<th class="border-b-4 border-info-700 bg-info-300 bg-info-300 w-32">직급</th>
						<th class="border-b-4 border-info-700 bg-info-300 bg-info-300 w-64">담당</th> 
						<th class="border-b-4 border-info-700 bg-info-300 bg-info-300 w-32">등록일</th>
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
							<td  class="border text-center p-2 h-32"><img class="object-cover h-32 w-full" src="/lms/img/${vo.employee_img}"/></td>
							<td  class="border text-center p-2">${vo.employee_name }</td> 
							<td  class="border text-center p-2">${vo.employee_rank }</td>
							<td  class="border text-center p-2">${vo.employee_subject }/${vo.employee_class }</td>
							<td  class="border text-center p-2">${vo.employee_date }</td>
							<td  class="border text-center p-2">${vo.admin_id }</td>
							<td  class="border text-center p-2">${vo.employee_authority }</td> 
							<td  class="border text-center p-2">${vo.employee_state }</td>     
							<td  class="border text-center p-2"><a href="<%=projectPath %>/admin/adminTeacherEdit?employee_no=${vo.employee_no}&employee_name=${vo.employee_name }<c:if test="${vo.employee_class != null}">&employee_class=${vo.employee_class }</c:if><c:if test="${vo.employee_state != null}">&employee_state=${vo.employee_state }</c:if><c:if test="${vo.employee_authority != null }">&employee_authority=${vo.employee_authority }</c:if><c:if test="${vo.employee_rank != null }">&employee_rank=${vo.employee_rank }</c:if><c:if test="${vo.admin_id != null}">&admin_id=${vo.admin_id }</c:if>" class="bg-info-600 px-4 rounded">수정</a></td>
						</tr> 
					</c:forEach> 
				</tbody>
			</table>
		</div>
		
		<div class="p-3 text-right">  
			<button id="teacherRegiButtoon" class="bg-info-700 text-white rounded py-2 px-4">직원등록</button>
		</div>	
	<!-- page -->	
	<div class="text-center">	
	<!-- 현재 페이지 -->
		<c:if test="${pageVo.pageNum == 1 }"> 
			<i class="xi-angle-left text-2xl"></i>
		</c:if>	    
		 
		<c:if test="${pageVo.pageNum > 1 }"> 
			<a href="<%=projectPath %>/admin/adminTeacherList?pageNum=${pageVo.pageNum -1}<c:if test="${employee_rank != null || employee_class != null || searchNameT != null}">&employee_rank=${employee_rank }&employee_class=${employee_class }&searchNameT=${searchNameT }</c:if>"><i class="xi-angle-left text-2xl"></i></a>
		</c:if>
		 
		<c:forEach var="i" begin="${pageVo.startPage }" end="${pageVo.startPage + pageVo.onePageCount-1}" > 
			<c:if test="${i <= pageVo.totalPage }">
				<a class="text-2xl" href="<%=projectPath %>/admin/adminTeacherList?pageNum=${i}<c:if test="${employee_rank != null || employee_class != null || searchNameT != null}">&employee_rank=${employee_rank }&employee_class=${employee_class }&searchNameT=${searchNameT }</c:if>"<c:if test="${i == pageVo.pageNum }">style='color:red'</c:if>> ${i}</a> 
			</c:if>
		</c:forEach>  
		 
		<!-- 현재 페이지가 마지막일 경우 -->
		<c:if test="${pageVo.pageNum == pageVo.totalPage }">
			<i class="xi-angle-right text-2xl"></i> 
		</c:if> 
		<c:if test="${pageVo.pageNum < pageVo.totalPage }">  
			<a href="<%=projectPath%>/admin/adminTeacherList?pageNum=${pageVo.pageNum + 1}<c:if test="${employee_rank != null || employee_class != null || searchNameT != null}">&employee_rank=${employee_rank }&employee_class=${employee_class }&searchNameT=${searchNameT }</c:if>"><i class="xi-angle-right text-2xl"></i></a> 
		</c:if>
	</div>
		

	</div>
	
	<script>
	$(function(){
		
		$("#buttonName").on('click', function(){
			var searchName = document.getElementById("searchName").value; 
			location.href="/lms/admin/adminTeacherList?employee_rank=${employee_rank}&employee_class=${employee_class}&searchNameT=" + searchName;
		});
		
		var userName = '${employee_name}';
		$("#teacherRegiButtoon").on('click', function(){
			if(userName != '관리자'){
				alert("관리자 전용 페이지 입니다. 로그인 창으로 돌아갑니다.(자동으로 로그아웃 됩니다.)");
				location.href="<%=projectPath%>/adminStart/adminLogout";
			}
			if(userName == '관리자'){
				location.href="<%=projectPath%>/admin/adminTeacherRegi";
			}
		}); 
	});
	</script>
