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
	<span class="w-full my-8">●하정우/roy</span>
	<form class="w-full" method="post" action="/lms/class_transferOk">
		<table class="w-full">
			<tr>
				<td class="bg-info-300 text-center border-2 border-solid border-gray-600 p-2" style="width:200px">이동 할 반 선택 : </td>
				<td class="border-2 border-solid border-gray-600 p-2">
					<div class="inline-block relative w-20 mx-2">
							<select class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline month">
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
				</td>
			</tr>
			<tr>
				<td class="bg-info-300 text-center border-2 border-solid border-gray-600 p-2">이동 일자 : </td>
				<td class="border-2 border-solid border-gray-600 p-2">
					<div class="calendar">
						<input type="text" class="datepicker border-solid border-2 border-gray-600 ml-2 text-center"/>
					</div>
				</td>
			</tr>
			<tr>
				<td class="bg-info-300 text-center border-2 border-solid border-gray-600 h-64 p-2">납부 내역 변경 : </td>
				<td class="border-2 border-solid border-gray-600 p-2">
					<div>
						<input type="radio" name="1"/>수납내역을 변경하지 않음<br/>
						<input type="radio" name="1"/>수납내역을 신규반으로 전액 변경처리함<br/>
						<input type="radio" name="1"/>수강료를 이동일자 기준으로 배분<br/>
					</div>
				</td>
			</tr>
		</table>
		<div class="text-center mt-3">
			<input type="submit" value="반이동 처리" class="border-2 border-gray-600 border-solid rounded bg-info-200"/>
		</div>
	</form>
</div>
</body>
</html>