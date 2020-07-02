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
	<a href="/lms/cancelRegister" class="mb-2"><i class="xi-angle-left-min">목록으로</i></a>
	<span class="w-full my-8">●${vo.payment_name}</span>
	<table class="w-full">
		<tr>
			<td class=" border-solid border-gray-600 border-2 text-center bg-info-300">신청강좌</td>
			<td class="border-solid border-gray-600 border-2">${vo.course_start_date}/${vo.course_name}/${vo.course_time}</td>
		</tr>
	</table>
	<span><수납내역></span>
	<table class="w-full">
		<tr class="text-center">
			<td class="border-solid border-gray-600 border-2 bg-info-300">납부액</td>
			<td class="border-solid border-gray-600 border-2 bg-info-300">결제방법</td>
			<td class="border-solid border-gray-600 border-2 bg-info-300">납부일자</td>
			<td class="border-solid border-gray-600 border-2 bg-info-300">관리</td>
		</tr>
		<tr class="text-center">
			<td class="border-solid border-gray-600 border-2 p-2">${vo.payment_price}원</td>
			<td class="border-solid border-gray-600 border-2 p-2">${vo.payment_method}</td>
			<td class="border-solid border-gray-600 border-2 p-2">${vo.payment_date}</td>
			<td class="border-solid border-gray-600 border-2 p-2">
				<c:if test="${vo.refund_price==null || vo.refund_price==0}">
					<a href="/lms/refundDetail?student_no=${vo.student_no}&payment_no=${vo.payment_no}"><span class="border-solid border-gray-600 border-2 bg-info-200 rounded">반환/취소</span></a>
				</c:if>
				<a href="/lms/modify_receive?student_no=${vo.student_no}&payment_no=${vo.payment_no}"><span class="border-solid border-gray-600 border-2 bg-info-200 rounded">수정</span></a>
				<a href="javascript:receive_delCheck(${vo.student_no},${vo2.refund_price},${vo.payment_no})"><span class="border-solid border-gray-600 border-2 bg-info-200 rounded">삭제</span></a>
			</td>
		</tr>
	</table>
	<c:if test="${vo2.refund_price!=null && vo2.refund_price!=0}">
		<span><반환내역></span>
		<table class="w-full">
			<tr class="text-center">
				<td class="border-solid border-gray-600 border-2 bg-info-300">반환액</td>
				<td class="border-solid border-gray-600 border-2 bg-info-300">반환방법</td>
				<td class="border-solid border-gray-600 border-2 bg-info-300">반환일자</td>
				<td class="border-solid border-gray-600 border-2 bg-info-300">반환사유</td>
				<td class="border-solid border-gray-600 border-2 bg-info-300">비고</td>
				<td class="border-solid border-gray-600 border-2 bg-info-300">관리</td>
			</tr>
				<tr class="text-center">
					<td class="border-solid border-gray-600 border-2 p-2"><span style="color:red">${vo2.refund_price}원</span></td>
					<td class="border-solid border-gray-600 border-2 p-2">${vo2.refund_method}</td>
					<td class="border-solid border-gray-600 border-2 p-2">${vo2.refund_date}</td>
					<td class="border-solid border-gray-600 border-2 p-2">${vo2.refund_reason}</td>
					<td class="border-solid border-gray-600 border-2 p-2">${vo2.refund_memo}</td>
					<td class="border-solid border-gray-600 border-2 p-2">
						<!--<a href="/lms/modify_return?student_no=${vo2.student_no}&payment_no=${vo2.payment_no}"><span class="border-solid border-gray-600 border-2 rounded bg-info-200">수정</span></a>-->
						<a href="javascript:return_delCheck(${vo2.student_no},${vo2.payment_no})"><span class="border-solid border-gray-600 border-2 rounded bg-info-200">삭제</span></a>
					</td>
				</tr>
		</table>
	</c:if>
	<span class="my-5" style="color:red">- 반환/취소는 수강기간 종료전 퇴원에 의한 환불 사유발생시에만 이용하시고, 착오 수납금은 '수정'모드를 이용하세요.<br/>
          - 수정/반환/삭제시 포인트, 반이동처리 등은 별도로 관리하세요.</span>
</div>
</body>
</html>