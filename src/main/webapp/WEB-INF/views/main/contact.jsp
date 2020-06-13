<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="mainBanner" style="background-size:cover;background-image:url('<%=request.getContextPath()%>/img/top-banner.jpg')" class="mb-4  w-full ">
	<div id="bannerText">
		<h1 class="border-l-4 border-brand-600 text-5xl text-white roboto-slab font-bold">&nbsp;&nbsp;CONTACT</h1>
	</div>
</div>
<div class="my-0 mx-auto w-full max-w-screen-xl">
	<span class="text-gray-500"><a href="<%=request.getContextPath()%>/">Home</a>&nbsp;&nbsp;＞&nbsp;&nbsp;Profile</span>
	<div id="hr" class="my-4 border-t border-solid"></div>
	<div class="flex">
		<div class="w-1/2 pr-6">
			<div class="mb-12">
				<h1 class="roboto-slab font-bold">CONTACT INFO</h1>
				<p class="text-gray-700">고객센터</p>
			</div>
			<div class="flex border-b border-t border-gray-500 pt-4 pb-12">
				<div class="w-1/2">
					<div class="float-left text-2xl text-brand-500 mr-4"><i class="xi-call"></i></div>
					<div class="float-left">
						<p class="font-bold roboto-slab">Tel</p>
						<p class="text-gray-700">02-000-0000</p>
					</div>
				</div>
				<div class="w-1/2">
					<div class="float-left text-2xl text-brand-500 mr-4"><i class="xi-mail"></i></div>
					<div class="float-left">
						<p class="font-bold roboto-slab">Email</p>
						<p class="text-gray-700">test@educamp.com</p>
					</div>
				</div>
			</div>
			<div class="border-b border-gray-500 overflow-hidden pt-4 pb-12">
				<div class="float-left text-2xl text-brand-500 mr-4"><i class="xi-maker"></i></div>
				<div class="float-left">
					<p class="font-bold roboto-slab">ADDRESS</p>
					<p class="text-gray-700">서울 마포구 백범로 23 구프라자 3층</p>
				</div>
			</div>
		</div>
		
		<div class="w-1/2 pl-6">
			<div class="mb-12">
				<h1 class="roboto-slab font-bold">CONTACT FORM</h1>
				<p class="text-gray-700">자세한 문의사항은 여기에 남겨주세요</p>
			</div>
			<div>
				<form>
					<p class="mb-4">
						<input type="text" placeholder="성함" class="w-full p-4 border border-gray-500">
					</p>
					<p class="mb-4">
						<input type="email" placeholder="이메일" class="w-full p-4 border border-gray-500">
					</p>
					<p class="mb-4">
						<input type="tel" placeholder="연락처" class="w-full p-4 border border-gray-500">
					</p>
					<div>
						<textarea class="w-full p-4 border border-gray-500"></textarea>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>