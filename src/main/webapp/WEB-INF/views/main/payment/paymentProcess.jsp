<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script> 
<script>


	var pay_method;
	var name;
	var	buyer_email; 
	var	buyer_name;
	var	buyer_tel;
	var amount;
	
$(function(){
function payment(){//버튼 실행시 제이쿼리가 실행되면서 변수로 만들어 놓은 값 넣기 
	//매개변수에 데이터 베이스 값을 넣거나 value값을 가져오는 방법 시도해보기
	console.log(pay_method,name,
			buyer_email,buyer_name,
			buyer_tel,amount);
				
var IMP = window.IMP;
   IMP.init('imp81940054');
   IMP.request_pay({
       pg : 'inicis',
       pay_method : pay_method,
       merchant_uid : 'merchant_' + new Date().getTime(),
       name : name,
       amount : amount,
       buyer_email :  buyer_email,
       buyer_name : buyer_name,
       buyer_tel : buyer_tel,
   }, function(rsp) {
       if ( rsp.success ) {
           var msg = '결제가 완료되었습니다.';
           msg += '고유ID : ' + rsp.imp_uid;
           msg += '상점 거래ID : ' + rsp.merchant_uid;
           msg += '결제 금액 : ' + rsp.paid_amount;
           msg += '카드 승인번호 : ' + rsp.apply_num;
       } else {
           var msg = '결제에 실패하였습니다.';
           msg += '에러내용 : ' + rsp.error_msg;
       }
       alert(msg);
   });
}
	$(document).on("click","#payReser",function(){
		pay_method = document.paymentForm.paymentSelectRadio.value;
		name = $("#courseName").text();
		buyer_email = $("#paymentEmail").val();
		buyer_name = $("#paymentName").val();
		buyer_tel = $("#paymentTel").val();
		amount =  $("#coursePrice").text();
		
		payment()
	});
});
</script>
		<!--헤더(메뉴)-->
<div id="content" class="w-full my-0 mx-auto">
	<div id="mainBanner" style="background-size:cover;background-image:url('<%=request.getContextPath()%>/img/top-banner.jpg')" class="mb-4  w-full ">
		<div class="container my-0 mx-auto">
			<h1 class="border-l-4 border-brand-600 text-5xl text-white roboto-slab font-bold">&nbsp;&nbsp;PAYMENT</h1>
		</div>
	</div>
	<!-----------------페이지 내용----------------->
	<div class="m-0 m-auto w-full max-w-screen-xl mt-8 mb-4 mx-auto">
		<span class="text-gray-500"><a href="<%=request.getContextPath()%>/">Home</a>&nbsp;&nbsp;<i class="xi-angle-right"></i>&nbsp;&nbsp;PayMent</span>
		<div id="hr" class="my-4 border-t border-solid"></div>
			<div class="m-0 m-auto text-center"><span class="font-bold text-5xl text-black ">수강신청</span></div>
			<div>
				<div>&nbsp;&nbsp;&nbsp;<span>이름</span>&nbsp;&nbsp;<input value="${vo2.student_name_ko }" name="student_name_ko" class="appearance-none  w-1/3 bg-gray-200  text-gray-700 border border-gray-200 py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white focus:border-brand-500" id="paymentName" type="text" placeholder="NAME"/></div><br/>
	   			<div><span>아이디</span>&nbsp;&nbsp;<input value="${vo2.student_id }" name="student_id" class="appearance-none  w-1/3 bg-gray-200  text-gray-700 border border-gray-200 py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white focus:border-brand-500" id="paymentId" type="text" placeholder="ID"/></div><br/>
	   			<div><span>이메일</span>&nbsp;&nbsp;<input value="${vo2.student_email }" name="student_email" class="appearance-none  w-1/3 bg-gray-200  text-gray-700 border border-gray-200 py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white focus:border-brand-500" id="paymentEmail" type="text" placeholder="EMAIL"/></div><br/>
	   			<div><span>연락처</span>&nbsp;&nbsp;<input value="${vo2.student_tel_phone }" name="student_tel_phone" class="appearance-none  w-1/3 bg-gray-200  text-gray-700 border border-gray-200 py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white focus:border-brand-500" id="paymentTel" type="text" placeholder="TEL"/></div>
			</div>
		<div class="mb-4 mt-4"><span class="text-lg font-bold">결제 강좌 정보</span></div>
		<table class="w-full border border-gray-200 w-1/2 font-medium">
			<tbody class="border border-gray-200 font-medium text-center text-lg">
				<tr style="height: 23px;" class="border border-gray-200">
					<td style="height: 23px;" class="border border-gray-200">&nbsp;강좌명&nbsp;</td>
					<td style="height: 23px;" class="border border-gray-200">&nbsp;강사명&nbsp;</td>
					<td style="height: 23px;" class="border border-gray-200">&nbsp;개강날짜&nbsp;</td>
					<td style="height: 23px;" class="border border-gray-200">&nbsp;가격&nbsp;</td>
				</tr>
				<tr style="height: 23px;" class="border border-gray-200">
					<td id="courseName" style="height: 23px;" class="border border-gray-200">${vo.course_name }</td>
					<td style="height: 23px;" class="border border-gray-200">${vo.employee_name }</td>
					<td style="height: 23px;" class="border border-gray-200">${vo.course_start_date }</td>
					<td id="coursePrice" style="height: 23px;" class="border border-gray-200">${vo.course_price }</td>
				</tr>
			</tbody>
		</table>
			<!-- DivTable.com -->
		<form name="paymentForm" class="mt-4 border bg-gray-200 font-bold text-gray-900 text-xl">
			<input type="radio" value="trans" name="paymentSelectRadio" class="ml-4"/>&nbsp;&nbsp;&nbsp;<span>계좌이체 </span><br/>
			<div></div>
			<input type="radio" value="card" name="paymentSelectRadio" class="ml-4"/>&nbsp;&nbsp;&nbsp;<span>신용카드</span><br/>
		</form>
		<div class="mt-12 mb-8"><span class="text-lg font-semibold">총 결제 금액 : ${vo.course_price }원</span></div>
		    
		<div class="w-full text-center">
			<input type="submit" id="payReser" class="w-full text-2xl px-2 py-4 justify-center leading-9 h-full text-white bg-brand-500" id="payReser" value="결제 하기"/>
		</div>
	</div>
</div><!-----------------페이지 내용 끝----------------->
