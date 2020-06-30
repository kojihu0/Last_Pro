<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1697bf8ffdf3960a4e20ff67ba4f1d5f"></script>
<div id="mainBanner" style="background-image:url('<%=ctx%>/img/top-banner.jpg')" class="bg-cover mb-4 w-full">
	<div class="container my-0 mx-auto">
		<h1 class="border-l-4 border-brand-600 text-5xl text-white roboto-slab font-bold">&nbsp;&nbsp;CONTACT</h1>
	</div>
</div>
<div class="container my-0 mx-auto">
	<span class="text-gray-500"><a href="<%=ctx%>/">Home</a>&nbsp;&nbsp;<i class="xi-angle-right"></i>&nbsp;&nbsp;Profile</span>
	<div id="hr" class="my-4 border-t border-solid"></div>
	<div class="lg:flex pt-12"><!-- contact-info -->
		<div class="lg:w-1/2 pr-6 lg:pl-0 pl-6 mb-8">
			<div class="relative pb-4 mb-12 fadeUp">
				<h1 class="roboto-slab font-bold">CONTACT INFO</h1>
				<p class="text-gray-700">고객센터</p>
				<span class="heading-line bg-black absolute bottom-0 left-0"></span>
			</div>
			<div class="lg:flex border-b border-t border-gray-500 pt-4 pb-4 lg:pb-12 fadeUp">
				<div class="lg:w-1/2 overflow-hidden pb-4 lg:pb-0">
					<div class="float-left text-2xl text-brand-500 mr-4"><i class="xi-call"></i></div>
					<div class="float-left">
						<p class="font-bold roboto-slab">Tel</p>
						<p class="text-gray-700">02-000-0000</p>
					</div>
				</div>
				<div class="lg:w-1/2 overflow-hidden">
					<div class="float-left text-2xl text-brand-500 mr-4"><i class="xi-mail"></i></div>
					<div class="float-left">
						<p class="font-bold roboto-slab">Email</p>
						<p class="text-gray-700">test@educamp.com</p>
					</div>
				</div>
			</div>
			<div class="border-b border-gray-500 overflow-hidden pt-4 pb-12 fadeUp">
				<div class="float-left text-2xl text-brand-500 mr-4"><i class="xi-maker"></i></div>
				<div class="float-left">
					<p class="font-bold roboto-slab">ADDRESS</p>
					<p class="text-gray-700">서울 마포구 백범로 23 구프라자 3층</p>
				</div>
			</div>
		</div>
		
		<div class="lg:w-1/2 pl-6 lg:pr-0 pr-6">
			<div class="relative pb-4 mb-12 fadeUp">
				<h1 class="roboto-slab font-bold">CONTACT FORM</h1>
				<p class="text-gray-700">자세한 문의사항은 여기에 남겨주세요</p>
				<span class="heading-line bg-black absolute bottom-0 left-0"></span>
			</div>
			<div class="contactFormWrap fadeUp">
				<form id="contactForm" method="post" action="<%=ctx %>/sendContactForm" onsubmit="return basicFormValidate(this);">
					<p class="mb-4">
						<input type="text" name="contact_name" placeholder="성함" class="w-full p-4 border border-gray-500 focus:outline-none focus:border-brand-500">
					</p>
					<p class="mb-4">
						<input type="email" name="contact_email" placeholder="이메일" class="w-full p-4 border border-gray-500 focus:outline-none focus:border-brand-500">
					</p>
					<p class="mb-4">
						<input type="tel" name="contact_tel" placeholder="연락처" class="number-only w-full p-4 border border-gray-500 focus:outline-none focus:border-brand-500">
					</p>
					<div class="mb-4">
						<textarea name="contact_content" placeholder="상담내용을 입력해주세요." class="w-full h-40 p-4 border border-gray-500 focus:outline-none focus:border-brand-500"></textarea>
					</div>
					<div class="border-t border-b border-gray-500 mb-2 py-4 text-gray-700">
						<p class="mb-2">EDUCAMP는 온라인상담을 이용하는분을 대상으로 아래와 같이 개인정보를 수집하고 있습니다.</p>
						<ul class="list-disc list-inside mb-2">
							<li>수집항목: 성명, 이메일주소, 연락처</li>
							<li>개인정보의 수집 및 이용목적: 온라인 상담에 따른 본인확인 및 원활한 의사소통 경로 확보</li>
							<li>보유 및 이용기간: 모든 검토가 완료된 후 3년간 이용자의 조회를 위하여 보관하며, 이 후 해당정보를 지체없이 파기합니다.</li>
							<li>동의 거부권리 안내: 위와 같은 개인정보 수집 동의를 거부할 수 있으나, 동의를 거부하는 경우 온라인상담 이용이 제한될 수 있습니다.</li>
						</ul>
						<p>그 밖의 사항은 개인정보취급방침을 준수합니다.</p>
					</div>
					<p class="mb-4"><input type="checkbox" value="동의함" id="accept_policy" class="mr-2"><label for="accept_policy">개인정보수집 및 이용에 동의합니다.</label></p>
					<div class="g-recaptcha mb-4" data-sitekey="6LeIxAcTAAAAAJcZVRqyHh71UMIEGNQ_MXjiZKhI"></div>
					<input type="submit" value="문의하기" class="py-4 px-6 bg-brand-500 font-bold">
				</form>
			</div>
		</div>
	</div><!-- contactinfo -->
</div>
<div class="container my-0 mx-auto px-6 lg:px-0">
	<div class="relative my-12 pb-4 pt-12 border-t border-gray-500 fadeUp">
		<h1 class="roboto-slab font-bold">LOCATION ON MAP</h1>
		<p class="text-gray-700">오시는 길</p>
		<span class="heading-line bg-black absolute bottom-0 left-0"></span>
	</div>
</div>
<div id="direction" class="w-full mt-12 fadeUp" style="height: 500px;"></div>
<script src='https://www.google.com/recaptcha/api.js'></script>
<script type="text/javascript">
$(function(){
	/**지도**/
	var container = document.getElementById('direction'); //지도를 담을 영역의 DOM 레퍼런스
	var lat = 37.55268208248053;
	var lng = 126.93773432181362;
	var options = { //지도를 생성할 때 필요한 기본 옵션
		center: new kakao.maps.LatLng(lat, lng), //지도의 중심좌표.
		level: 3 //지도의 레벨(확대, 축소 정도)
	};

	var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
	
	var markerPosition  = new kakao.maps.LatLng(lat, lng);
	
	// 마커를 생성합니다
	var marker = new kakao.maps.Marker({
	    position: markerPosition
	});

	// 마커가 지도 위에 표시되도록 설정합니다
	marker.setMap(map);
	
	//recaptcha
	
	//폼
	$("#contactForm").on('submit', function(e){
		e.preventDefault();
		var flag;
		$(this).find('input, textarea').each(function(){
			if($(this).val()==""){
				flag=false;
				return false;
			}
		});
		if($(this).find('#accept_policy').prop('checked')==false){
			flag=false;
		}
		
		if(flag==false){
			return false;
		}
		else{
			$.ajax({
				url:$(this).attr('action'),
				type: 'POST',
				data: $(this).serialize(),
				success: function(result){
					if(result == 1){
						$('.contactFormWrap').html('<p class="text-center font-bold py-8">문의가 접수되었습니다.</p>')
					}
					else if(result == -1){
						alert('자동 등록 방지에 체크해주세요.');
					}
					else{
						alert('문의 접수에 에러가 있습니다. 고객센터 전화로 직접 문의 부탁드립니다.');
					}
					
					$('html, body').animate({scrollTop:0});
					console.log(result);
				},
				error: function(e){
					console.log(e.responseText);
				}
			});
		}
	});
});
</script>