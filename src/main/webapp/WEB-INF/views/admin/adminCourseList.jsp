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
					<c:forEach var="vo" items="${list }"> 
						<tr class="text-center">
							<td class="border border-black bg-white w-16 p-2">${vo.course_no }</td>
							<td class="border border-black bg-white w-32 p-2">${vo.course_start_date }</td> 
							<td class="border border-black bg-white w-64 p-2">${vo.course_name }</td>
							<td class="border border-black bg-white w-32 p-2">${vo.course_price }</td> 
							<td class="border border-black bg-white w-32 p-2">${vo.course_state }</td>
							<td class="border border-black bg-white w-32 p-2">
								<a class="bg-info-200 hover:bg-blue-700 border border-black text-x  rounded" href="<%=projectPath%>/admin/adminCourseEdit?course_no=${vo.course_no }">수정</a>
								<button data-course_no ="${vo.course_no}" onclick= "delCheck(this)" class="bg-info-200 hover:bg-blue-700 border border-black text-x  rounded">삭제</button>
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
	<script>
		function delCheck(num){ 
			var $course_no = $(num).data("course_no");
			if(confirm("삭제 하시겠습니까?")){  
				 location.href="<%=projectPath%>/admin/adminCourseDel?course_no=" +  $course_no; 
			}
		}
	
	</script>
	
	
</body>
</html>