<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	footer {display:none}
   #site-header{display:none}
</style>
</head>
<body class="bg-gray-200">
<div class="w-full max-w-screen-xl my-0 mx-auto">
		<div class="w-full h-40 text-center text-4xl my-8 font-bold" style="line-height:160px;">결제 예약</div>
		<div class="w-full mt-5 bg-white">
			<div class="mx-8 py-2 bg-white">
				<div class="my-5 text-3xl text-center">예약 내역</div>
			</div>
		</div>
		<div class="w-full mb-5 bg-white text-black" >
	
			<div class="mx-8 py-2">
				<hr/>
			<div class="flex items-center justify-between my-2 text-xl">
					<span>신청 강좌명</span>
					<span>${course_name }</span>
				</div>
				   <hr/>
				<div class="flex items-center justify-between my-2 text-xl">
					<span>강사명</span>
					<span>${employee_name }</span>
				</div>
				 <hr/>
				<div class="flex items-center justify-between my-2 text-xl">
					<span>수강생</span>
					<span>${payment_name }</span>
				</div>
				 <hr/>
			    <div class="flex items-center justify-between my-2 text-xl">
					<span>결제 일시(예약)</span>
					<span>${payment_date}</span>
			    </div>
			     <hr/>
			    <div class="flex items-center justify-between my-2 text-xl">
					<span>전화 번호</span>
					<span>${payment_phone}</span>
			    </div>
			     <hr/>
			    <div class="flex items-center justify-between my-2 text-xl">
					<span>결제 금액</span>
					<span>${payment_price}원</span>
				</div>
			 </div>
		</div>
		<div class="w-full my-5"style="background:rgb(240,255,255)">
			<div class="mx-8 py-2">
				<div class="my-5 text-center text-3xl">결제예약 정보</div>
				<hr/>
				<div class="flex items-center justify-between my-2 text-xl">
					<span>결제 방법</span>
					<span>현금결제</span>
			    </div>
			    <hr/>
			    <div class="flex items-center font-bold justify-between my-2 text-xl">
					<span>최종 결제 금액</span>
					<span>${payment_price}원</span>
			    </div>
			</div>
		</div>
		<!---------------------------------- 결제내역 ---------------------------------------->
		<div class="w-24 h-10 border my-5 mx-auto text-center rounded">
			<div class="justify-center leading-9 home h-full bg-brand-500 text-white hover:bg-brand-700 focus:bg-brand-700"><a href="<%=ctx%>/">홈으로</a>
		</div>
	</div>
</div>


    