<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script async defer src ="https://maps.googleapis.com/maps/api/js?key=AIzaSyAdpFt44gVyyLaVVx9o9gHNo11umONL3Uw&callback=initMap"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/tailwind.css" type="text/css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/profile.css" type="text/css">
<script src="<%=request.getContextPath()%>/js/profile.js"></script>
</head>
<body>
<div id="mainBanner" style="background-size:cover;background-image:url('<%=request.getContextPath()%>/img/top-banner.jpg')" class="mb-4  w-full ">
		<div id="bannerText">
			<h1 class="border-l-4 border-brand-600 text-5xl text-white roboto-slab font-bold">&nbsp;&nbsp;ABOUT_US</h1>
		</div>
	</div>
	<div id="profileMenu" class="my-0 mx-auto w-full max-w-screen-xl">
		<span class="text-gray-500"><a href="<%=request.getContextPath()%>/">Home</a>&nbsp;&nbsp;＞&nbsp;&nbsp;aboutUs</span>
		<div id="hr" class="my-4 border-t border-solid"></div>
		<div class="w-full my-0 mx-auto bg-cover" style="height:700px; background-image:url('<%=request.getContextPath()%>/img/avel.jpg')">
	<span class="text-5xl font-bold text-black position-absolute" style="position:absolute; margin-top:240px; margin-left:100px; ">코딩이 습관이 되는 학원<br>EDUCAMP입니다.</span><br>
	<span class="text-black post" style="position:absolute; margin-top:380px; margin-left:100px; font-size:18px;"><span class="text-danger">EDUCAMP</span>항상 끊임없이 연구하고 노력하는<br>IT전문교육기관입니다.</span>
			</div>
			<div class="w-full max-w-screen-xl my-0 mx-auto ">
				<div class="mt-20">
					<span class="text-danger roboto-slab">EduCamp 5 Principles</span>
					<div class="w-full mt-3 flex">
						<span class="text-xl w-1/2 roboto-slab">EduCamp가 가르치는 방식</span>
						<span class="ml-24 w-1/2"><span class="text-danger roboto-slab">EduCamp</span>는 서로를 지지하고 도전을 즐기는 기업문화 안에서 아래 5가지<br>원칙을 가지고 일합니다.</span>
					</div>
					<div class="flex text-left mt-24 font-bold">
						<div class="w-1/5 px-4 border-solid border-brand-500 border-r">1<br>직무와 연계된 기술</div>
						<div class="w-1/5 px-4 border-solid border-brand-500 border-r">2<br>기초부터 탄탄하게 가르치는 교육</div>
						<div class="w-1/5 px-4 border-solid border-brand-500 border-r">3<br>다양한 프로젝트를 통한 실력향상</div>
						<div class="w-1/5 px-4 border-solid border-brand-500">4<br>장래를 여는 학원</div>
						<div class="w-1/5 px-4 border-solid border-brand-500 border-l">5<br>확실한 취업보장</div>
					</div>
				</div>
			<div class="mt-40">
				<span class="text-danger font-bold">Unique Value</span>
				<div class="w-full mt-3 flex">
				<div class="w-1/2 text-4xl pr-5">
					<span class="text-danger">ChariTree</span>는 좀 더 좋은 세상을 만들기 위해 후원받고 함께 성장해갑니다 
				</div>
				<div class="w-1/2 pl-10 pr-56 leading-10">
					<span>사람들은 자신이 지지하는 기업에 투자합니다.<br>한 사람 한 사람의 투자가 모여<br>기업은 성장합니다.여기, 기업 하나가 출발선에 있습니다.<br>그는 자신의 가치를 증명하고<br>사람들이 그의 가치를 알아봅니다.<br>서로 지지하고 소통하고 공유하면서<br>
							더 많은 사람들이 그를 알아봅니다.<br>그렇게 기업은 성장합니다.<br>또 다른 기업들이 용기를 얻고 출발선에 섭니다.<br>사람들의 지지를 받는 기업은 성장합니다.<br>세상에 자신만의 가치를 품은<br>기업이 많아집니다.<br>세상이 조금 더 나아집니다.</span>
				<div class="text-danger mt-6 leading-8">Better Funding<br>Better business<br>Better Life</div>
				</div>
				</div>
			</div>
		</div>
		<div class="w-full bg-gray-lightest text-center text-2xl my-40 font-bold">
			<div style="line-height: 130px">"</div>
			<div class="px-64 -mt-10"><span class="text-danger">ChariTree</span>는 대한민국에서 새로운 도전이 자연스러운 환경을 만들고자 합니다.<br>이를 위해 리테일, 트레이더스, 벤처스 등 새로운 사업 영역을 확대하며 스타트업을 위한<br>종합 지원 플랫폼으로 나아가고 있습니다.</div>
			<div style="line-height: 110px">"</div>
		</div>
		<div class="w-full max-w-screen-xl my-0 mx-auto ">
			<div class="mt-40">
				<span class="text-danger font-bold">Brand Mission</span>
				<div class="w-full mt-3 flex">
					<span class="font-bold text-2xl w-1/2">올바른 생각이 신뢰를 바탕으로<br> 성장하는 세상을 만들고자 합니다</span>
					<div class="text-lg w-1/2"><span class="text-danger">ChariTree</span> 업의 본질은 단순히 자금을 모으는 것이 아닙니다. 금융시장의 자금이 창업 기업이나 스타트업 등 꼭 필요한 곳에 흘러가도록 하여, 더욱 성장하는 세상을 만드는 것이 우리의 미션입니다.</div>
			    </div>
		    </div>
		</div>  
		<hr class="my-40">
		<div class="w-full max-w-screen-xl my-0 mx-auto mb-40">
			<div>
				<span class="text-danger font-bold">Brand Vision</span>
				<div class="w-full mt-3 flex">
					<span class="font-bold text-2xl w-1/2"><span class="text-danger">ChariTree</span>는 신뢰를 바탕으로<br>소통하며 협력하는<br>Trust Capitalist Group입니다</span>
					<div class="text-lg w-1/2"><span class="text-danger">ChariTree</span> 업의 본질은 단순히 자금을 모으는 것이 아닙니다. 금융시장의 자금이 창업 기업이나 스타트업 등 꼭 필요한 곳에 흘러가도록 하여, 더욱 성장하는 세상을 만드는 것이 우리의 미션입니다.</div>
			    </div>
			 </div>
		</div>
		<!-- 구글 지도   -->
		<div> 
			<div id="gMap" style="height:500px" class="border border-gray-500 w-10/12 mb-4 m-o m-auto">
			</div>
			<div class= "bg-brand-500 text-white mb-4 m-0 m-auto w-10/12 text-2xl font-semibold">
			<span class="mt-2 ml-2 mb-4">주소 : 서울특별시 마포구 백범로 23 구프라자 B1</span><br/>
			<span class="ml-2 mb-4">대표전화 : 02-707-1480</span><br/> 
			<span class="ml-2 mb-4">지하철 : (신촌역) 2호선 6번출구 도보 8분</span><br/>
			<span class="ml-2 mb-2">버스 : (하차) 신촌로터리, 서강대학교</span>
			</div>	
	</div>
</body>
</html>