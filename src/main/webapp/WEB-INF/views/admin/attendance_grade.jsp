<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="w-full max-w-screen-xl my-0 mx-auto flex items-center justify-between flex-wrap px-8 xl:px-0">
	<div class="h-10 text-lg my-6">
		<i class="xi-school"></i><span class="ml-2">반별출결 및 과제관리</span>
	</div>
	<form action="/lms/attendance_grade" class="w-full border-solid border-4 border-gray-600 flex bg-gray-200">
		<div class="mx-3 w-5/6">
			<div class="w-full calendar my-3">개강년월 : <input type="text" class="datepicker border-solid border-2 border-gray-600 ml-2" name="startDate"/> ~ <input type="text" class="datepicker border-solid border-2 border-gray-600" name="endDate"/></div>
			<div class="mb-3">과정명 : <input type="text" name="searchWord" placeholder="과정명" class="border-solid border-2 border-gray-600"/></div>
		</div>
		<input type="submit" value="검색하기" class="w-20 h-16 my-3 ml-12 border-solid border-2 border-gray-600 rounded"/>
	</form>
	<div class="my-2"><i class="xi-search"></i>검색 결과 : <span class="ml-1">${pageVO.totalRecord}</span>건</div>
	<table class="bg-info-300" style="width:100%; border-top: 1px solid #444444; border-collapse: collapse; table-layout:fixed;">
		<tr class="text-center">
			<td style="width:50px">번호</td>
			<td style="width:120px;">개강년월</td>
			<td style="width:200px;">과정명</td>
			<td style="width:250px;">강좌명</td>
			<td style="width:300px;">반</td>
			<td style="width:50px;">인원</td>
			<td style="width:150px;">출결·과제관리</td>
		</tr>
		<c:forEach var="vo" items="${list}">
			<tr class="bg-white text-center" style="border-top:solid 1px black; border-bottom:solid 1px black">
				<td class="p-2">${vo.course_no}</td>
				<td class="p-2">${vo.course_start_date}</td>
				<td class="p-2">${vo.course_name}</td>
				<td class="p-2 truncate" style="overflow:hidden; text-overflow:ellipsis">${vo.course_overview}</td>
				<td class="p-2">${vo.course_stage}</td>
				<td class="p-2">${vo.course_student_count}명</td>
				<td class="p-2"><a href="/lms/admin/table_attendance_grade?course_no=${vo.course_no}" class="bg-info-200 border-solid border-2 border-gray-600 rounded">출결/과제관리</a></td>
			</tr>
		</c:forEach>
	</table>
	
	<div class="w-full max-w-screen-xl my-10 mx-auto mb-12">
		<ul class="flex justify-center" id="page">
			<c:if test="${pageVO.pageNum==1}">
				<li><i class="xi-angle-left"></i></li>
			</c:if>
			<c:if test="${pageVO.pageNum!=1}">
				<li class="hover:text-danger"><a href="/lms/attendance_grade?pageNum=${pageVO.pageNum-1}
				<c:if test="${searchWord!=null && searchWord!=''}">&searchWord=${pageVO.searchWord}</c:if>
				<c:if test="${startDate!=null && startDate!='' && endDate!=null && endDate!=''}">&startDate=${pageVO.startDate}&endDate=${pageVO.endDate}</c:if>
				"><i class="xi-angle-left text-2xl"></i></a></li>
			</c:if>
			<c:forEach var="i" begin="${pageVO.startPage}" end="${pageVO.startPage + pageVO.onePageCount-1}">
				<c:if test="${i<=pageVO.totalPage}">
					<li class="hover:text-danger"><a href="/lms/attendance_grade?pageNum=${i}
					<c:if test="${searchWord!=null && searchWord!=''}">&searchWord=${pageVO.searchWord}</c:if>
					<c:if test="${startDate!=null && startDate!='' && endDate!=null && endDate!=''}">&startDate=${pageVO.startDate}&endDate=${pageVO.endDate}</c:if>
					" <c:if test='${i==pageVO.pageNum}'>style='color:red'</c:if>><span class="text-2xl leading-none">${i}</span></a></li>
				</c:if>
			</c:forEach>
			<c:if test="${pageVO.pageNum == pageVO.totalPage}">
				<li><i class="xi-angle-right"></i></li>
			</c:if>
			<c:if test="${pageVO.pageNum < pageVO.totalPage}">
				<li class="hover:text-danger"><a href="/lms/attendance_grade?pageNum=${pageVO.pageNum+1}
				<c:if test="${searchWord!=null && searchWord!=''}">&searchWord=${pageVO.searchWord}</c:if>
				<c:if test="${startDate!=null && startDate!='' && endDate!=null && endDate!=''}">&startDate=${pageVO.startDate}&endDate=${pageVO.endDate}</c:if>
				"><i class="xi-angle-right text-2xl"></i></a></li>
			</c:if>
		</ul>
	</div>
</div>
