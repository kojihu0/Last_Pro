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
	<form class="w-full border-solid border-4 border-gray-600 flex bg-gray-200">
		<div class="mx-3 w-5/6">
			<div class="flex my-2">
				<span class="leading-8">강좌구분 : </span><div class="inline-block relative w-30 mx-2">
					<select class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline year">
						<option>==</option>
						<c:forEach var="i" begin="2010" end="2020">
							<option value="${i}">${i}</option>
						</c:forEach>
		  	 		</select>
				    <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
					    <svg class="fill-current h-4 w-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"><path d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z"/></svg>
				    </div>
				</div>
				<div class="inline-block relative w-20 mx-2">
					<select class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline month">
						<option>==</option>
					    <option>01</option>
					    <option>02</option>
					    <option>03</option>
					    <option>04</option>
					    <option>05</option>
					    <option>06</option>
					    <option>07</option>
					    <option>08</option>
					    <option>09</option>
					    <option>10</option>
					    <option>11</option>
					    <option>12</option>
		  	 		</select>
	  		    	<div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
	  			    	<svg class="fill-current h-4 w-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"><path d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z"/></svg>
				    </div>
				</div>
				<div class="inline-block relative w-40 mx-2">
					<select class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline month">
						<option>==</option>
					    <option>JAVA</option>
					    <option>HTML/CSS</option>
					    <option>JAVASCRIPT</option>
					    <option>SPRING</option>
					    <option>MYBATIS</option>
		  	 		</select>
		  		    <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
	   			    	<svg class="fill-current h-4 w-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"><path d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z"/></svg>
				    </div>
				</div>
				<div class="inline-block relative w-40 mx-2">
					<select class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline month">
						<option>개강</option>
					    <option>폐강</option>
					    <option>전체</option>
		  	 		</select>
		  		    <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
	   			    	<svg class="fill-current h-4 w-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"><path d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z"/></svg>
				    </div>
				</div>
			</div>
		</div>
		<input type="submit" value="검색하기" class="w-20 h-10 my-2 ml-12 border-solid border-2 border-gray-600 rounded"/>
	</form>
	<table class="bg-info-300 text-center" style="width:100%; border-top: 1px solid #444444;">
		<tr>
			<td class="border-solid border-2 border-gray-600" style="width:100px;">번호</td>
			<td class="border-solid border-2 border-gray-600" style="width:100px;">개강년월</td>
			<td class="border-solid border-2 border-gray-600" style="width:200px;">과정명</td>
			<td class="border-solid border-2 border-gray-600" style="width:200px;">강좌명</td>
			<td class="border-solid border-2 border-gray-600" style="width:200px;">반명</td>
			<td class="border-solid border-2 border-gray-600" style="width:100px;">인원</td>
			<td class="border-solid border-2 border-gray-600" style="width:100px;">학생관리</td>
		</tr>
		<tr class="bg-white">
			<td class="border-solid border-2 border-gray-600 p-2" style="width:100px;">1</td>
			<td class="border-solid border-2 border-gray-600 p-2" style="width:100px;">2020-06</td>
			<td class="border-solid border-2 border-gray-600 p-2" style="width:200px;">JAVASCRIPT</td>
			<td class="border-solid border-2 border-gray-600 p-2" style="width:200px;">JAVASCRIPT여렵지 않아요</td>
			<td class="border-solid border-2 border-gray-600 p-2" style="width:200px;">JAVASCRIPT개발자 양성</td>
			<td class="border-solid border-2 border-gray-600 p-2" style="width:100px;">인원 수 : <span>15</span>명</td>
			<td class="border-solid border-2 border-gray-600 p-2" style="width:100px;"><a href="/lms/management_of_student" class="border-solid border-2 border-gray-600 bg-info-200 rounded">학생관리</a></td>
		</tr>
	</table>
</div>
</body>
</html>