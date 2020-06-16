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
	<a href="/lms/student_by_course" class="w-full"><i class="xi-angle-left-min">목록으로</i></a>
	<span class="w-full my-8">●강좌명 : [202006]JAVASCRIPT여렵지 않아요 JAVASCRIPT개발자 양성 (총 15명)</span>
	<div class="inline-block relative w-30 mb-3">
		<select class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline month">
			<option>이름순</option>
			<option>학교순</option>
 	 	</select>
 	    <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
 	    	<svg class="fill-current h-4 w-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"><path d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z"/></svg>
	    </div>
	</div>
	<div class="float-right">
		<a href="/lms/table_attendance_grade"><span class="border-solid border-2 border-gray-600 rounded bg-info-200">출결현황</span></a>
	</div>
	<table class="bg-info-300" style="width:100%; border-top: 1px solid #444444;">
		<tr>
			<td class="border-solid border-2 border-gray-600 text-center" style="width:50px"><input type="checkbox" name="allCheck"/></td>
			<td class="border-solid border-2 border-gray-600 text-center" style="width:100px">회원번호</td>
			<td class="border-solid border-2 border-gray-600 text-center" style="width:150px">사진</td>
			<td class="border-solid border-2 border-gray-600 text-center" style="width:150px">수강생</td>
			<td class="border-solid border-2 border-gray-600 text-center" style="width:50px">성별</td>
			<td class="border-solid border-2 border-gray-600 text-center" style="width:150px">학교</td>
			<td class="border-solid border-2 border-gray-600 text-center" style="width:50px">학년</td>
			<td class="border-solid border-2 border-gray-600 text-center" style="width:100px">학부모휴대폰</td>
			<td class="border-solid border-2 border-gray-600 text-center" style="width:100px">학생휴대폰</td>
		</tr>
		<tr class="bg-white student_info"><!-- hover시 배경색이 변하고 click이벤트시 디테일 화면을 이동하는 이벤트처리하기-->
			<td class="border-solid border-2 border-gray-600 text-center p-2" style="width:50px"><input type="checkbox" class="check"/></td>
			<td class="border-solid border-2 border-gray-600 text-center p-2" style="width:100px">100100</td>
			<td class="border-solid border-2 border-gray-600 text-center p-2" style="width:150px">사진</td>
			<td class="border-solid border-2 border-gray-600 text-center p-2" style="width:150px">하정우/roy</td>
			<td class="border-solid border-2 border-gray-600 text-center p-2" style="width:50px">남</td>
			<td class="border-solid border-2 border-gray-600 text-center p-2" style="width:150px">비트고등학교</td>
			<td class="border-solid border-2 border-gray-600 text-center p-2" style="width:50px">3</td>
			<td class="border-solid border-2 border-gray-600 text-center p-2" style="width:100px">010-0000-0000</td>
			<td class="border-solid border-2 border-gray-600 text-center p-2" style="width:100px">010-0000-0001</td>
		</tr>
	</table>
	<div class="flex justify-end w-full my-5">
		<a href="/lms/class_transfer"><span class="border-solid border-2 border-gray-600 rounded bg-info-200 mr-3">반 이동</span></a>
		<a href="/lms/leave_out"><span class="border-solid border-2 border-gray-600 rounded bg-info-200">휴/퇴원처리</span></a>
	</div>
</div>
</body>
</html>