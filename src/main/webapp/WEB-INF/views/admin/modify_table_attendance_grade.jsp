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
		<i class="xi-school"></i><span class="ml-2">반별출결 및 과제현관리</span>
	</div>
	<a href="/lms/attendance__grade" class="mb-2"><i class="xi-angle-left-min">목록으로</i></a>
	<form class="w-full" action="/lms/table_attendance_grade">
		<table class="bg-info-300 text-center" style="width:100%; border-top: 1px solid #444444; border-collapse: collapse;">
			<tr>
				<td style="width:200px;">수강생</td>
				<td style="width:100px;">수강일자</td>
				<td style="width:100px;">출결상태</td>
				<td style="width:100px;">과제제출</td>
				<td style="width:200px">비고</td>
			</tr>
		</table>
		<table class="text-center" style="width:100%; border-top: 1px solid #444444;">
			<tr>
				<td style="width:200px">JAVASCRIPT/roy/(1,서현고등학교 2학년)</td>
				<td style="width:100px;">2020-06-11</td>
				<td style="width:100px;">
					<div class="inline-block relative w-20 mx-2">
					<select class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline month">
						<option>출석</option>
					    <option>결석</option>
					    <option>지각</option>
		  	 		</select>
	  		    	<div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
	  			    	<svg class="fill-current h-4 w-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"><path d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z"/></svg>
				    </div>
				</div>
				</td>
				<td style="width:100px;">
					<div class="inline-block relative w-20 mx-2">
					<select class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline month">
						<option>제출</option>
					    <option>미제출</option>
					    <option>미흡</option>
		  	 		</select>
	  		    	<div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
	  			    	<svg class="fill-current h-4 w-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"><path d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z"/></svg>
				    </div>
				</div>
				</td>
				<td style="width:200px;"></td>
			</tr>
		</table>
		<input type="checkbox" name="deleteRecord" class="my-2"/>위 출결/숙제 기록을 삭제함
		<div class="text-center my-3">
			<input type="submit" value="전송하기"/>
		</div>
	</form>
</div>
</body>
</html>