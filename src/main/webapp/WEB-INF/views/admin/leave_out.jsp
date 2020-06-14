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
	<form method="post" action="" class="w-full my-3">
		<table class="w-full">
			<tr class="text-center">
				<td class="border-2 border-solid border-gray-600 bg-info-300">대상자</td>
				<td class="border-2 border-solid border-gray-600">
					<table class="w-full">
						<tr>
							<td class="border-2 border-solid border-gray-600">선택</td>
							<td class="border-2 border-solid border-gray-600">수강생</td>
							<td class="border-2 border-solid border-gray-600">학생휴대폰</td>
							<td class="border-2 border-solid border-gray-600">부모휴대폰</td>	
						</tr>
						<tr>
							<td class="border-2 border-solid border-gray-600"><input type="checkbox"/></td>
							<td class="border-2 border-solid border-gray-600">하정우(서현고등학교 2학년)</td>
							<td class="border-2 border-solid border-gray-600">010-0000-0001</td>
							<td class="border-2 border-solid border-gray-600">010-0000-0000</td>	
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td class="border-2 border-solid border-gray-600 bg-info-300 text-center">구분</td>
				<td class="border-2 border-solid border-gray-600">
					<div>
						<input type="radio" value="leave" name="leave_out"/>휴원
						<input type="radio" value="out" name="leave_out"/>퇴원
					</div>
				</td>
			</tr>
			<tr>
				<td class="border-2 border-solid border-gray-600 bg-info-300 text-center">휴/퇴원 일지</td>
				<td class="border-2 border-solid border-gray-600">
					<div class="calendar">
						<input type="text" class="datepicker border-solid border-2 border-gray-600 ml-2"/>
					</div>
				</td>
			</tr>
			<tr>
				<td class="border-2 border-solid border-gray-600 bg-info-300 text-center">비고</td>
				<td class="border-2 border-solid border-gray-600"><input type="text" class="w-64 border-2 border-solid border-gray-600"/></td>
			</tr>
		</table>
		<div class="text-center my-3 ">
			<input type="submit" value="처리하기" class="border-2 border-solid border-gray-600"/>
		</div>
	</form>
</div>
</body>
</html>