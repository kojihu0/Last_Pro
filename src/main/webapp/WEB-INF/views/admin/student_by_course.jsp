<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강좌별수강생현황</title>
</head>
<body>
<div class="w-full max-w-screen-xl my-0 mx-auto flex items-center justify-between flex-wrap px-8 xl:px-0">
	<div class="h-10 text-lg my-6">
		<i class="xi-school"></i><span class="ml-2">강좌별 수강생 현황</span>
	</div>
	<form action="/lms/student_by_course" class="w-full border-solid border-4 border-gray-600 flex bg-gray-200">
		<div class="mx-3 w-5/6">
			<div class="w-1/2 calendar my-3">반환일자 : <input type="text" class="datepicker border-solid border-2 border-gray-600 ml-2" name="startDate"/> ~ <input type="text" class="datepicker border-solid border-2 border-gray-600" name="endDate"/></div>
			<div class="mb-3">과정명 : <input type="text" name="searchWord" placeholder="과정명" class="border-solid border-2 border-gray-600"/></div>
		</div>
		<input type="submit" value="검색하기" class="w-20 h-16 my-3 ml-12 border-solid border-2 border-gray-600 rounded"/>
	</form>
	<div class="my-2"><i class="xi-search"></i>검색 결과 : <span class="ml-1">${pageVO.totalRecord}</span>건</div>
	<table class="bg-info-300 text-center" style="width:100%; border-top: 1px solid #444444; table-layout:fixed;">
		<tr>
			<td class="border-solid border-2 border-gray-600" style="width:100px;">번호</td>
			<td class="border-solid border-2 border-gray-600" style="width:150px;">개강년월</td>
			<td class="border-solid border-2 border-gray-600" style="width:200px;">과정명</td>
			<td class="border-solid border-2 border-gray-600" style="width:200px;">강좌명</td>
			<td class="border-solid border-2 border-gray-600" style="width:100px;">반</td>
			<td class="border-solid border-2 border-gray-600" style="width:150px;">인원</td>
			<td class="border-solid border-2 border-gray-600" style="width:100px;">학생관리</td>
		</tr>
		<c:forEach var="vo" items="${list}">
			<tr class="bg-white">
				<td class="border-solid border-2 border-gray-600 p-2">${vo.course_no}</td>
				<td class="border-solid border-2 border-gray-600 p-2" >${vo.course_start_date}</td>
				<td class="border-solid border-2 border-gray-600 p-2" >${vo.course_name}</td>
				<td class="border-solid border-2 border-gray-600 p-2" style="overflow:hidden; text-overflow:ellipsis">${vo.course_overview}</td>
				<td class="border-solid border-2 border-gray-600 p-2" >${vo.course_stage }</td>
				<td class="border-solid border-2 border-gray-600 p-2" >인원 수 : ${vo.course_student_count}명</td>
				<td class="border-solid border-2 border-gray-600 p-2" ><a href="/lms/admin/management_of_student?course_no=${vo.course_no}&course_student_count=${vo.course_student_count}" class="border-solid border-2 border-gray-600 bg-info-200 rounded">학생관리</a></td>
			</tr>
		</c:forEach>
	</table>
	
	<div class="w-full max-w-screen-xl my-10 mx-auto mb-12">
		<ul class="flex justify-center" id="page">
			<c:if test="${pageVO.pageNum==1}">
				<li><i class="xi-angle-left"></i></li>
			</c:if>
			<c:if test="${pageVO.pageNum!=1}">
				<li class="hover:text-danger"><a href="/lms/student_by_course?pageNum=${pageVO.pageNum-1}
				<c:if test="${searchWord!=null && searchWord!=''}">&searchWord=${pageVO.searchWord}</c:if>
				<c:if test="${startDate!=null && startDate!='' && endDate!=null && endDate!=''}">&startDate=${pageVO.startDate}&endDate=${pageVO.endDate}</c:if>
				"><i class="xi-angle-left text-2xl"></i></a></li>
			</c:if>
			<c:forEach var="i" begin="${pageVO.startPage}" end="${pageVO.startPage + pageVO.onePageCount-1}">
				<c:if test="${i<=pageVO.totalPage}">
					<li class="hover:text-danger"><a href="/lms/student_by_course?pageNum=${i}
					<c:if test="${searchWord!=null && searchWord!=''}">&searchWord=${pageVO.searchWord}</c:if>
					<c:if test="${startDate!=null && startDate!='' && endDate!=null && endDate!=''}">&startDate=${pageVO.startDate}&endDate=${pageVO.endDate}</c:if>
					" <c:if test='${i==pageVO.pageNum}'>style='color:red'</c:if>><span class="text-2xl leading-none">${i}</span></a></li>
				</c:if>
			</c:forEach>
			<c:if test="${pageVO.pageNum == pageVO.totalPage}">
				<li><i class="xi-angle-right"></i></li>
			</c:if>
			<c:if test="${pageVO.pageNum < pageVO.totalPage}">
				<li class="hover:text-danger"><a href="/lms/student_by_course?pageNum=${pageVO.pageNum+1}
				<c:if test="${searchWord!=null && searchWord!=''}">&searchWord=${pageVO.searchWord}</c:if>
				<c:if test="${startDate!=null && startDate!='' && endDate!=null && endDate!=''}">&startDate=${pageVO.startDate}&endDate=${pageVO.endDate}</c:if>
				"><i class="xi-angle-right text-2xl"></i></a></li>
			</c:if>
		</ul>
	</div>
</div>
</body>
</html>