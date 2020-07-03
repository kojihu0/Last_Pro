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
		<i class="xi-school"></i><span class="ml-2">반환현황</span>
	</div>
	<form method="post" action="/lms/refundDetailOk" class="w-full">
		<input type="hidden" value="${vo.student_no}" name="student_no"/>
		<input type="hidden" value="${vo.payment_no}" name="payment_no"/>
 		<table class="w-full">
		<tbody>
			<tr>
				<td class="border-solid border-2 border-gray-600 bg-info-300 text-center p-2" style="width:240px;">개강년월</td>
				<td class="border-solid border-2 border-gray-600 p-2">${vo.course_start_date}</td>
			</tr>
			<tr>
				<td class="border-solid border-2 border-gray-600 bg-info-300 text-center p-2" style="width:240px;">강좌명</td>
				<td class="border-solid border-2 border-gray-600 p-2">${vo.course_name}</td>
			</tr>
			<tr>
				<td class="border-solid border-2 border-gray-600 bg-info-300 text-center p-2" style="width:240px;">수납액</td>
				<td class="border-solid border-2 border-gray-600 p-2"><span id="payment_amount">${vo.payment_price}원</span>(${vo.payment_method})</td>
			</tr>
			<tr>
				<td class="border-solid border-2 border-gray-600 bg-info-300 text-center" style="width:240px;">반환내역</td>
				<td class="border-solid border-2 border-gray-600 p-2">
					<div class="flex">
						<div class="mb-2">반환액 : <input type="text" class="border-solid border-2 border-gray-600 refundPrice" name="refund_price" value="${vo.payment_price}" readonly/>원</div>
						<span class="ml-2 leading-7 numberTxt" style="color:red; display:none">숫자를 입력하셔야 합니다.</span>
					</div>
					<div class="mb-2">반환사유 : <input type="text" class="border-solid border-2 border-gray-600" id="refundReason" name="refund_reason"/></div>
					<div class="mb-2">반환방법 : <div class="inline-block relative w-40 mx-2">
								<select id="refundWay" name="refund_method" class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline">
								    <option value="현금반환" <c:if test="${vo.payment_method=='현금결제'}">selected</c:if>>현금반환</option>
								    <option value="카드반환"<c:if test="${vo.payment_method=='카드결제'}">selected</c:if>>카드취소</option>
								    <option value="이체반환"<c:if test="${vo.payment_method=='계좌이체'}">selected</c:if>>계좌이체</option>
					  	 		</select>
				  		    	<div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
				  			    	<svg class="fill-current h-4 w-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"><path d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z"/></svg>
							    </div>
							</div>
						</div>
					 <div class="mb-2 calendar">반환일자 : <input id="refundDay" type="text" name="refund_date" class="datepicker border-solid border-2 border-gray-600 ml-2"/></div>
					 비고 : <input type="text" name="refund_memo" class="border-solid border-2 border-gray-600"/>
				</td>
			</tr>
		</tbody>
	</table>
	<div class="text-center my-5">
		<input type="submit" value="등록하기" id="refundDetailOk" class="border-solid border-2 border-gray-600 bg-info-200 rounded"/>
	</div>
</form>
</div>
</body>
</html>