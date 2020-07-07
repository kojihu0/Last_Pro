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
	<form action="/lms/subjectRegister"class="w-full flex bg-gray-300 items-center">
		<div class="w-5/6 mx-3">
			<div class="flex mb-2 my-3">
				납부일자 : <input type="text" name="startDate" class="datepicker block appearance-none bg-white border border-gray-400 hover:border-gray-500 px-4 py-1 rounded shadow leading-tight focus:outline-none focus:shadow-outline ml-2"/> ~ <input type="text" name="endDate" class="datepicker block appearance-none bg-white border border-gray-400 hover:border-gray-500 px-4 py-1 rounded shadow leading-tight focus:outline-none focus:shadow-outline"/>
			</div>
			<div class="flex mb-2">
				<span class="leading-8">검색조건 : </span>
				<div class="inline-block relative w-40 mx-2">
					<select name="searchKey" class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline month">
						<option value="">==접수방법==</option>
					    <option value="카드결제">카드결제</option>
					    <option value="계좌이체">계좌이체</option>
					    <option value="현금결제">현금결제</option>
		  	 		</select>
		  		    <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
	   			    	<i class="xi-angle-down"></i>
				    </div>
				</div>
				<input type="text" name="searchWord" placeholder="이름" class="block appearance-none bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline"/>
			</div>
		</div>
		<input type="submit" value="검색하기" class="px-4 py-2 bg-gray-900 text-white rounded"/>
	</form>
		<div class="my-2"><i class="xi-search"></i>검색 결과 : <span class="ml-1">${pageVO.totalRecord}</span>건</div>
	<table class="w-full bg-info-300">
		<tr class="text-center">
			<td rowspan="2" class="border border-solid border-gray-600" style="width:80px">번호</td>
			<td rowspan="2" class="border border-solid border-gray-600" style="width:80px">구분</td>
			<td rowspan="2" class="border border-solid border-gray-600" style="width:120px">회원명</td>
			<td rowspan="2" class="border border-solid border-gray-600" style="width:220px">강좌명</td>
			<td colspan="3" class="border border-solid border-gray-600" class="text-center">결제방법</td>
			<td rowspan="2" class="border border-solid border-gray-600" style="width:130px">승인번호</td>
			<td rowspan="2" class="border border-solid border-gray-600" style="width:170px">납부일자</td>
			<td rowspan="2" class="border border-solid border-gray-600" style="width:200px">비고</td>
		</tr>
		<tr class="text-center">
			<td class="border border-solid border-gray-600">카드</td>
			<td class="border border-solid border-gray-600">현금</td>
			<td class="border border-solid border-gray-600">이체</td>
		</tr>
		<c:forEach var="vo" items="${list}">
			<tr class="text-center bg-white">
				<td class="border border-solid border-gray-600 p-2" style="width:80px">${vo.payment_no}</td>
				<td class="border border-solid border-gray-600 p-2" style="width:80px">${vo.payment_division}</td>
				<td class="border border-solid border-gray-600 p-2" style="width:120px">${vo.payment_name}</td>
				<td class="border border-solid border-gray-600 p-2" style="width:120px">${vo.course_name}</td>
				<td class="border border-solid border-gray-600 p-2" style="width:95px"><c:if test="${vo.payment_method=='카드결제'}">O</c:if></td>
				<td class="border border-solid border-gray-600 p-2" style="width:95px"><c:if test="${vo.payment_method=='현금결제'}">O</c:if></td>
				<td class="border border-solid border-gray-600 p-2" style="width:95px"><c:if test="${vo.payment_method=='계좌이체'}">O</c:if></td>
				<td class="border border-solid border-gray-600 p-2" style="width:130px">${vo.payment_account_num}</td>
				<td class="border border-solid border-gray-600 p-2" style="width:170px">${vo.payment_date}</td>
				<td class="border border-solid border-gray-600 p-2" style="width:200px">${vo.payment_memo}</td>
			</tr>
		</c:forEach>
	</table>
	
	<div class="w-full max-w-screen-xl my-10 mx-auto mb-12">
		<ul class="flex justify-center" id="page">
			<c:if test="${pageVO.pageNum==1}">
				<li><i class="xi-angle-left"></i></li>
			</c:if>
			<c:if test="${pageVO.pageNum!=1}">
				<li class="hover:text-danger"><a href="/lms/subjectRegister?pageNum=${pageVO.pageNum-1}
					<c:if test="${searchKey!=null && searchKey!=''}">&searchKey=${pageVO.searchKey}</c:if>
					<c:if test="${searchWord!=null && searchWord!=''}">&searchWord=${pageVO.searchWord}</c:if>
					<c:if test="${startDate!=null && startDate!='' && endDate!=null && endDate!=''}">&startDate=${pageVO.startDate}&endDate=${pageVO.endDate}</c:if>
				"><i class="xi-angle-left text-2xl"></i></a></li>
			</c:if>
			<c:forEach var="i" begin="${pageVO.startPage}" end="${pageVO.startPage + pageVO.onePageCount-1}">
				<c:if test="${i<=pageVO.totalPage}">
					<li class="hover:text-danger"><a href="/lms/subjectRegister?pageNum=${i}
					<c:if test="${searchKey!=null && searchKey!=''}">&searchKey=${pageVO.searchKey}</c:if>
					<c:if test="${searchWord!=null && searchWord!=''}">&searchWord=${pageVO.searchWord}</c:if>
					<c:if test="${startDate!=null && startDate!='' && endDate!=null && endDate!=''}">&startDate=${pageVO.startDate}&endDate=${pageVO.endDate}</c:if>
					" <c:if test='${i==pageVO.pageNum}'>style='color:red'</c:if>><span class="text-2xl leading-none">${i}</span></a></li>
				</c:if>
			</c:forEach>
			<c:if test="${pageVO.pageNum == pageVO.totalPage}"><li><i class="xi-angle-right"></i></li>
			</c:if>
			<c:if test="${pageVO.pageNum < pageVO.totalPage}">
				<li class="hover:text-danger"><a href="/lms/subjectRegister?pageNum=${pageVO.pageNum+1}
					<c:if test="${searchKey!=null && searchKey!=''}">&searchKey=${pageVO.searchKey}</c:if>
					<c:if test="${searchWord!=null && searchWord!=''}">&searchWord=${pageVO.searchWord}</c:if>
					<c:if test="${startDate!=null && startDate!='' && endDate!=null && endDate!=''}">&startDate=${pageVO.startDate}&endDate=${pageVO.endDate}</c:if>
				"><i class="xi-angle-right text-2xl"></i></a></li>
			</c:if>
		</ul>
	</div>
</div>
</body>
</html>