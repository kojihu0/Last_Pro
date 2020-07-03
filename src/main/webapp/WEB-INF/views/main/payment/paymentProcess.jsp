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
	    	
	    	
	    	var sendData = {
	    			"buyer_email" : $('#paymentEmail').val(),
	    			"name" : $("#courseName").text(),  
	    			"buyer_name" : $("#paymentName").val(),  
	    			"buyer_tel" : $("#paymentTel").val(),  
	    			"employee_name" : $("#employee_name").text(),
		    		"pay_method" : document.paymentForm.paymentSelectRadio.value,
	    			"amount" : $("#coursePrice").text(),
	    			
	    	}
	    	
	        //[1] 서버단에서 결제정보 조회를 위해 jQuery ajax로 imp_uid 전달하기
	        $.ajax({
		         url: "<%=ctx%>/paymentComplete", //cross-domain error가 발생하지 않도록 동일한 도메인으로 전송
		         type: 'POST',
		         dataType: 'json',
		         data : sendData,
		         m_redirect_url : 'https://www.yourdomain.com/payments/complete'
	        }).done(function(data) {
	         //[2] 서버에서 REST API로 결제정보확인 및 서비스루틴이 정상적인 경우
	         if ( everythings_fine ) {
		          var msg = '결제가 완료되었습니다.';
		          msg += '\n고유ID : ' + rsp.imp_uid;
		          msg += '\n상점 거래ID : ' + rsp.merchant_uid;
		          msg += '\결제 금액 : ' + rsp.paid_amount;
		          msg += '카드 승인번호 : ' + rsp.apply_num;
	          alert(msg);
	         } else {
	          //[3] 아직 제대로 결제가 되지 않았습니다.
	          //[4] 결제된 금액이 요청한 금액과 달라 결제를 자동취소처리하였습니다.
	         }
	        });
	        
	       }else {
	           var msg = '결제에 실패하였습니다.';
	           msg += '에러내용 : ' + rsp.error_msg;
	           alert(msg);
	           location.href="<%=ctx%>/"
	       }
	    location.href="<%=ctx%>/paymentCompleted"
	    
   });
}
	$(document).on("click","#payReser",function(){
		pay_method = document.paymentForm.paymentSelectRadio.value;
		name = $("#courseName").text();
		buyer_email = $("#paymentEmail").val();
		buyer_name = $("#paymentName").val();
		buyer_tel = $("#paymentTel").val();
		amount =  10;//$("#coursePrice").text();
		//유효성 검사 하기 
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
			<div class="m-0 m-auto text-center"><span class="font-bold text-5xl text-black ">온라인 결제</span></div>
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
					<td id="employee_name "style="height: 23px;" class="border border-gray-200">${vo.employee_name }</td>
					<td style="height: 23px;" class="border border-gray-200">${vo.course_start_date }</td>
					<td id="coursePrice" style="height: 23px;" class="border border-gray-200">${vo.course_price }</td>
				</tr>
			</tbody>
		</table>
			<!-- DivTable.com -->
			<div class="mb-4 mt-4"><span class="text-lg font-bold">결제 방법</span></div>
		<form name="paymentForm" class="mt-4  font-bold text-gray-900 text-xl">
			<input type="radio"id="trans" value="trans" name="paymentSelectRadio" class="ml-4"/>&nbsp;&nbsp;&nbsp;<span>계좌이체 </span>
			<div></div>
			<input type="radio"id="card" value="card" name="paymentSelectRadio" class="ml-4"/>&nbsp;&nbsp;&nbsp;<span>신용카드</span><br/>
			<input type="radio" id="radioCash" value="현금결제" name="paymentSelectRadio" class="ml-4"/>&nbsp;&nbsp;&nbsp;<span>현금결제(현금 결제는 수업당일 날에 결제 가능합니다.)</span><br/>
		</form>
		<div class="mb-4 mt-8"><span class="text-lg font-bold">약관 동의</span></div>
	    	<div class="mx-8 mt-4 py-2">
				<hr/>
				<div class="flex items-center justify-between my-2 text-xl">
					<span>· 온라인 결제안내&nbsp;(필수)&nbsp;<input value="내용보기" name="chk" style="margin-left: 10px" type="button" id="ajaxButton1" class="text-brand-500 input_check cursor-pointer focus:outline-none  text-xl bg-white underline" /></span><br/>
					<input type="checkbox" style="width:25px;height:25px;"name="chk"/>
				</div>
				<div id="pContent1" style="display:none" class="w-full ml-2 bg-gray-200">
					  "결제" 버튼을 누르면 결제정보를 안전하게 암호화하기 위한 플러그인 창이 출력됩니다.<br/>
					    플러그인에서 제시하는 단계에 따라 정보를 입력 한 후 [결제정보확인]단계에서 “확인” 을 누르면 결제처리가 시작됩니다.<br/>
					    통신환경에 따라 다소 시간이 걸릴수도 있으니 결제결과가 표시될때까지 “중지” 을 누르거나 브라우저를 종료하시지 말고 잠시만 기다려 주십시오.<br/>
					   <span class="font-bold text-brand-500">  
					   ★ 30만원이상 공인인증서 사용 의무화되었습니다.<br/>
					  - 만약 공인인증서가 없을 경우, 30만원 미만으로 두번 결제하시면 됩니다. <br/>
					  - 예: 33만원 결제시 = 23만원 + 10만원 두번 결제하시면 됩니다.</span>
			   </div>
				<hr/>
				<div class="flex items-center justify-between my-2 text-xl">
					<span>·   개인정보취급방침에 동의합니다.&nbsp;(필수)&nbsp;<input value="내용보기"  name="chk" style="margin-left: 10px" type="button" id="ajaxButton2" class="text-xl input_check cursor-pointer focus:outline-none text-brand-500  bg-white underline" /></span>
					<input type="checkbox" style="width:25px;height:25px;"name="chk"/>
				</div>
				<div id="pContent2" style="display:none" class="w-full ml-2 bg-gray-200">
					(주)EduCamp는 온라인결제를 이용하기 원하는 분을 대상으로 아래와 같이 개인정보를 수집하고 있습니다.<br/>
					1. 수집 개인정보 항목 : [필수] 성명, 이메일, 연락처<br/>
					2. 개인정보의 수집 및 이용목적 : 온라인결제에 따른 본인확인 및 원활한 의사소통 경로 확보<br/>
					3. 개인정보의 이용기간 : 모든 검토가 완료된 후 3년간 이용자의 조회를 위하여 보관하며, 이 후 해당정보를 지체없이 파기합니다.<br/>
					4. 동의 거부권리 안내 추가 :위와 같은 개인정보 수집 동의를 거부할 수 있습니다. 다만 동의를 거부하는 경우 온라인결제 이용이 제한될 수 있습니다.<br/>
					그 밖의 사항은 개인정보처리방침을 준수합니다.
			   </div>
				<hr/>
				<div class="flex items-center justify-between my-2 text-xl">
					<span>·   환불규정에 동의합니다&nbsp;(필수)&nbsp;<input value="내용보기"   style="margin-left: 10px" type="button" id="ajaxButton3" class="text-xl input_check text-brand-500  focus:outline-none cursor-pointer bg-white underline" /></span>
					<input type="checkbox" style="width:25px;height:25px;"name="chk"/>
				</div>
				<div  id="pContent3" style="display:none" class="w-full ml-2  bg-gray-200">
					[학원]<br/>
					학원의 설립·운영 및 과외교습에 관한 법률 시행령 제18조<br/>
					- 개강일 이전 환불시 : 수강료 전액 환불<br/>
					1. 수강료 징수 기간이 1개월 이내인 경우<br/>
					- 총 교습시간의 1/3 경과 전 : 할인전 원 수강료의 1/3공제 후 환불<br/>
					- 총 교습시간의 1/2 경과 전 : 할인전 원 수강료의 1/2공제 후 환불<br/>
					- 총 교습시간의 1/2 경과 후 : 환불금액 없음<br/>
					- 할인 수강료 반환 : 월 수강료 할인을 받은 경우 원 수강금액을 기준으로 공제 후 환불함<br/>
					2. 할인 수강료 반환 : 2개월 이상 수강등록 시 할인받은 경우 원 수강금액을 기준으로 하여 환불함<br/>
					3. 등록일에서 1년이 경과한 경우 환불이 되지 아니함
			   </div>
				<hr/>
				<div  class="flex items-center  justify-between my-2 text-brand-500 text-xl">
					<span>    위 모든 내용에 동의합니다.</span>
					<input type="checkbox" id="check_all"name="chk" style="width:25px;height:25px;"/>
				</div>
				</div>
				
		<div class="mt-8 mb-8"><span class="text-lg font-semibold">총 결제 금액 : ${vo.course_price }원</span></div>
		
		<div id="import" style="display:block"class="w-full text-center">
			<input type="submit" id="payReser" class="w-full text-2xl px-2 py-4 justify-center leading-9 h-full text-white bg-brand-500" id="payReser" value="결제 하기"/>
		</div>
		<form action="<%=ctx %>/paymentCashComplete" method="post">
		<div id="cash" style="display:none;"class="w-full text-center">
			<input type="hidden"value="${vo.course_name }"name="course_name"/>
			<input type="hidden"value="${vo2.student_id }"/>
			<input type="hidden"value="${vo2.student_name_ko }"name="student_name_ko"/>
			<input type="hidden"value="${vo2.student_email }"name="student_email"/>
			<input type="hidden"value="${vo2.student_tel_phone }"name="student_tel_phone"/>
			<input type="hidden"value="${vo.employee_name}"name="employee_name"/>
			<input type="hidden"value="${vo.course_start_date }"name="course_start_date"/>
			<input type="hidden"value="${vo.course_price}"name="course_price"/>
			<input type="submit" id="paymentCashBtn" class="w-full text-2xl px-2 py-4 justify-center leading-9 h-full text-white bg-brand-500"  value="현금 결제"/>
		</div>
	</form>
	</div>
	
</div><!-----------------페이지 내용 끝----------------->
<%-- var sendData = {
	    			"buyer_email" : $('#paymentEmail').val(),
	    			"name" : $("#courseName").text(),  
	    			"buyer_name" : $("#paymentName").val(),  
	    			"buyer_tel" : $("#paymentTel").val(),  
	    			"employee_name" : $("#employee_name").text(),
	    			"amount" : $("#coursePrice").text()
	    			
	    	}
	    	
	        //[1] 서버단에서 결제정보 조회를 위해 jQuery ajax로 imp_uid 전달하기
	        $.ajax({
	         url: "<%=ctx%>/paymentComplete", //cross-domain error가 발생하지 않도록 동일한 도메인으로 전송
	         type: 'POST',
	         dataType: 'json',
	         data : sendData --%>
	  
