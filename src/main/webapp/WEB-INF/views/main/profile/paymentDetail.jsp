<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script>
$(function(){ 
	$("#paymentCancelBtn").click(function(){
		 if (confirm("결제 취소 진행 하시겠습니까?") == true){
		 	var url="<%=ctx%>/paymentCancel";
			$.ajax({
				url : url,
				success : function(result){
					if(result=='yes'){
						alert("결제 취소 요청이 완료 되었습니다.");
						history.go(0);
					}else{
						alert("결제 취소 요청중 에러가 발생 하였습니다 \n 다시 시도해주세요.");
					}
				}, error : function(){
					console.log("결제취소 에러 ...");
				}
			});  
	 }else{
	     return false;
	 }
	}) 
});
</script>
<body class="bg-gray-200">
<div class="w-full max-w-screen-xl my-0 mx-auto">
		<div class="w-full h-40 text-center text-4xl my-8 font-bold" style="line-height:160px;">결제 정보</div>
		<div class="w-full mt-5 bg-white">
		<c:if test="${pList.payment_method == '카드결제'}">
			<div class="mx-8 py-2 bg-white">
				<div class="my-5 text-3xl text-center">결제 내역</div>
			</div>
		</c:if>
		<c:if test="${pList.payment_method != '카드결제'}">
			<div class="mx-8 py-2 bg-white">
				<div class="my-5 text-3xl text-center">예약 내역</div>
			</div>
		</c:if>
		</div>
		<div class="w-full mb-5 bg-white text-black" >
			<div class="mx-8 py-2">
				<hr/>
			<div class="flex items-center justify-between my-2 text-xl">
					<span>신청 강좌명</span>
					<span>${pList.course_name }</span>
				</div>
				   <hr/>
				<div class="flex items-center justify-between my-2 text-xl">
					<span>강사명</span>
					<span>${pList.employee_name }</span>
				</div>
				 <hr/>
				<div class="flex items-center justify-between my-2 text-xl">
					<span>수강생</span>
					<span>${pList.payment_name }</span>
				</div>
				 <hr/>
			    <div class="flex items-center justify-between my-2 text-xl">
					<span>결제 일시</span>
					<span>${pList.payment_date}</span>
			    </div>
			     <hr/>
			      <div class="flex items-center justify-between my-2 text-xl">
					<span>강좌 시작일</span>
					<span>${pList.course_start_date}</span>
			    </div>
			     <hr/>
			    <div class="flex items-center justify-between my-2 text-xl">
					<span>전화 번호</span>
					<span>${pList.payment_phone}</span>
			    </div>
			     <hr/>
			    <div class="flex items-center justify-between my-2 text-xl">
					<span>결제 금액</span>
					<span>${pList.payment_price}원</span>
				</div>
			 </div>
		</div>
		<div class="w-full my-5"style="background:rgb(240,255,255)">
			<div class="mx-8 py-2">
				<div class="my-5 text-center text-3xl">결제 정보</div>
				<hr/>
				<c:if test="">
					<div class="flex items-center justify-between my-2 text-xl">
						<span>결제 방법</span>
						<span>신용(체크)카드</span>
				    </div>
			    </c:if>
			    <c:if test="${pList.payment_method == '카드결제'}">
					<div class="flex items-center justify-between my-2 text-xl">
						<span>결제 방법</span>
						<span>신용(체크)카드</span>
				    </div>
			    </c:if>
			    <c:if test="${pList.payment_method !='카드결제'}">
					<div class="flex items-center justify-between my-2 text-xl">
						<span>결제 방법</span>
						<span>현금 결제</span>
				    </div>
			    </c:if>
			    <hr/>
			    <div class="flex items-center font-bold justify-between my-2 text-xl">
					<span>최종 결제 금액</span>
					<span>${pList.payment_price}원</span>
			    </div>
			     <c:if test="${pList.payment_state == 0 }">
				    <hr/>
				    <div class="flex items-center font-bold justify-between my-2 text-xl">
						<span>결제 상태</span>
						<span>결제 완료 </span>
				    </div>
			    </c:if>
			    <c:if test="${pList.payment_state == 1 }">
				    <hr/>
				    <div class="flex items-center font-bold justify-between my-2 text-xl">
						<span>결제 상태</span>
						<span>결제 취소 </span>
				    </div>
			    </c:if>
			</div>
		</div>
		<!---------------------------------- 결제내역 ---------------------------------------->
		<c:if test="${pList.payment_state ==0 }">
		<div class="w-24 h-10 my-5 mx-auto text-center">
			<div class="justify-center leading-9 home">
			<input type="submit" id="paymentCancelBtn" class="focus:outline-none p-2 font-bold bg-brand-500 border-brand-500 hover:bg-brand-700 focus:bg-brand-900 " value="결제 취소"/>
		</div>
	</div>
	</c:if>
	<c:if test="${pList.payment_state ==1 }">
	<div class="w-24 h-10 my-5 mx-auto text-center">
	</div>
	</c:if>
</div>
