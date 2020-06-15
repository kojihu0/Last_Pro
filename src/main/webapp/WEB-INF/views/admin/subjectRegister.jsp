<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>접수현황</title>
</head>
<body>
<div class="w-full max-w-screen-xl my-0 mx-auto flex items-center justify-between flex-wrap px-8 xl:px-0">
	<div class="h-10 text-lg my-6">
		<i class="xi-school"></i><span class="ml-2">접수현황</span>
	</div>
	<form class="w-full border-solid border-4 border-gray-600 flex bg-gray-200">
		<div class="mx-3">
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
				납부일자 : <input type="text" class="datepicker border-solid border-2 border-gray-600 ml-2"/> ~ <input type="text" class="datepicker border-solid border-2 border-gray-600"/>
			</div>
			<div class="flex mb-2">
				<span class="leading-8">검색조건 : </span><div class="inline-block relative w-40 mx-2">
					<select class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline month">
						<option>==접수방법==</option>
					    <option>카드결제</option>
					    <option>계좌이체</option>
					    <option>현금결제</option>
		  	 		</select>
		  		    <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
	   			    	<svg class="fill-current h-4 w-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"><path d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z"/></svg>
				    </div>
				</div>
				<div class="inline-block relative w-40 mx-2">
					<select class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline month">
						<option>==카드구분==</option>
					    <option>비씨카드</option>
					    <option>국민카드</option>
					    <option>외환카드</option>
					    <option>삼성카드</option>
					    <option>신한카드</option>
					    <option>해외카드(비자,마스터)</option>
					    <option>현대카드</option>
					    <option>롯데카드</option>
					    <option>농협카드</option>
					    <option>수협카드</option>
					    <option>씨티카드(한미)</option>
					    <option>하나SK카드</option>
					    <option>광주카드</option>
					    <option>전북카드</option>
					    <option>씨티카드(신세계한미)</option>
					    <option>해외카드(JBC)</option>
					    <option>씨티카드</option>
					    <option>KCP</option>
		  	 		</select>
		  		    <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
	   			    	<svg class="fill-current h-4 w-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"><path d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z"/></svg>
				    </div>
				</div>
				<input type="text" placeholder="이름" class="border-solid border-2 border-gray-600"/>
			</div>
		</div>
		<input type="submit" value="검색하기" class="w-20 h-20 mt-6 border-solid border-2 border-gray-600 rounded" style="margin-left:400px;"/>
	</form>
		<div class="my-2"><i class="xi-search"></i>검색 결과 : <span class="ml-1">0</span>건</div>
	<table class="w-full bg-info-300">
		<tr class="text-center">
			<td rowspan="2" class="border-2 border-solid border-gray-600" style="width:70px">번호</td>
			<td rowspan="2" class="border-2 border-solid border-gray-600" style="width:70px">구분</td>
			<td rowspan="2" class="border-2 border-solid border-gray-600" style="width:100px">회원명</td>
			<td rowspan="2" class="border-2 border-solid border-gray-600" style="width:100px">강좌명</td>
			<td colspan="3" class="border-2 border-solid border-gray-600" class="text-center">결제방법</td>
			<td rowspan="2" class="border-2 border-solid border-gray-600" style="width:100px">카드명</td>
			<td rowspan="2" class="border-2 border-solid border-gray-600" style="width:130px">승인번호</td>
			<td rowspan="2" class="border-2 border-solid border-gray-600" style="width:130px">납부일자</td>
			<td rowspan="2" class="border-2 border-solid border-gray-600" style="width:100px">담당자</td>
			<td rowspan="2" class="border-2 border-solid border-gray-600" style="width:200px">비고</td>
		</tr>
		<tr class="text-center">
			<td class="border-2 border-solid border-gray-600">카드</td>
			<td class="border-2 border-solid border-gray-600">현금</td>
			<td class="border-2 border-solid border-gray-600">이체</td>
		</tr>
		<tr class="text-center bg-white">
			<td class="border-2 border-solid border-gray-600 p-2" style="width:70px">번호</td>
			<td class="border-2 border-solid border-gray-600 p-2" style="width:70px">구분</td>
			<td class="border-2 border-solid border-gray-600 p-2" style="width:100px">회원명</td>
			<td class="border-2 border-solid border-gray-600 p-2" style="width:100px">강좌명</td>
			<td class="border-2 border-solid border-gray-600 p-2" style="width:95px">O</td>
			<td class="border-2 border-solid border-gray-600 p-2" style="width:95px"></td>
			<td class="border-2 border-solid border-gray-600 p-2" style="width:95px"></td>
			<td class="border-2 border-solid border-gray-600 p-2" style="width:100px">카드명</td>
			<td class="border-2 border-solid border-gray-600 p-2" style="width:130px">승인번호</td>
			<td class="border-2 border-solid border-gray-600 p-2" style="width:130px">납부일자</td>
			<td class="border-2 border-solid border-gray-600 p-2" style="width:100px">담당자</td>
			<td class="border-2 border-solid border-gray-600 p-2" style="width:200px">비고</td>
		</tr>
	</table>
</div>
</body>
</html>