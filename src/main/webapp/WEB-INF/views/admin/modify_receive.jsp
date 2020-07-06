<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="w-full max-w-screen-xl my-0 mx-auto flex items-center justify-between flex-wrap px-8 xl:px-0">
	<div class="h-10 text-lg my-6 w-full">
		<i class="xi-school"></i><span class="ml-2">반환현황</span>
	</div>
	<span class="w-full my-8">●${vo.payment_name}</span>
	<form class="w-full" method="post" action="/lms/modify_receiveOk"> 
		<input type="hidden" name="student_no" value="${vo.student_no}"/>
		<input type="hidden" name="payment_no" value="${vo.payment_no}"/>
		<table class="w-full">
		<tbody>
			<tr>
				<td class="border-solid border border-gray-600 text-center bg-info-200 p-2">신청강좌</td>
				<td class="border-solid border border-gray-600 p-2">[${vo.payment_date}]${vo.course_name}</td>
			</tr>
			<tr>
				<td class="border-solid border border-gray-600 text-center bg-info-200 p-2">수강정보</td>
				<td class="border-solid border border-gray-600 p-2">
					<table>
						<tbody>
							<tr>
								<td class="p-2">수강기간</td>
								<td class="p-2 calendar">
									<input type="text" class="datepicker border-solid border border-gray-600 text-center" name="course_start_date" value="${vo.course_start_date}"/> ~
									<input type="text" class="datepicker border-solid border border-gray-600 text-center" name="course_end_date" value="${vo.course_end_date}"/>
								</td>
							</tr>
							<tr>
								<td class="p-2">수강료</td>
								<td class="p-2"><input type="text" class="border-solid border border-gray-600 text-center" name="course_price" value="${vo.course_price}"readonly/>원</td>
							</tr>
						</tbody>
					</table>
				</td>
			</tr>
			<tr>
				<td class="border-solid border border-gray-600 text-center bg-info-200 p-2">수납내역</td>
				<td class="border-solid border border-gray-600 text-center p-2">
					<table>
						<tbody>
							<tr>
								<td class="p-2">수납액</td>
								<td class="p-2"><input type="text" name="payment_price" class="border-solid border border-gray-600 text-center" value="${vo.payment_price}"/>원</td>
							</tr>
							<tr>
								<td class="p-2">결제방법</td>
								<td class="p-2">
									<div class="inline-block relative w-40 mx-2">
										<select name="payment_method" class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline">
											<option value="카드결제" <c:if test="${vo.payment_method=='카드결제'}">selected</c:if>>카드결제</option>
										    <option value="계좌이체" <c:if test="${vo.payment_method=='계좌이체'}">selected</c:if>>계좌이체</option>
										    <option value="현금결제" <c:if test="${vo.payment_method=='현금결제'}">selected</c:if>>현금결제</option>
							  	 		</select>
						  		    	<div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
						  			    	<i class="xi-angle-down"></i>
									    </div>
									</div>
								</td>
							</tr>
							<tr>
								<td class="p-2">납부일자</td>
								<td class="p-2 calendar"><input type="text" class="datepicker border-solid border border-gray-600 text-center" name="payment_date" value="${vo.payment_date}"/></td>
							</tr>
							<tr>
								<td class="p-2">비고</td>
								<td class="p-2"><input type="text" class="border-solid border border-gray-600" name="payment_memo" value="${vo.payment_memo}"/></td>
							</tr>
						</tbody>
					</table>
				</td>
			</tr>
		</tbody>
		</table>
		<div class="text-center my-5">
			<input type="submit" value="수정하기" class="border-solid border border-gray-600 bg-info-200 rounded"/>
		</div>
	</form>
	<span style="color:red; margin:10px 0">- 타결제수단 분납 혹은 일시부족액 처리시 수납금액을 변경하세요.</span>
</div>
