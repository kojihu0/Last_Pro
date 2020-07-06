<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="w-full max-w-screen-xl my-0 mx-auto flex items-center justify-between flex-wrap px-8 xl:px-0">
	<div class="h-10 text-lg my-6">
		<i class="xi-school"></i><span class="ml-2">취소요청현황</span>
	</div>
	<form action="/lms/cancelRegister" class="w-full border-solid border-4 border-gray-600 flex bg-gray-200">
		<div class="mx-3 w-5/6">
			<div class="flex mt-3 mb-2">
				<div class="w-1/2 calendar">반환일자 : <input type="text" class="datepicker border-solid border-2 border-gray-600 ml-2 w-40" name="startDate"/> ~ <input type="text" class="datepicker border-solid border-2 border-gray-600 w-40" name="endDate"/></div>
				<div class="w-1/2 calendar">원 등록일자 : <input type="text" class="datepicker border-solid border-2 border-gray-600 ml-2 w-40" name="startDate2"/> ~ <input type="text" class="datepicker border-solid border-2 border-gray-600 w-40" name="endDate2"/></div>
			</div>
			<div class="flex mb-2">
				<span class="leading-8">검색조건 : </span><div class="inline-block relative w-40 mx-2">
					<select name="searchKey" class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline month">
						<option value="">==반환방법==</option>
					    <option value="카드반환">카드반환</option>
					    <option value="현금반환">현금반환</option>
					    <option value="이체반환">이체반환</option>
		  	 		</select>
		  		    <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
	   			    	<svg class="fill-current h-4 w-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"><path d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z"/></svg>
				    </div>
				</div>
				<input type="text" name="searchWord" placeholder="이름" class="border-solid border-2 border-gray-600"/>
			</div>
		</div>
		<input type="submit" value="검색하기" class="w-20 h-20 my-3 ml-12 border-solid border-2 border-gray-600 rounded"/>
	</form>
		<div class="my-2"><i class="xi-search"></i>검색 결과 : <span class="ml-1">${pageVO.totalRecord}</span>건</div>
	<table class="bg-info-300" style="width:100%; border-top: 1px solid #444444; border-collapse: collapse;">
		<tr>
			<td rowspan="2" class="border-solid border-2 border-gray-600 text-center" style="width:80px;">회원번호</td>
			<td rowspan="2" class="border-solid border-2 border-gray-600 text-center" style="width:90px;">구분</td>
			<td rowspan="2" class="border-solid border-2 border-gray-600 text-center" style="width:130px;">회원명</td>
			<td rowspan="2" class="border-solid border-2 border-gray-600 text-center" style="width:235px;">강좌명</td>
			<td colspan="3" class="border-solid border-2 border-gray-600 text-center" style="width:120px;">반환방법</td>
			<td colspan="3" class="border-solid border-2 border-gray-600 text-center" style="width:305px;">원 등록정보</td>
			<td rowspan="2" class="border-solid border-2 border-gray-600 text-center" style="width:150px;">반환사유</td>
			<td rowspan="2" class="border-solid border-2 border-gray-600 text-center" style="width:170px;">반환일자</td>
		</tr>
		<tr>
			<td class="border-solid border-2 border-gray-600 text-center" style="width:40px;">카드</td>
			<td class="border-solid border-2 border-gray-600 text-center" style="width:40px;">현금</td>
			<td class="border-solid border-2 border-gray-600 text-center" style="width:40px;">이체</td>
			<td class="border-solid border-2 border-gray-600 text-center" style="width:120px;">등록일</td>
			<td class="border-solid border-2 border-gray-600 text-center" style="width:85px;">결제액</td>
			<td class="border-solid border-2 border-gray-600 text-center" style="width:100px;">결제방법</td>
		</tr>
		<c:forEach var="vo" items="${list}">
			<tr class="bg-white hover:bg-gray-200" onClick="location.href='/lms/refund?student_no=${vo.student_no}&payment_no=${vo.payment_no}'">
				<td class="border-solid border-2 border-gray-600 text-center p-2" style="width:80px;">${vo.student_no}</td>
				<td class="border-solid border-2 border-gray-600 text-center p-2" style="width:90px;">${vo.payment_division}</td>
				<td class="border-solid border-2 border-gray-600 text-center p-2" style="width:130px;">${vo.payment_name}</td>
				<td class="border-solid border-2 border-gray-600 text-center p-2" style="width:235px;">${vo.course_name}</td>
				<td class="border-solid border-2 border-gray-600 text-center p-2" style="width:40px;"><c:if test="${vo.refund_method=='카드반환'}">O</c:if></td>
				<td class="border-solid border-2 border-gray-600 text-center p-2" style="width:40px;"><c:if test="${vo.refund_method=='현금반환'}">O</c:if></td>
				<td class="border-solid border-2 border-gray-600 text-center p-2" style="width:40px;"><c:if test="${vo.refund_method=='이체반환'}">O</c:if></td>
				<td class="border-solid border-2 border-gray-600 text-center p-2" style="width:120px;">${vo.payment_date}</td>
				<td class="border-solid border-2 border-gray-600 text-center p-2" style="width:85px;">${vo.payment_price}</td>
				<td class="border-solid border-2 border-gray-600 text-center p-2" style="width:100px;">${vo.payment_method}</td>
				<td class="border-solid border-2 border-gray-600 text-center p-2" style="width:150px;">${vo.refund_reason}</td>
				<td class="border-solid border-2 border-gray-600 text-center p-2" style="width:170px;">${vo.refund_date}</td>
			</tr>
		</c:forEach>
	</table>
	
	<div class="w-full max-w-screen-xl my-10 mx-auto mb-12">
		<ul class="flex justify-center" id="page">
			<c:if test="${pageVO.pageNum==1}">
				<li><i class="xi-angle-left"></i></li>
			</c:if>
			<c:if test="${pageVO.pageNum!=1}">
				<li class="hover:text-danger"><a href="/lms/cancelRegister?pageNum=${pageVO.pageNum-1}
					<c:if test="${searchKey!=null && searchKey!=''}">&searchKey=${pageVO.searchKey}</c:if>
					<c:if test="${searchWord!=null && searchWord!=''}">&searchWord=${pageVO.searchWord}</c:if>
					<c:if test="${startDate!=null && startDate!='' && endDate!=null && endDate!=''}">&startDate=${pageVO.startDate}&endDate=${pageVO.endDate}</c:if>
					<c:if test="${startDate2!=null && startDate2!='' && endDate2!=null && endDate2!=''}">&startDate2=${pageVO.startDate2}&endDate2=${pageVO.endDate2}</c:if>
				"><i class="xi-angle-left text-2xl"></i></a></li>
			</c:if>
			<c:forEach var="i" begin="${pageVO.startPage}" end="${pageVO.startPage + pageVO.onePageCount-1}">
				<c:if test="${i<=pageVO.totalPage}">
					<li class="hover:text-danger"><a href="/lms/cancelRegister?pageNum=${i}
					<c:if test="${searchKey!=null && searchKey!=''}">&searchKey=${pageVO.searchKey}</c:if>
					<c:if test="${searchWord!=null && searchWord!=''}">&searchWord=${pageVO.searchWord}</c:if>
					<c:if test="${startDate!=null && startDate!='' && endDate!=null && endDate!=''}">&startDate=${pageVO.startDate}&endDate=${pageVO.endDate}</c:if>
					<c:if test="${startDate2!=null && startDate2!='' && endDate2!=null && endDate2!=''}">&startDate2=${pageVO.startDate2}&endDate2=${pageVO.endDate2}</c:if>
					" <c:if test='${i==pageVO.pageNum}'>style='color:red'</c:if>><span class="text-2xl leading-none">${i}</span></a></li>
				</c:if>
			</c:forEach>
			<c:if test="${pageVO.pageNum == pageVO.totalPage}">
				<li><i class="xi-angle-right"></i></li>
			</c:if>
			<c:if test="${pageVO.pageNum < pageVO.totalPage}">
				<li class="hover:text-danger"><a href="/lms/cancelRegister?pageNum=${pageVO.pageNum+1}
					<c:if test="${searchKey!=null && searchKey!=''}">&searchKey=${pageVO.searchKey}</c:if>
					<c:if test="${searchWord!=null && searchWord!=''}">&searchWord=${pageVO.searchWord}</c:if>
					<c:if test="${startDate!=null && startDate!='' && endDate!=null && endDate!=''}">&startDate=${pageVO.startDate}&endDate=${pageVO.endDate}</c:if>
					<c:if test="${startDate2!=null && startDate2!='' && endDate2!=null && endDate2!=''}">&startDate2=${pageVO.startDate2}&endDate2=${pageVO.endDate2}</c:if>
				"><i class="xi-angle-right text-2xl"></i></a></li>
			</c:if>
		</ul>
	</div>
</div>
