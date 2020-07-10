
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>반별출결관리</title>
</head>
<body>
<div class="w-full max-w-screen-xl my-0 mx-auto flex items-center justify-between flex-wrap px-8 xl:px-0">
	<div class="h-10 text-lg my-6 w-full">
		<i class="xi-school"></i><span class="ml-2">반별출결관리</span>
	</div>
	<a href="/lms/attendance__grade" class="mb-2"><i class="xi-angle-left-min">목록으로</i></a>
	<form class="w-full" method="post" action="/lms/admin/table_attendance_gradeOk">
		<input type="hidden" name="attendance_cnt" value="${vo.attendance_cnt}"/>
		<table class="bg-info-300 text-center" style="width:100%; border-top: 1px solid #444444; border-collapse: collapse;">
			<tr>
				<td style="width:50px;">번호</td>
				<td style="width:200px;">수강생</td>
				<td style="width:150px;">수강일자</td>
				<td style="width:100px;">출결상태</td>
				<td style="width:200px">비고</td>
			</tr>
			<c:forEach var="vo" items="${list}">
				<input type="hidden" name="student_no" value="${vo.student_no}">
				<input type="hidden" name="course_no" value="${vo.course_no}">
				<tr class="text-center bg-white" style="border-top: 1px solid black; border-bottom: 1px solid black;">
					<td class="p-2" style="width:50px">${vo.student_no}</td>
					<td class="p-2" style="width:200px">${vo.student_name_ko}/${vo.student_name_eng}</td>
					<td class="p-2" style="width:150px;">${vo.attendance_date}</td>
					<td class="p-2" style="width:100px;">
						<div class="inline-block relative w-24 mx-2">
						<select name="attendance_state" class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline month">
							<option value="1"selected>출석</option>
						    <option value="2">지각</option>
						    <option value="3">결석</option>
			  	 		</select>
		  		    	<div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
		  			    	<i class="xi-angle-down"></i>
					    </div>
					</div>
					</td>
					<td class="p-2" style="width:200px;"><input type="text" name="attendance_reason" class="border-solid border border-gray-600"/></td>
				</tr>
			</c:forEach>
		</table>
		<div class="text-center my-3">
			<input type="submit" value="전송하기" class="bg-info-600 px-4 rounded"/>
		</div>
	</form>
</div>
</body>
</html>