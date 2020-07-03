<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	
  
</head>
<body>


	<div class="w-full max-w-screen-xl my-0 mx-auto items-center justify-between flex-wrap px-8 xl:px-0">
			<div class="text-xl p-3 mx-16 ">  
				<i class="xi-school"></i>&nbsp;강좌목록
			</div>
			
			<div class="p-3 searchDiv text-right bg-gray-200 border-solid border-4 border-gray-600 flex">  
				<select name="searchKey_01" class="mx-2"  onChange="location.href='<%=projectPath %>/admin/adminCourseList?searchKey_02=${searchKey_State}&searchKey_01='+ this.value" >
					<option value="-1" <c:if test="${searchKey_Year == -1 }">selected</c:if> >::연도::</option>
					<c:forEach var="i" begin="2020" end="2050">
						<option value="${i}" <c:if test="${searchKey_Year == i }">selected</c:if> >${i}</option>
					</c:forEach> 
				</select>   
				<select name="searchKey_02" class="mx-2"  onChange="location.href='<%=projectPath %>/admin/adminCourseList?searchKey_01=${searchKey_Year}&searchKey_02='+ this.value">
					<option  <c:if test="${searchKey_State == '::상태::' }">selected</c:if>>::상태::</option>
					<option value="개강" <c:if test="${searchKey_State == '개강'}">selected</c:if>>개강</option>
					<option value="폐강"  <c:if test="${searchKey_State == '폐강'}">selected</c:if>>폐강</option>
					<option value="대기"  <c:if test="${searchKey_State == '대기'}">selected</c:if>>대기</option>
				</select> 
				<input type="text" id="courseNameS" name="courseNameS" placeholder="강좌 명 검색" class="mx-2 border border-black"/>&nbsp;<button id="buttonName"><i class="xi-search"></i></button>
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
					<c:forEach var="vo" items="${list }"> 
						<tr class="text-center">
							<td class="border border-black bg-white w-16 p-2">${vo.course_no }</td>
							<td class="border border-black bg-white w-32 p-2">${vo.course_start_date }</td> 
							<td class="border border-black bg-white w-64 p-2">${vo.course_name }</td>
							<td class="border border-black bg-white w-32 p-2">${vo.course_price }</td> 
							<td class="border border-black bg-white w-32 p-2">${vo.course_state }</td>
							<td class="border border-black bg-white w-32 p-2">
								<button data-course_no ="${vo.course_no}" onclick= "editCheck(this)" class="bg-info-200 hover:bg-blue-700 border border-black rounded">수정</button>
								<button data-course_no ="${vo.course_no}" onclick= "delCheck(this)"  class="bg-info-200 hover:bg-blue-700 border border-black rounded">삭제</button>
							</td>
							<td class="border border-black bg-white w-32 p-2">${vo.course_day }</td>
							<td class="border border-black bg-white w-32 p-2">${vo.course_time }</td>
							<td class="border border-black bg-white w-32 p-2">${vo.course_stage }</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
			</div> 
			
			<div class="text-right p-3">
				<a class="bg-info-200 border-solid border-2 border-gray-600 rounded py-2 px-4 rounded" href="<%=projectPath%>/admin/adminCourseRegi">등록하기</a>
			</div>
	</div>
	
	<div class="text-center">	
	<!-- 현재 페이지 -->
		<c:if test="${pageVo.pageNum == 1 }"> 
			<i class="xi-angle-left text-2xl"></i>
		</c:if>	  
		
		<c:if test="${pageVo.pageNum > 1 }">  
			<a href="<%=projectPath %>/admin/adminCourseList?pageNum=${pageVo.pageNum -1}<c:if test="${pageVo.searchKey_01 != null && pageVo.searchKey_02 != null && pageVo.searchWord != null}" >&searchKey_01=${pageVo.searchKey_01 }&searchKey_02=${pageVo.searchKey_02 }&searchWord=${pageVo.searchWord }</c:if>"><i class="xi-angle-left text-2xl"></i></a>
		</c:if>
		
		<c:forEach var="i" begin="${pageVo.startPage }" end="${pageVo.startPage + pageVo.onePageCount - 1}" >
			<c:if test="${i <= pageVo.totalPage }">
				<a class="text-2xl" href="<%=projectPath %>/admin/adminCourseList?pageNum=${i}<c:if test="${pageVo.searchKey_01 != null && pageVo.searchKey_02 != null && pageVo.searchWord != null}">&searchKey_01=${pageVo.searchKey_01 }&searchKey_02=${pageVo.searchKey_02 }&searchWord=${pageVo.searchWord } }</c:if>"<c:if test="${i == pageVo.pageNum }">style='color:red'</c:if>> ${i}</a> 
			</c:if>
		</c:forEach>   
		 
		<!-- 현재 페이지가 마지막일 경우 -->
		<c:if test="${pageVo.pageNum == pageVo.totalPage }">
			<i class="xi-angle-right text-2xl"></i> 
		</c:if>
		<c:if test="${pageVo.pageNum < pageVo.totalPage }"> 
			<a href="<%=projectPath%>/admin/adminCourseList?pageNum=${pageVo.pageNum + 1}<c:if test="${pageVo.searchKey_01 != null && pageVo.searchKey_02 != null && pageVo.searchWord != null}">&searchKey_01=${pageVo.searchKey_01 }&searchKey_02=${pageVo.searchKey_02 }&searchWord=${pageVo.searchWord }</c:if>"><i class="xi-angle-right text-2xl"></i></a> 
		</c:if>
	</div>
	
	<!-- ----------------------------------------------------------------------------------- -->
	<script>
		function editCheck(num){ 
			var $course_no = $(num).data("course_no");
			if(confirm("수정 하시겠습니까?")){  
				 location.href="<%=projectPath%>/admin/adminCourseEdit?course_no=" +  $course_no; 
			}
		}
		function delCheck(num){ 
			var $course_no = $(num).data("course_no");
			if(confirm("삭제 하시겠습니까?")){  
				 location.href="<%=projectPath%>/admin/adminCourseDel?course_no=" +  $course_no; 
			}
		}
		$(function(){
			$("#buttonName").on('click', function(){
				var searchName = document.getElementById("courseNameS").value; 
				location.href="/lms/admin/adminCourseList?searchKey_01=${searchKey_Year}&searchKey_02=${searchKey_State}&course_name=" + searchName;
			});
		});
	</script>
</body>
</html>