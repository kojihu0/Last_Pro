<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script> 
<script>
function payment(){//매개변수에 데이터 베이스 값을 넣거나 value값을 가져오는 방법 시도해보기
	var IMP = window.IMP;
		IMP.init('imp81940054');
		IMP.request_pay({
		    pg : 'inicis',
		    pay_method : 'card',
		    merchant_uid : 'merchant_' + new Date().getTime(),
		    name : '주문명:',
		    amount : 1,
		    buyer_email : 'iamport@siot.do',
		    buyer_name : '구매자이름',
		    buyer_tel : '${vo.phone}',
		    },function(rsp) {
		    	
		    if(rsp.success){
		        var msg = '결제가 완료되었습니다.';
		        msg += '고유ID : ' + rsp.imp_uid;
		        msg += '상점 거래ID : ' + rsp.merchant_uid;
		        msg += '결제 금액 : ' + rsp.paid_amount;
		        msg += '카드 승인번호 : ' + rsp.apply_num;
		    }else{
		        var msg = '결제에 실패하였습니다.';
		        msg += '에러내용 : ' + rsp.error_msg;
		    }
		    alert(msg);
	});
}
</script>
		<!--헤더(메뉴)-->
<div id="content" class="w-full my-0 mx-auto">
	<div id="mainBanner" style="background-size:cover;background-image:url('<%=request.getContextPath()%>/img/top-banner.jpg')" class="mb-4  w-full ">
		<div class="container my-0 mx-auto">
			<h1 class="border-l-4 border-brand-600 text-5xl text-white roboto-slab font-bold">&nbsp;&nbsp;PAYMENT</h1>
		</div>
	</div>
			<!-----------------페이지 내용----------------->
	<div class="m-0 m-auto w-full max-w-screen-xl mt-12 mb-4 mx-auto">
		<span class="text-gray-500"><a href="<%=request.getContextPath()%>/">Home</a>&nbsp;&nbsp;<i class="xi-angle-right"></i>&nbsp;&nbsp;PayMent</span>
		<div id="hr" class="my-4 border-t border-solid"></div>
			<div class="m-0 m-auto text-center"><span class="font-bold text-5xl text-black ">결제</span></div>
				<div class="flex my-5">
					<div class="mt-2 ml-3">이름</div>&nbsp;&nbsp;&nbsp;
					<a id="b"><input class="appearance-none ml-5 w-11/12 bg-gray-200  text-gray-700 border border-gray-200 py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white focus:border-brand-500" id="name" type="text" placeholder="이름"></a>
					<div class="text-danger ml-5 hidden" id="b1">수령인을 2~7자리 한글로 입력해주세요.</div>
				</div>
				<div class="flex my-5">
					<div class="mt-2">이메일</div>
					<a id="f">
					<div>  
						&nbsp;<input class="appearance-none ml-6 w-1/4 bg-gray-200  text-gray-700 border border-gray-200 py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white focus:border-brand-500" id="email" type="text" placeholder="Email">
						&nbsp;@  
						<input id="domain" type="text" class="appearance-none ml-1 w-1/4 bg-gray-200  text-gray-700 border border-gray-200 py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white focus:border-brand-500  email2" placeholder="Domain"/> 	
						<div class="inline-block relative w-40">
							<select id="email" onclick="inputDomain()" class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8   shadow leading-tight focus:outline-none focus:shadow-outline">
								<option>직접입력</option>
							    <option>naver.com</option>
							    <option>daum.net</option>
							    <option>gmail.com</option>
							    <option>hotmail.com</option>
							    <option>nate.com</option>
							    <option>korea.com</option>
							    <option>chollian.net</option>
						  	 </select>
						  	 <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
				    			<svg class="fill-current h-4 w-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"><path d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z"/></svg>
				  			</div>
			 			</div>
			 			<!-- 이메일 유무 확인 <div class="text-danger hidden" id="f1" style="margin-left:250px">이메일을 입력해주세요.</div>
			 			<div class="text-danger hidden" id="f2" style="margin-left:250px">잘못된 이메일형식입니다. 다시입력해주세요.</div> -->
					</div></a>
				</div>
					<div class="flex my-5">
					<div class="mt-4">연락처1</div>
					<a id="c"><div class="py-3 px-4 ">
				 		&nbsp;<input type="text" class="appearance-none w-11/12 bg-gray-200 py-3 px-4  text-gray-700 border  mb-3 leading-tight focus:outline-none focus:bg-white focus:border-brand-500  tel1" maxlength="4"/>
					</div></a>
					<div class="text-danger ml-5 hidden" id="c1">연락처를 입력해주세요.</div>
					<div class="text-danger ml-5 hidden" id="c2">숫자 4자리를 입력해주세요.</div>
				</div>
				<div class="flex my-5 ">
					<a id="n"><div class='mt-2'>연락처2</div></a>
					<div>
						<div class="inline-block relative w-40 ml-4">
							<select class="block appearance-none py-3 px-4 w-full bg-white  text-gray-700 border border-gray-200  hover:border-brand-700 px-4 py-2 pr-8   shadow leading-tight focus:outline-none focus:bg-white focus:border-brand-500  focus:outline-none ">
								   <option>02</option>
								   <option>051</option>
								   <option>053</option>
								   <option>032</option>
								   <option>062</option>
								   <option>042</option>
								   <option>052</option>
								   <option>044</option>
								   <option>031</option>
								   <option>033</option>
								   <option>043</option>
								   <option>063</option>
								   <option>061</option>
								   <option>054</option>
								   <option>055</option>
								   <option>064</option>
							  </select>
							<div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
					    		<svg class="fill-current h-4 w-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"><path d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z"/></svg>
					  		</div>
				 		</div>
				 		
				 		- <input id="domain" type="text" class="appearance-none ml-1 w-1/4 bg-gray-200  text-gray-700 border border-gray-200 py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white focus:border-brand-500  email2" placeholder="Domain"/> 	
						- <input id="domain" type="text" class="appearance-none ml-1 w-1/4 bg-gray-200  text-gray-700 border border-gray-200 py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white focus:border-brand-500  email2" placeholder="Domain"/> 	
						<div class="text-danger hidden" style="margin-left:300px;"id="n1">숫자를 입력해주세요.</div>
						<div class="text-danger hidden" style="margin-left:300px;" id="n2">잘못된 연락처입니다. 다시 입력해주세요.</div>
					</div>
				</div>
				<div class="mb-4"><span class="text-lg font-bold">결제 강좌 정보</span></div>
				<table class="w-full border border-gray-200 w-1/2 font-medium">
					<tbody class="border border-gray-200 font-medium text-center text-lg">
						<tr style="height: 23px;" class="border border-gray-200">
							<td style="height: 23px;" class="border border-gray-200">&nbsp;강좌명&nbsp;</td>
							<td style="height: 23px;" class="border border-gray-200">&nbsp;강사명&nbsp;</td>
							<td style="height: 23px;" class="border border-gray-200">&nbsp;개강날짜&nbsp;</td>
							<td style="height: 23px;" class="border border-gray-200">&nbsp;가격&nbsp;</td>
						</tr>
						<tr style="height: 23px;" class="border border-gray-200">
							<td style="height: 23px;" class="border border-gray-200">&nbsp;기초부터 배우는 스프링&nbsp;</td>
							<td style="height: 23px;" class="border border-gray-200">&nbsp;홍길동&nbsp;</td>
							<td style="height: 23px;" class="border border-gray-200">&nbsp;2020-06-02&nbsp;</td>
							<td style="height: 23px;" class="border border-gray-200">&nbsp;110000원&nbsp;</td>
						</tr>
					</tbody>
				</table>
				<!-- DivTable.com -->
				
				
			
				
				<div class="mt-4 border bg-gray-500 font-bold text-gray-900 text-xl">
					<input type="radio" name="paymentSelectRadio" class="ml-4"/>&nbsp;&nbsp;&nbsp;<span>계좌이체 </span><br/>
					<div></div>
					<input type="radio" name="paymentSelectRadio" class="ml-4"/>&nbsp;&nbsp;&nbsp;<span>신용카드</span><br/>
				</div>
				<div class="mt-12 mb-4"><span class="text-lg font-semibold">총 결제 금액 : 110000원</span></div>
			    
					<input type="submit" onclick="payment();" class="w-1/3 text-2xl px-2 py-4 justify-center leading-9 h-full text-white bg-brand-500" id="payReser" value="결제 하기"/>
				
	</div>
</div><!-----------------페이지 내용 끝----------------->
