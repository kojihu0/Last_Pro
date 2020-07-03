<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="w-full max-w-screen-xl my-0 mx-auto flex items-center justify-between flex-wrap px-8 xl:px-0">
	<div class="h-10 text-lg my-6">
		<i class="xi-school"></i><span class="ml-2">휴강생현황</span>
	</div>
	<form action="/lms/leave_of_absence" class="w-full border-solid border-4 border-gray-600 flex bg-gray-200">
		<div class="mx-3 w-5/6">
			<div class="my-2 calendar ">휴원일자 : <input type="text" name="startDate" class="datepicker border-solid border-2 border-gray-600 ml-2"/> ~ <input type="text" name="endDate" class="datepicker border-solid border-2 border-gray-600"/></div>
			회원이름 : <input type="text" name="searchWord" class="ml-2 border-solid border-2 border-gray-600"/>
		</div>
		<input type="submit" value="검색하기" class="w-20 h-20 my-1 ml-12 border-solid border-2 border-gray-600 rounded"/>
	</form>
	<div class="my-2"><i class="xi-search"></i>검색 결과 : <span class="ml-1">${pageVO.totalRecord}</span>건</div>
	<table class="bg-info-300" style="width:100%; border-top: 1px solid #444444;">
		<tr>
			<td class="border-solid border-2 border-gray-600 text-center" style="width:100px">회원번호</td>
			<td class="border-solid border-2 border-gray-600 text-center" style="width:200px">회원명</td>
			<td class="border-solid border-2 border-gray-600 text-center" style="width:250px">휴대전화</td>
			<td class="border-solid border-2 border-gray-600 text-center" style="width:250px">부모전화</td>
			<td class="border-solid border-2 border-gray-600 text-center" style="width:280px">최근수강강좌</td>
			<td class="border-solid border-2 border-gray-600 text-center" style="width:100px">휴원일자</td>
		</tr>
		<c:forEach var="vo" items="${list}">
			<tr class="bg-white">
				<td class="border-solid border-2 border-gray-600 text-center" style="width:100px">${vo.student_no}</td>
				<td class="border-solid border-2 border-gray-600 text-center" style="width:200px">${vo.student_name_ko}</td>
				<td class="border-solid border-2 border-gray-600 text-center" style="width:250px">${vo.student_tel_phone}</td>
				<td class="border-solid border-2 border-gray-600 text-center" style="width:250px">${vo.student_tel_parent}</td>
				<td class="border-solid border-2 border-gray-600 text-center" style="width:280px; white-space:nowrap; overflow:hidden; text-overflow:ellipsis">${vo.student_lately_course}</td>
				<td class="border-solid border-2 border-gray-600 text-center" style="width:100px">${vo.student_course_state_date}</td>
			</tr>
		</c:forEach>
	</table>
	
	<div class="w-full max-w-screen-xl my-10 mx-auto mb-12">
		<ul class="flex justify-center" id="page">
			<c:if test="${pageVO.pageNum==1}">
				<li><i class="xi-angle-left"></i></li>
			</c:if>
			<c:if test="${pageVO.pageNum!=1}">
				<li class="hover:text-danger"><a href="/lms/leave_of_absence?pageNum=${pageVO.pageNum-1}"><i class="xi-angle-left text-2xl"></i></a></li>
			</c:if>
			<c:forEach var="i" begin="${pageVO.startPage}" end="${pageVO.startPage + pageVO.onePageCount-1}">
				<c:if test="${i<=pageVO.totalPage}">
					<li class="hover:text-danger"><a href="/lms/leave_of_absence?pageNum=${i}
					<c:if test="${pageVO.searchWord!=null && pageVO.searchWord!=''}">&searchWord=${pageVO.searchWord}</c:if><c:if test="${pageVO.startDate!=null && pageVO.startDate!='' && pageVO.endDate!=null && pageVO.endDate!=''}">&startDate=${pageVO.startDate}&endDate=${pageVO.endDate}</c:if>" <c:if test='${i==pageVO.pageNum}'>style='color:red'</c:if>><span class="text-2xl leading-none">${i}</span></a></li>
				</c:if>
			</c:forEach>
			<c:if test="${pageVO.pageNum == pageVO.totalPage}">
				<li><i class="xi-angle-right"></i></li>
			</c:if>
			<c:if test="${pageVO.pageNum < pageVO.totalPage}">
				<li class="hover:text-danger"><a href="/lms/leave_of_absence?pageNum=${pageVO.pageNum+1}"><i class="xi-angle-right text-2xl"></i></a></li>
			</c:if>
		</ul>
	</div>
</div>
