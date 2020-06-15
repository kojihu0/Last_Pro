<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="mainBanner" style="background-size:cover;background-image:url('<%=ctx%>/img/top-banner.jpg')" class="mb-4  w-full ">
	<div id="bannerText">
		<h1 class="border-l-4 border-brand-600 text-5xl text-white roboto-slab font-bold">&nbsp;&nbsp;COURSES</h1>
	</div>
</div>
<div id="stickyNav" class="w-full fixed bg-white border-t border-gray">
	<div class="w-full max-w-screen-xl my-0 mx-auto px-8 xl:px-0 flex justify-between">
		<ul class="flex items-center block w-1/2">
			<li class="tab-item w-1/3 text-center mx-4 border-t-4 active"><a href="#course_detail" class="inline-block px-4"><span></span>강좌소개 및 커리큘럼</a></li>
			<li class="tab-item w-1/3 text-center mx-4 border-t-4"><a href="#instructor" class="inline-block px-4">강사소개</a></li>
			<li class="tab-item w-1/3 text-center mx-4 border-t-4"><a href="#comments" class="inline-block px-4">리뷰 <span class="text-brand-500">5</span></a></li>
		</ul>
		<div class="flex items-center">
			<p class="font-bold text-xl text-danger-500 mr-8"><span>110,000</span>원</p>
			<a href="#donate" class="btn-donate bg-brand-500 hover:bg-brand-600 text-white py-2 px-4 rounded inline-block text-lg text-center font-bold">수강신청</a>
			<a href="#" class="add-wishlist relative ml-2 bg-black border border-gray-700 text-brand-500 w-12 rounded inline-block text-2xl text-center"><span class="wishlist-ico align-middle"></span></a>
		</div>
	</div>
</div>
<div class="w-full max-w-screen-xl my-0 mx-auto px-8 xl:px-0"><!-- 상세페이지 -->
	<span class="text-gray-500"><a href="<%=ctx%>/">Home</a>&nbsp;&nbsp;<i class="xi-angle-right"></i>&nbsp;&nbsp;Courses</span>
	<div id="hr" class="my-4 border-t border-solid"></div>
	<div class="w-full flex mb-4 pt-4"><!-- 상단 -->
		<div class="course-img w-2/5 pr-12">
			<div class="border border-gray">
				<img class="object-cover" src="<%=ctx %>/img/spring.png">
			</div>
		</div>
		<div class="w-3/5">
			<h1 class="mb-4 text-3xl font-bold">강좌명</h1>
			<p class="mb-8 text-gray-dark">주며, 없는 내는 목숨이 피다. 가슴에 피는 무엇을 따뜻한 무엇을 있음으로써 있다. 얼음과 넣는 품었기 우리의 위하여, 아니한 그들에게 반짝이는 힘있다. 그들의 두기 위하여, 구하기 만물은 속에서 새가 곧 이상의 사막이다.</p>
			<div class="course-meta flex items-center">
				<div class="border-r border-gray pr-4 py-1">
					<p class="text-gray-500">상태<span class="font-bold text-brand-500 ml-2">모집중</span></p>
				</div>
				<div class="border-r border-gray px-4 py-1">
					<p class="text-gray-500">모집기간<span class="font-bold text-gray-700 ml-2">미정</span></p>
				</div>
				<div class="border-r border-gray px-4 py-1">
					<p class="text-gray-500">개강일<span class="font-bold text-gray-700 ml-2">미정</span></p>
				</div>
				<div class="border-r border-gray px-4 py-1">
					<p class="text-gray-500">장소<span class="font-bold text-gray-700 ml-2">미정</span></p>
				</div>
			</div>
			<!--버튼-->
			<div class="mt-8 mb-4 flex justify-end items-center">
				<p class="font-bold text-3xl text-danger-500 mr-8"><span>110,000</span>원</p>
				<a href="#donate" class="btn-donate bg-brand-500 hover:bg-brand-600 text-white py-2 px-4 rounded inline-block text-lg text-center font-bold">수강신청</a>
				<a href="#" class="add-wishlist relative ml-2 bg-black border border-gray-700 text-brand-500 w-12 rounded inline-block text-2xl text-center"><span class="wishlist-ico align-middle"></span></a>
			</div>
		</div>
	</div><!-- 상단 -->
	<div id="courseContent" class="w-full flex items-start content-start"><!-- 본문 -->
		<div class="w-full bg-white mt-4 border border-gray pb-16">
			<div class="course-tab-nav w-full bg-white flex items-center justify-center">
				<ul class="w-full flex items-center justify-center block py-8 font-bold px-6">
					<li class="tab-item w-1/3 text-center mx-4 border-b-4 active"><a href="#course_detail" class="inline-block py-4 px-4"><span></span>강좌소개 및 커리큘럼</a></li>
					<li class="tab-item w-1/3 text-center mx-4 border-b-4"><a href="#instructor" class="inline-block py-4 px-4">강사소개</a></li>
					<li class="tab-item w-1/3 text-center mx-4 border-b-4"><a href="#comments" class="inline-block py-4 px-4">리뷰 <span class="text-brand-500">5</span></a></li>
				</ul>
				<a href="#donate" class="sticky-btn-donate inline-block bg-brand hover:bg-brand-dark text-white py-2 px-4 rounded inline-block text-lg text-center ml-4">후원하기</a>
			</div>
			<div class="course-tab-content px-10"><!--스토리-->
				<div id="course_detail" class="tab-content-item active">
					<div class="story-content">
						<p>국무총리·국무위원 또는 정부위원은 국회나 그 위원회에 출석하여 국정처리상황을 보고하거나 의견을 진술하고 질문에 응답할 수 있다. 국회는 법률에 저촉되지 아니하는 범위안에서 의사와 내부규율에 관한 규칙을 제정할 수 있다. 헌법재판소의 장은 국회의 동의를 얻어 재판관중에서 대통령이 임명한다.</p>
						<p>법관은 탄핵 또는 금고 이상의 형의 선고에 의하지 아니하고는 파면되지 아니하며, 징계처분에 의하지 아니하고는 정직·감봉 기타 불리한 처분을 받지 아니한다. 모든 국민은 보건에 관하여 국가의 보호를 받는다. 국회는 헌법개정안이 공고된 날로부터 60일 이내에 의결하여야 하며, 국회의 의결은 재적의원 3분의 2 이상의 찬성을 얻어야 한다.</p>
						<p>헌법재판소에서 법률의 위헌결정, 탄핵의 결정, 정당해산의 결정 또는 헌법소원에 관한 인용결정을 할 때에는 재판관 6인 이상의 찬성이 있어야 한다. 국군의 조직과 편성은 법률로 정한다. 여자의 근로는 특별한 보호를 받으며, 고용·임금 및 근로조건에 있어서 부당한 차별을 받지 아니한다. 국회의원은 국가이익을 우선하여 양심에 따라 직무를 행한다.</p>
						<img src="<%=ctx %>/img/spring.png"/>
						<p>국회의원은 국회에서 직무상 행한 발언과 표결에 관하여 국회외에서 책임을 지지 아니한다. 국교는 인정되지 아니하며, 종교와 정치는 분리된다. 저작자·발명가·과학기술자와 예술가의 권리는 법률로써 보호한다. 대한민국은 국제평화의 유지에 노력하고 침략적 전쟁을 부인한다. 타인의 범죄행위로 인하여 생명·신체에 대한 피해를 받은 국민은 법률이 정하는 바에 의하여 국가로부터 구조를 받을 수 있다.</p>
						<img src="<%=ctx %>/img/main1.jpg"/>
						<p>이 헌법에 의한 최초의 대통령의 임기는 이 헌법시행일로부터 개시한다. 대통령은 법률안의 일부에 대하여 또는 법률안을 수정하여 재의를 요구할 수 없다. 정당은 그 목적·조직과 활동이 민주적이어야 하며, 국민의 정치적 의사형성에 참여하는데 필요한 조직을 가져야 한다. 대통령의 임기가 만료되는 때에는 임기만료 70일 내지 40일전에 후임자를 선거한다.</p>
						<p>누구든지 체포 또는 구속을 당한 때에는 즉시 변호인의 조력을 받을 권리를 가진다. 다만, 형사피고인이 스스로 변호인을 구할 수 없을 때에는 법률이 정하는 바에 의하여 국가가 변호인을 붙인다. 언론·출판에 대한 허가나 검열과 집회·결사에 대한 허가는 인정되지 아니한다. 이 헌법중 공무원의 임기 또는 중임제한에 관한 규정은 이 헌법에 의하여 그 공무원이 최초로 선출 또는 임명된 때로부터 적용한다.</p>
						<img src="<%=ctx %>/img/restroom.jpg"/>
						<p>재산권의 행사는 공공복리에 적합하도록 하여야 한다. 국무총리는 국회의 동의를 얻어 대통령이 임명한다. 계엄을 선포한 때에는 대통령은 지체없이 국회에 통고하여야 한다. 군인은 현역을 면한 후가 아니면 국무위원으로 임명될 수 없다. 대통령의 임기연장 또는 중임변경을 위한 헌법개정은 그 헌법개정 제안 당시의 대통령에 대하여는 효력이 없다.</p>
						<p>법률이 헌법에 위반되는 여부가 재판의 전제가 된 경우에는 법원은 헌법재판소에 제청하여 그 심판에 의하여 재판한다. 헌법재판소는 법률에 저촉되지 아니하는 범위안에서 심판에 관한 절차, 내부규율과 사무처리에 관한 규칙을 제정할 수 있다. 헌법개정안이 제2항의 찬성을 얻은 때에는 헌법개정은 확정되며, 대통령은 즉시 이를 공포하여야 한다.</p>
					</div>
				</div><!--스토리-->
				<div id="instructor" class="tab-content-item"><!--후원자-->
				</div><!--후원자-->
				<div id="comments" class="tab-content-item"><!--응원글-->
					<h1 class="my-4">리뷰</h1>
					<div class="mb-8">
						<form method="POST" action="" enctype="multipart/form-data" onsubmit="return course_comment_validation()" class="course-comment-form">
							<label for="course_comment"></label>
							<textarea name="course_comment" id="course_comment" placeholder="로그인해야 응원글을 남길 수 있습니다." class="appearance-none border border-gray rounded w-full py-2 px-3 leading-tight focus:outline-none focus:shadow-outline h-24 bg-gray-lightest"></textarea>
							<div class="text-right">
								<input type="submit" value="응원하기" class="bg-brand hover:bg-brand-dark text-white font-bold py-2 px-4 rounded"/>
							</div>
						</form>
					</div>
					<ul class="course-comment-list">
						<li class="mb-8">
							<div class="comment-container">
								<p class="comment-author font-bold mb-2">홍길동<span class="text-gray-dark text-sm font-normal ml-4">2020-04-27</span></p>
								<div class="comment-text text-gray-darkest">응원합니다.</div>
							</div>
							<div class="comment-reply mt-4 py-4 px-8 bg-gray-lightest">
								<p class="comment-author font-bold mb-2 text-success">나무심기 운동본부<span class="text-gray-dark text-sm font-normal ml-4">2020-04-27</span></p>
								<div class="comment-text text-gray-darkest">응원 감사드립니다^^</div>
							</div>
						</li>
						<li class="mb-8">
							<div class="comment-container">
								<p class="comment-author font-bold mb-2">홍길동<span class="px-1 text-info-dark text-sm font-normal ml-2 bg-info-light">후원자</span><span class="text-gray-dark text-sm font-normal ml-4">2020-04-27</span></p>
								<div class="comment-text text-gray-darkest">응원합니다.</div>
							</div>
						</li>
						<li class="mb-8">
							<p class="comment-author font-bold mb-2">홍길동<span class="text-gray-dark text-sm font-normal ml-4">2020-04-27</span></p>
							<div class="comment-text text-gray-darkest">응원합니다.</div>
						</li>
						<li class="mb-8">
							<p class="comment-author font-bold mb-2">홍길동<span class="text-gray-dark text-sm font-normal ml-4">2020-04-27</span></p>
							<div class="comment-text text-gray-darkest">응원합니다.</div>
						</li>		
					</ul>
					<ul class="pagenation flex items-center justify-center my-4">
						<li class="page-item disabled"><a class="page-link block py-1 px-2 hover:text-brand pointer-events-none" href="#"><i class="xi-angle-left-min"></i></a></li>
						<li class="page-item acitve"><a class="page-link block py-1 px-2 hover:text-brand text-brand" href="#">1</a></li>
						<li class="page-item"><a class="page-link block py-1 px-2 hover:text-brand" href="#">2</a></li>
						<li class="page-item"><a class="page-link block py-1 px-2 hover:text-brand" href="#">3</a></li>
						<li class="page-item"><a class="page-link block py-1 px-2 hover:text-brand" href="#">4</a></li>
						<li class="page-item"><a class="page-link block py-1 px-2 hover:text-brand" href="#">5</a></li>
						<li class="page-item"><a class="page-link block py-1 px-2 hover:text-brand" href="#"><i class="xi-angle-right-min"></i></a></li>
					</ul>
				</div><!--응원글-->
			</div>
		</div>
	</div><!-- 본문 -->
</div><!-- 상세페이지 -->
<script>
$(function(){
	function refresh() {
	console.log(scrollY);
		if (scrollY < 800) {
			$("#stickyNav").removeClass('sticky-header');
		}
		else if (scrollY > 800) {
			$("#stickyNav").addClass('sticky-header');
		}
	}

	$("html,body").on("mousewheel DOMMouseScroll'", refresh);
	refresh();
});
</script>