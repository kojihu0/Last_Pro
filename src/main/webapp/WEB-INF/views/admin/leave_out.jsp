<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="w-full max-w-screen-xl my-0 mx-auto flex items-center justify-between flex-wrap px-8 xl:px-0">
	<div class="h-10 text-lg my-6 w-full">
		<i class="xi-school"></i><span class="ml-2">강좌별 수강생 현황</span>
	</div>
	<a href="/lms/management_of_student" class="w-full"><i class="xi-angle-left-min">반으로</i></a>
	<form method="post" action="/lms/admin/student_leaveOutOk" class="w-full my-3">
		<input type="hidden" name="student_no" value="${vo.student_no}"/>
		<table class="w-full">
			<tr class="text-center">
				<td class="border-2 border-solid border-gray-600 bg-info-300 p-2">대상자</td>
				<td class="border-2 border-solid border-gray-600 p-2">
					<table class="w-full">
						<tr>
							<td class="border-2 border-solid border-gray-600 p-2">수강생</td>
							<td class="border-2 border-solid border-gray-600 p-2">학생휴대폰</td>
							<td class="border-2 border-solid border-gray-600 p-2">부모휴대폰</td>	
						</tr>
						<tr>
							<td class="border-2 border-solid border-gray-600 p-2">${vo.student_name_ko}</td>
							<td class="border-2 border-solid border-gray-600 p-2">${vo.student_tel_phone}</td>
							<td class="border-2 border-solid border-gray-600 p-2">${vo.student_tel_parent}</td>	
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td class="border-2 border-solid border-gray-600 bg-info-300 text-center p-2">구분</td>
				<td class="border-2 border-solid border-gray-600 p-2">
					<div>
						<input type="radio" value="3" name="state" id="leave"/>휴원
						<input type="radio" value="4" name="state" id="out"/>퇴원
					</div>
				</td>
			</tr>
			<tr>
				<td class="border-2 border-solid border-gray-600 bg-info-300 text-center p-2">휴/퇴원 일지</td>
				<td class="border-2 border-solid border-gray-600 p-2">
					<div class="calendar">
						<input type="text" name="student_course_state_date" class="datepicker border-solid border-2 border-gray-600 ml-2" id="leave_out_date"/>
					</div>
				</td>
			</tr>
			<tr>
				<td class="border-2 border-solid border-gray-600 bg-info-300 text-center p-2">비고</td>
				<td class="border-2 border-solid border-gray-600 p-2"><input type="text" class="w-64 border-2 border-solid border-gray-600"/></td>
			</tr>
		</table>
		<div class="text-center my-3 ">
			<input type="submit" value="처리하기" id="leave_outOk" class="border-2 border-solid border-gray-600 rounded bg-info-200"/>
		</div>
	</form>
</div>
</body>
</html>