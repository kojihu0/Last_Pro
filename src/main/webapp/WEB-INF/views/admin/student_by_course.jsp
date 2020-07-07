<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="w-full max-w-screen-xl my-0 mx-auto flex items-center justify-between flex-wrap px-8 xl:px-0">
	<div class="h-10 text-lg my-6">
		<i class="xi-school"></i><span class="ml-2">강좌별 수강생 현황</span>
	</div>
	<form action="/lms/student_by_course" class="w-full flex bg-gray-300 items-center">
		<div class="mx-3 w-5/6">
			<div class="calendar my-3">개강일자 : <input type="text" class="datepicker appearance-none bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 rounded shadow leading-tight focus:outline-none focus:shadow-outline" name="startDate"/> ~ <input type="text" class="datepicker appearance-none bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 rounded shadow leading-tight focus:outline-none focus:shadow-outline" name="endDate"/></div>
			<div class="mb-3">과정명 : <input type="text" name="searchWord" placeholder="과정명" class="appearance-none bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 rounded shadow leading-tight focus:outline-none focus:shadow-outline"/></div>
		</div>
		<input type="submit" value="검색하기" class="px-4 py-2 bg-gray-900 text-white rounded"/>
	</form>
	<div class="my-2"><i class="xi-search"></i>검색 결과 : <span class="ml-1">${pageVO.totalRecord}</span>건</div>
	<table class="bg-info-300 text-center" style="width:100%; border-top: 1px solid #444444; table-layout:fixed;">
		<tr>
			<td class="border-solid border border-gray-600" style="width:100px;">번호</td>
			<td class="border-solid border border-gray-600" style="width:150px;">개강년월</td>
			<td class="border-solid border border-gray-600" style="width:200px;">과정명</td>
			<td class="border-solid border border-gray-600" style="width:200px;">강좌명</td>
			<td class="border-solid border border-gray-600" style="width:100px;">반</td>
			<td class="border-solid border border-gray-600" style="width:150px;">인원</td>
			<td class="border-solid border border-gray-600" style="width:100px;">학생관리</td>
		</tr>
		<c:forEach var="vo" items="${list}">
		<c:if test="${vo.course_no != 0}">
			<tr class="bg-white">
				<td class="border-solid border border-gray-600 p-2">${vo.course_no}</td>
				<td class="border-solid border border-gray-600 p-2" >${vo.course_start_date}</td>
				<td class="border-solid border border-gray-600 p-2" >${vo.course_name}</td>
				<td class="border-solid border border-gray-600 p-2" style="overflow:hidden; text-overflow:ellipsis">${vo.course_overview}</td>
				<td class="border-solid border border-gray-600 p-2" >${vo.course_stage }</td>
				<td class="border-solid border border-gray-600 p-2" >인원 수 : ${vo.course_student_count}명</td>
				<td class="border-solid border border-gray-600 p-2" ><a href="/lms/admin/management_of_student?course_no=${vo.course_no}&course_student_count=${vo.course_student_count}" class="bg-info-600 px-4 rounded">학생관리</a></td>
			</tr>
		</c:if>
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
