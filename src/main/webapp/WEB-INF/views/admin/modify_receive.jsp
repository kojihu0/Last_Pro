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
	<span class="w-full my-8">●하정우/roy (서울서현고등학교 3학년)</span>
	<form class="w-full" method="post" action="/lms/modify_receiveOk"> 
		<table class="w-full">
		<tbody>
			<tr>
				<td class="border-solid border-2 border-gray-600 text-center bg-info-200 p-2">신청강좌</td>
				<td class="border-solid border-2 border-gray-600 p-2">[202006]JAVASCRIPT</td>
			</tr>
			<tr>
				<td class="border-solid border-2 border-gray-600 text-center bg-info-200 p-2">수수료 계산</td>
				<td class="border-solid border-2 border-gray-600 p-2">
					<table>
						<tbody>
							<tr>
								<td class="p-2">수강기간</td>
								<td class="p-2 calendar">
									<input type="text" class="datepicker border-solid border-2 border-gray-600 text-center"/> ~
									<input type="text" class="datepicker border-solid border-2 border-gray-600 text-center"/>
								</td>
							</tr>
							<tr>
								<td class="p-2">수강료</td>
								<td class="p-2"><input type="text" class="border-solid border-2 border-gray-600"/>원</td>
							</tr>
						</tbody>
					</table>
				</td>
			</tr>
			<tr>
				<td class="border-solid border-2 border-gray-600 text-center bg-info-200 p-2">수납내역</td>
				<td class="border-solid border-2 border-gray-600 text-center p-2">
					<table>
						<tbody>
							<tr>
								<td class="p-2">수납액</td>
								<td class="p-2"><input type="text" class="border-solid border-2 border-gray-600 text-center"/></td>
							</tr>
							<tr>
								<td class="p-2">결제방법</td>
								<td class="p-2">
									<div class="inline-block relative w-40 mx-2">
										<select class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline month">
											<option>카드결제</option>
										    <option>계좌이체</option>
										    <option>현금결제</option>
							  	 		</select>
						  		    	<div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
						  			    	<svg class="fill-current h-4 w-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"><path d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z"/></svg>
									    </div>
									</div>
								</td>
							</tr>
							<tr>
								<td class="p-2">납부일자</td>
								<td class="p-2 calendar"><input type="text" class="datepicker border-solid border-2 border-gray-600 text-center"/></td>
							</tr>
							<tr>
								<td class="p-2">비고</td>
								<td class="p-2"><input type="text" class="border-solid border-2 border-gray-600"/></td>
							</tr>
						</tbody>
					</table>
				</td>
			</tr>
		</tbody>
		</table>
		<div class="text-center my-5">
			<input type="submit" value="수정하기" class="border-solid border-2 border-gray-600 bg-info-200 rounded"/>
		</div>
	</form>
	<span style="color:red; margin:10px 0">- 타결제수단 분납 혹은 일시부족액 처리시 수납금액을 변경하세요.</span>
</div>
</body>
</html>