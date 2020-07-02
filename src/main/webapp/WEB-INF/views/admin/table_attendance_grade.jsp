<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>반별출결과제관리</title>
</head>
<body>
<div class="w-full max-w-screen-xl my-0 mx-auto flex items-center justify-between flex-wrap px-8 xl:px-0">
	<div class="h-10 text-lg my-6 w-full">
		<i class="xi-school"></i><span class="ml-2">반별출결 및 과제관리</span>
	</div>
	<form action="/lms/admin/table_attendance_grade2" method="post" class="w-full border-solid border-4 border-gray-600 flex bg-gray-200">
		<input type="hidden" name="course_no" value="${course_no}"/>
		<div class="mx-3 w-5/6">
			<div class="w-1/2 calendar my-4">수강일 : <input type="text" class="datepicker border-solid border-2 border-gray-600 ml-2" name="startDate"/></div>
		</div>
		<input type="submit" value="검색하기" class="w-20 h-10 my-3 ml-12 border-solid border-2 border-gray-600 rounded"/>
	</form>
	<form class="w-full" action="/lms/admin/table_attendance__grade">
		<table class="bg-info-300 text-center" style="width:100%; border-top: 1px solid #444444; border-collapse: collapse;">
			<tr>
				<td style="width:100px">번호</td>
				<td style="width:200px;">수강생</td>
				<td style="width:100px">성별</td>
				<td style="width:300px;">연락처</td>
				<td style="width:150px;">출결상태</td>
				<td style="width:200px">비고</td>
				<td style="width:100px">수정</td>
			</tr>
			<c:forEach var="vo" items="${list}">
				<tr class="bg-white" style="border-top:solid 1px black; border-bottom:solid 1px black">
					<td class="p-2" style="width:100px">${vo.student_no}</td>
					<td class="p-2" style="width:200px;">${vo.student_name_ko}</td>
					<td class="p-2" style="width:100px;">${vo.student_gender}</td>
					<td class="p-2" style="width:300px;">${vo.student_tel_phone}</td>
					<td class="p-2" style="width:150px;">
						<c:if test="${vo.attendance_state==1}">출석</c:if>
						<c:if test="${vo.attendance_state==2}">지각</c:if>
						<c:if test="${vo.attendance_state==3}">결석</c:if>
					</td>
					<td class="p-2" style="width:200px">${vo.attendance_reason}</td>
					<!-- 출결체크가 되어 있으면 보여야 한다. -->
					<c:if test="${vo.attendance_state==1 || vo.attendance_state==2 || vo.attendance_state==3}">
						<td style="width:100px"><a href="/lms/admin/modify_table_attendance_grade_individual?student_no=${vo.student_no}&course_no=${vo.course_no}" class="border-2 border-gray-600 rounded bg-info-200">수정</a></td>
					</c:if>
					<c:if test="${vo.attendance_state==4 || vo.attendance_state==0}">
						<td style="width:100px"></td>
					</c:if>
				</tr>
			</c:forEach>
		</table>
		<!-- 출결체크가 안되어 있으면 보여야 한다. -->
		<c:if test="${vo2.student_cnt==0 || vo3.student_cnt2==vo2.student_cnt}">
			<div class="my-2 float-right"><a href="/lms/admin/modify_table_attendance_grade?course_no=${course_no}" class="border-2 border-gray-600 rounded bg-info-200">출결체크</a></div>
		</c:if>
	</form>
</div>
</body>
</html>