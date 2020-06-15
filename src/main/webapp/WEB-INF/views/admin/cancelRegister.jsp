<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>취소요청현황</title>
</head>
<body>
<div class="w-full max-w-screen-xl my-0 mx-auto flex items-center justify-between flex-wrap px-8 xl:px-0">
	<div class="h-10 text-lg my-6">
		<i class="xi-school"></i><span class="ml-2">취소요청현황</span>
	</div>
	<form class="w-full border-solid border-4 border-gray-600 flex bg-gray-200">
		<div class="mx-3 w-5/6">
			<div class="flex my-2">
				<span class="leading-8">강좌구분 : </span><div class="inline-block relative w-30 mx-2">
					<select class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline year">
						<option>==</option>
					    <option>2010</option>
					    <option>2011</option>
					    <option>2012</option>
					    <option>2013</option>
					    <option>2014</option>
					    <option>2015</option>
					    <option>2016</option>
					    <option>2017</option>
					    <option>2018</option>
					    <option>2019</option>
					    <option>2020</option>
					    <option>2021</option>
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
			</div>
			<div class="flex mb-2">
				<div class="w-1/2 calendar">반환일자 : <input type="text" class="datepicker border-solid border-2 border-gray-600 ml-2"/> ~ <input type="text" class="datepicker border-solid border-2 border-gray-600"/></div>
				<div class="w-1/2 calendar">원 등록일자 : <input type="text" class="datepicker border-solid border-2 border-gray-600 ml-2"/> ~ <input type="text" class="datepicker border-solid border-2 border-gray-600"/></div>
			</div>
			<div class="flex mb-2">
				<span class="leading-8">검색조건 : </span><div class="inline-block relative w-40 mx-2">
					<select class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline month">
						<option>==반환방법==</option>
					    <option>카드취소</option>
					    <option>현금반환</option>
					    <option>계좌이체</option>
		  	 		</select>
		  		    <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
	   			    	<svg class="fill-current h-4 w-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"><path d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z"/></svg>
				    </div>
				</div>
				<input type="text" placeholder="이름" class="border-solid border-2 border-gray-600"/>
			</div>
		</div>
		<input type="submit" value="검색하기" class="w-20 h-20 mt-6 ml-12 border-solid border-2 border-gray-600 rounded"/>
	</form>
		<div class="my-2"><i class="xi-search"></i>검색 결과 : <span class="ml-1">0</span>건</div>
	<table class="bg-info-300" style="width:100%; border-top: 1px solid #444444; border-collapse: collapse;">
		<tr>
			<td rowspan="2" class="border-solid border-2 border-gray-600 text-center" style="width:80px;">회원번호</td>
			<td rowspan="2" class="border-solid border-2 border-gray-600 text-center" style="width:70px;">구분</td>
			<td rowspan="2" class="border-solid border-2 border-gray-600 text-center" style="width:150px;">회원명</td>
			<td rowspan="2" class="border-solid border-2 border-gray-600 text-center" style="width:200px;">강좌명</td>
			<td colspan="3" class="border-solid border-2 border-gray-600 text-center" style="width:120px;">반환방법</td>
			<td colspan="4" class="border-solid border-2 border-gray-600 text-center" style="width:305px;">원 등록정보</td>
			<td rowspan="2" class="border-solid border-2 border-gray-600 text-center" style="width:140px;">반환사유</td>
			<td rowspan="2" class="border-solid border-2 border-gray-600 text-center" style="width:160px;">반환일자</td>
			<td rowspan="2" class="border-solid border-2 border-gray-600 text-center" style="width:55px;">담당자</td>
		</tr>
		<tr>
			<td class="border-solid border-2 border-gray-600 text-center" style="width:40px;">카드</td>
			<td class="border-solid border-2 border-gray-600 text-center" style="width:40px;">현금</td>
			<td class="border-solid border-2 border-gray-600 text-center" style="width:40px;">이체</td>
			<td class="border-solid border-2 border-gray-600 text-center" style="width:100px;">등록일</td>
			<td class="border-solid border-2 border-gray-600 text-center" style="width:65px;">결제액</td>
			<td class="border-solid border-2 border-gray-600 text-center" style="width:85px;">결제방법</td>
			<td class="border-solid border-2 border-gray-600 text-center" style="width:55px;">카드명</td>
		</tr>
		<tr class="bg-white hover:bg-gray-200" onClick="location.href='/lms/refund'">
			<td class="border-solid border-2 border-gray-600 text-center p-2" style="width:80px;">10110</td>
			<td class="border-solid border-2 border-gray-600 text-center p-2" style="width:70px;">신규</td>
			<td class="border-solid border-2 border-gray-600 text-center p-2" style="width:150px;">하정우</td>
			<td class="border-solid border-2 border-gray-600 text-center p-2" style="width:200px;">JAVASCRIPT</td>
			<td class="border-solid border-2 border-gray-600 text-center p-2" style="width:40px;">O</td>
			<td class="border-solid border-2 border-gray-600 text-center p-2" style="width:40px;"></td>
			<td class="border-solid border-2 border-gray-600 text-center p-2" style="width:40px;"></td>
			<td class="border-solid border-2 border-gray-600 text-center p-2" style="width:100px;">등록일</td>
			<td class="border-solid border-2 border-gray-600 text-center p-2" style="width:65px;">500000</td>
			<td class="border-solid border-2 border-gray-600 text-center p-2" style="width:85px;">카드</td>
			<td class="border-solid border-2 border-gray-600 text-center p-2" style="width:55px;">신한</td>
			<td class="border-solid border-2 border-gray-600 text-center p-2" style="width:140px;">반환사유</td>
			<td class="border-solid border-2 border-gray-600 text-center p-2" style="width:160px;">반환일자</td>
			<td class="border-solid border-2 border-gray-600 text-center p-2" style="width:55px;">담당자</td>
		</tr>
	</table>
</div>
</body>
</html>