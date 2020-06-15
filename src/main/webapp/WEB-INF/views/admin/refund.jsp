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
	<span class="w-full my-8">●하정우/roy (서울서현고등학교 3학년)</span>
	<table class="w-full">
		<tr>
			<td class=" border-solid border-gray-600 border-2 text-center bg-info-300">신청강좌</td>
			<td class="border-solid border-gray-600 border-2">등록일/JAVASCRIPT</td>
		</tr>
	</table>
	<span><수납내역></span>
	<table class="w-full">
		<tr class="text-center">
			<td class="border-solid border-gray-600 border-2 bg-info-300">납부액</td>
			<td class="border-solid border-gray-600 border-2 bg-info-300">결제방법</td>
			<td class="border-solid border-gray-600 border-2 bg-info-300">납부일자</td>
			<td class="border-solid border-gray-600 border-2 bg-info-300">담당자</td>
			<td class="border-solid border-gray-600 border-2 bg-info-300">관리</td>
		</tr>
		<tr class="text-center">
			<td class="border-solid border-gray-600 border-2 p-2">500000</td>
			<td class="border-solid border-gray-600 border-2 p-2">카드</td>
			<td class="border-solid border-gray-600 border-2 p-2">2020-06-12</td>
			<td class="border-solid border-gray-600 border-2 p-2">담당자</td>
			<td class="border-solid border-gray-600 border-2 p-2">
				<a href="/lms/refundDetail"><span class="border-solid border-gray-600 border-2 bg-info-200 rounded">반환취소</span></a>
				<a href="/lms/modify_receive"><span class="border-solid border-gray-600 border-2 bg-info-200 rounded">수정</span></a>
				<a href="javascript:receive_delCheck()"><span class="border-solid border-gray-600 border-2 bg-info-200 rounded">삭제</span></a>
			</td>
		</tr>
	</table>
	<span><반환내역></span>
	<table class="w-full">
		<tr class="text-center">
			<td class="border-solid border-gray-600 border-2 bg-info-300">반환액</td>
			<td class="border-solid border-gray-600 border-2 bg-info-300">반환방법</td>
			<td class="border-solid border-gray-600 border-2 bg-info-300">반환일자</td>
			<td class="border-solid border-gray-600 border-2 bg-info-300">반환사유</td>
			<td class="border-solid border-gray-600 border-2 bg-info-300">비고</td>
			<td class="border-solid border-gray-600 border-2 bg-info-300">담당자</td>
			<td class="border-solid border-gray-600 border-2 bg-info-300">관리</td>
		</tr>
		<tr class="text-center">
			<td class="border-solid border-gray-600 border-2 p-2"><span style="color:red">1,000</span></td>
			<td class="border-solid border-gray-600 border-2 p-2">현금</td>
			<td class="border-solid border-gray-600 border-2 p-2">2020-06-01</td>
			<td class="border-solid border-gray-600 border-2 p-2">이사</td>
			<td class="border-solid border-gray-600 border-2 p-2">비고</td>
			<td class="border-solid border-gray-600 border-2 p-2">방문자</td>
			<td class="border-solid border-gray-600 border-2 p-2">
				<a href="/lms/modify_return"><span class="border-solid border-gray-600 border-2 rounded bg-info-200">수정</span></a>
				<a href="javascript:return_delCheck()"><span class="border-solid border-gray-600 border-2 rounded bg-info-200">삭제</span></a>
			</td>
		</tr>
	</table>
	<span class="my-5" style="color:red">- 반환/취소는 수강기간 종료전 퇴원에 의한 환불 사유발생시에만 이용하시고, 착오 수납금은 '수정'모드를 이용하세요.<br/>
          - 수정/반환/삭제시 포인트, 반이동처리 등은 별도로 관리하세요.</span>
</div>
</body>
</html>