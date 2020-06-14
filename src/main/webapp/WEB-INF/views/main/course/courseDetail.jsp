<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="w-full max-w-screen-xl my-0 mx-auto px-8 xl:px-0 py-8"><!-- 상세페이지 -->
	<div class="w-full flex mb-4"><!-- 상단 -->
		<div class="flex-shrink-0 w-1/2 mr-16">
			<!--슬라이더-->
			<div class="campaign-slider-wrapper relative mb-8">
				<div class="campaign-slider w-full overflow-hidden">
					<div class="slide">
						<img src="/project_Ma/img/img_main/main_tree_01.jpg" class="object-cover w-full">
					</div>
					<div class="slide">
						<img src="/project_Ma/img/campaign/Chrysanthemum.jpg" class="object-cover w-full">
					</div>
					<div class="slide">
						<img src="/project_Ma/img/campaign/Hydrangeas.jpg" class="object-cover w-full">
					</div>
				</div>
				<button class="campaign-slider-arrow prev absolute left-0 z-50 bg-black text-white"><i class="xi-angle-left-thin"></i></button>
				<button class="campaign-slider-arrow next absolute right-0 z-50 bg-black text-white"><i class="xi-angle-right-thin"></i></button>
			</div>
			<div class="campaign-slider-nav flex">
				<div class="slider-nav-item w-1/3 h-32 mr-4 cursor-pointer rounded overflow-hidden active">
					<img alt="prd_img" src="/project_Ma/img/img_main/main_tree_01.jpg" class="object-cover w-full h-32 transform hover:scale-125 duration-300">
				</div>
				<div class="slider-nav-item w-1/3 h-32 mr-4 cursor-pointer rounded overflow-hidden">
					<img alt="prd_img" src="/project_Ma/img/campaign/Chrysanthemum.jpg"  class="object-cover w-full h-32 transform hover:scale-125 duration-300">
				</div>
				<div class="slider-nav-item w-1/3 h-32 cursor-pointer rounded overflow-hidden">
					<img alt="prd_img" src="/project_Ma/img/campaign/Hydrangeas.jpg" class="object-cover w-full h-32 transform hover:scale-125 duration-300">
				</div>
			</div>
			<!--슬라이더-->
		</div>
		<div class="w-1/2">
			<h1 class="mb-4 text-3xl font-bold">프로젝트명</h1>
			<p class="mb-4 text-gray-dark">주며, 없는 내는 목숨이 피다. 가슴에 피는 무엇을 따뜻한 무엇을 있음으로써 있다. 얼음과 넣는 품었기 우리의 위하여, 아니한 그들에게 반짝이는 힘있다. 그들의 두기 위하여, 구하기 만물은 속에서 새가 곧 이상의 사막이다.</p>
			<p class="mb-4 text-2xl font-bold">23일 남음</p>
			<div class="flex justify-between items-baseline flex-grow-0 mb-2">
				<p class="inline-block text-brand"><span class="text-2xl font-bold">36,500,000</span>원 후원</p>
				<p class="inline-block">목표금액 100,000,000원</p>
			</div>
			<div class="progress relative bg-gray-lighter mb-4 rounded overflow-hidden">
				<div class="progress-bar absolute top-0 bottom-0 left-0 bg-brand" style="width:36.5%"></div>
			</div>
			<p class="mb-4"><span class="text-2xl font-bold">36.5</span>% 달성</p>
			<p class="mb-4"><span class="text-2xl font-bold">100</span>명 후원</p>
			<div class="p-4 bg-brand-light text-sm">
				<p class="text-brand"><span class="font-bold mr-2">펀딩기간</span>2020-04-05 ~ 2020-04-28</p>
				<p class="text-gray-darkest">목표금액 100% 달성시에만 결제</p>
			</div>
			<!--버튼-->
			<div class="mt-8 mb-4 flex justify-end">
				<a href="#donate" class="btn-donate bg-brand hover:bg-brand-dark text-white py-2 px-4 w-1/2 rounded inline-block text-lg text-center font-bold">후원하기</a>
				<a href="#" class="add-wishlist relative ml-2 bg-white border border-gray-dark text-gray-dark w-12 rounded inline-block text-2xl text-center"><span class="wishlist-ico align-middle"></span></a>
			</div>
			<div class="share text-2xl text-gray-darker my-4 text-right">
				<div class="inline-block w-10 h-10 leading-10 text-center mr-2"><i class="xi-share-alt"></i></div>
				<button title="페이스북에 공유하기" data-sns="facebook" data-url="charitree.fezze.name" class="btn-share-sns inline-block w-8 h-10 leading-10 text-center hover:text-brand duration-300"><i class="xi-facebook"></i></button>
				<button title="카카오톡에 공유하기" data-sns="kakaotalk" data-url="charitree.fezze.name" data-text="ChariTree" class="btn-share-sns inline-block w-8 h-10 leading-10 text-center hover:text-brand duration-300"><i class="xi-kakaotalk"></i></button>
				<button title="트위터에 공유하기" data-sns="twitter" data-url="charitree.fezze.name" data-text="ChariTree" class="btn-share-sns inline-block w-8 h-10 leading-10 text-center hover:text-brand duration-300"><i class="xi-twitter"></i></button>
				<button title="URL 복사" data-clipboard-text="https://charitree.fezze.name" class="copy_url inline-block w-8 h-10 leading-10 text-center hover:text-brand duration-300"><i class="xi-link"></i></button>
			</div>
		</div>
	</div><!-- 상단 -->
	<div class="w-full flex items-start content-start"><!-- 본문 -->
		<div class="bg-white mt-4 mr-8 border border-gray pb-16">
			<div class="campaign-tab-nav w-full bg-white flex items-center justify-center">
				<ul class="flex items-center justify-center flex-wrap block py-8 font-bold">
					<li class="tab-item text-center mr-4 active"><a href="#story" class="inline-block py-4 px-4">강좌소개</a></li>
					<li class="tab-item text-center mr-4"><a href="#updates" class="inline-block py-4 px-4">커리큘럼</a></li>
					<li class="tab-item text-center mr-4"><a href="#beckers" class="inline-block py-4 px-4">강사소개 <span class="text-brand">100</span></a></li>
					<li class="tab-item text-center mr-4"><a href="#comments" class="inline-block py-4 px-4">리뷰 <span class="text-brand">70</span></a></li>
				</ul>
				<a href="#donate" class="sticky-btn-donate inline-block bg-brand hover:bg-brand-dark text-white py-2 px-4 rounded inline-block text-lg text-center ml-4">후원하기</a>
			</div>
			<div class="campaign-tab-content px-16"><!--스토리-->
				<div id="story" class="tab-content-item active">
					<div class="story-content">
						<p>국무총리·국무위원 또는 정부위원은 국회나 그 위원회에 출석하여 국정처리상황을 보고하거나 의견을 진술하고 질문에 응답할 수 있다. 국회는 법률에 저촉되지 아니하는 범위안에서 의사와 내부규율에 관한 규칙을 제정할 수 있다. 헌법재판소의 장은 국회의 동의를 얻어 재판관중에서 대통령이 임명한다.</p>
						<p>법관은 탄핵 또는 금고 이상의 형의 선고에 의하지 아니하고는 파면되지 아니하며, 징계처분에 의하지 아니하고는 정직·감봉 기타 불리한 처분을 받지 아니한다. 모든 국민은 보건에 관하여 국가의 보호를 받는다. 국회는 헌법개정안이 공고된 날로부터 60일 이내에 의결하여야 하며, 국회의 의결은 재적의원 3분의 2 이상의 찬성을 얻어야 한다.</p>
						<p>헌법재판소에서 법률의 위헌결정, 탄핵의 결정, 정당해산의 결정 또는 헌법소원에 관한 인용결정을 할 때에는 재판관 6인 이상의 찬성이 있어야 한다. 국군의 조직과 편성은 법률로 정한다. 여자의 근로는 특별한 보호를 받으며, 고용·임금 및 근로조건에 있어서 부당한 차별을 받지 아니한다. 국회의원은 국가이익을 우선하여 양심에 따라 직무를 행한다.</p>
						<img src="/project_Ma/img/img_main/main_tree_01.jpg"/>
						<p>국회의원은 국회에서 직무상 행한 발언과 표결에 관하여 국회외에서 책임을 지지 아니한다. 국교는 인정되지 아니하며, 종교와 정치는 분리된다. 저작자·발명가·과학기술자와 예술가의 권리는 법률로써 보호한다. 대한민국은 국제평화의 유지에 노력하고 침략적 전쟁을 부인한다. 타인의 범죄행위로 인하여 생명·신체에 대한 피해를 받은 국민은 법률이 정하는 바에 의하여 국가로부터 구조를 받을 수 있다.</p>
						<img src="/project_Ma/img/campaign/Chrysanthemum.jpg"/>
						<p>이 헌법에 의한 최초의 대통령의 임기는 이 헌법시행일로부터 개시한다. 대통령은 법률안의 일부에 대하여 또는 법률안을 수정하여 재의를 요구할 수 없다. 정당은 그 목적·조직과 활동이 민주적이어야 하며, 국민의 정치적 의사형성에 참여하는데 필요한 조직을 가져야 한다. 대통령의 임기가 만료되는 때에는 임기만료 70일 내지 40일전에 후임자를 선거한다.</p>
						<p>누구든지 체포 또는 구속을 당한 때에는 즉시 변호인의 조력을 받을 권리를 가진다. 다만, 형사피고인이 스스로 변호인을 구할 수 없을 때에는 법률이 정하는 바에 의하여 국가가 변호인을 붙인다. 언론·출판에 대한 허가나 검열과 집회·결사에 대한 허가는 인정되지 아니한다. 이 헌법중 공무원의 임기 또는 중임제한에 관한 규정은 이 헌법에 의하여 그 공무원이 최초로 선출 또는 임명된 때로부터 적용한다.</p>
						<img src="/project_Ma/img/campaign/Hydrangeas.jpg"/>
						<p>재산권의 행사는 공공복리에 적합하도록 하여야 한다. 국무총리는 국회의 동의를 얻어 대통령이 임명한다. 계엄을 선포한 때에는 대통령은 지체없이 국회에 통고하여야 한다. 군인은 현역을 면한 후가 아니면 국무위원으로 임명될 수 없다. 대통령의 임기연장 또는 중임변경을 위한 헌법개정은 그 헌법개정 제안 당시의 대통령에 대하여는 효력이 없다.</p>
						<p>법률이 헌법에 위반되는 여부가 재판의 전제가 된 경우에는 법원은 헌법재판소에 제청하여 그 심판에 의하여 재판한다. 헌법재판소는 법률에 저촉되지 아니하는 범위안에서 심판에 관한 절차, 내부규율과 사무처리에 관한 규칙을 제정할 수 있다. 헌법개정안이 제2항의 찬성을 얻은 때에는 헌법개정은 확정되며, 대통령은 즉시 이를 공포하여야 한다.</p>
					</div>
					<div class="company-info bg-white mt-16">
						<h2 class="mb-4">단체·기업 정보</h2>
						<div class="flex items-center border border-gray p-4">
							<div class="company-name flex items-center w-2/5 border-r border-gray border-dashed pr-4">
								<div class="company-photo rounded-full border border-gray w-20 h-20 p-4 mr-2 overflow-hidden">
									<img src="/project_Ma/img/icons8-forest-48.png" class="w-full">
								</div>
								<div class="font-bold"><a href="#">사단법인 나무심기 운동본부</a></div>
							</div>
							<div class="company-detail w-3/5 pl-4">
								<div class="company-desc text-gray-darker text-sm">
									사단법인 나무심기 운동본부입니다. 재판의 심리와 판결은 공개한다. 다만, 심리는 국가의 안전보장 또는 안녕질서를 방해하거나 선량한 풍속을 해할 염려가 있을 때에는 법원의 결정으로 공개하지 아니할 수 있다.
								</div>
							</div>
						</div>
					</div>
				</div><!--스토리-->
				<div id="updates" class="tab-content-item"><!--업데이트-->
					<ul class="campaign-update">
						<li class="relative px-4 mb-8">
							<span class="round-circle"></span>
							<div class="update-title mb-4">
								<p class="text-lg font-bold">2020-04-30</p>
								<h2 class="text-brand font-bold">후원 현황입니다.</h2>
							</div>
							<div class="update-content">
								<p>웅대한 가치를 청춘이 끓는다. 인간에 것은 심장은 이상은 우는 되려니와, 그들의 봄바람이다. 이것은 사람은 청춘의 작고 관현악이며, 심장의 청춘의 것이다. 석가는 과실이 하여도 힘있다. 그들은 미묘한 피고 방지하는 있다.</p>
								<p>가지에 같이, 귀는 현저하게 심장은 찾아다녀도, 무엇을 봄바람이다. 원질이 가는 가는 긴지라 피어나는 봄날의 미묘한 그와 뿐이다. 청춘 끓는 천지는 미묘한 힘있다. 같으며, 같은 그들의 웅대한 구할 낙원을 인류의 사막이다. 온갖 되는 얼음 그러므로 이상 황금시대를 곳으로 천하를 것이다. 동력은 청춘의 피가 희망의 되는 있다. 이상은 찬미를 보배를 없으면, 있을 끝까지 속잎나고, 것이다.</p>
							</div>
						</li>
						<li class="relative px-4 mb-8">
							<span class="round-circle"></span>
							<div class="update-title mb-4">
								<p class="text-lg font-bold">2020-04-24</p>
								<h2 class="text-brand font-bold">국가는 지역간의 균형있는 발전을 위하여 지역경제를 육성할 의무를 진다.</h2>
							</div>
							<div class="update-content">
								<p>제1항의 탄핵소추는 국회재적의원 3분의 1 이상의 발의가 있어야 하며, 그 의결은 국회재적의원 과반수의 찬성이 있어야 한다. 다만, 대통령에 대한 탄핵소추는 국회재적의원 과반수의 발의와 국회재적의원 3분의 2 이상의 찬성이 있어야 한다.</p>
								<p>국가는 균형있는 국민경제의 성장 및 안정과 적정한 소득의 분배를 유지하고, 시장의 지배와 경제력의 남용을 방지하며, 경제주체간의 조화를 통한 경제의 민주화를 위하여 경제에 관한 규제와 조정을 할 수 있다.</p>
							</div>
						</li>
						<li class="relative px-4 mb-8">
							<span class="round-circle"></span>
							<div class="update-title mb-4">
								<p class="text-lg font-bold">2020-04-10</p>
								<h2 class="text-brand font-bold">Lorem Ipsum</h2>
							</div>
							<div class="update-content">
								Lorem ipsum dolor sit amet consectetur, adipisicing elit. Corporis labore sed culpa neque sequi repudiandae, eos eveniet reprehenderit, debitis quisquam ad cumque accusamus ea officiis sit veritatis amet, deserunt ratione.
							</div>
						</li>
						<li class="relative px-4 mb-8">
							<span class="round-circle"></span>
							<div class="update-title mb-4">
								<p class="text-lg font-bold">2020-04-20</p>
								<h2 class="text-brand font-bold">캠페인이 시작되었습니다.</h2>
							</div>
							<div class="update-content">
								<img src="/project_Ma/img/img_main/main_tree_01.jpg"><br/>
								거선의 용기가 밥을 그리하였는가? 전인 것은 풀밭에 뜨거운지라, 얼음과 현저하게 아니더면, 주며, 뿐이다. 방황하여도, 것이다.보라, 어디 안고, 두기 수 얼음이 얼마나 교향악이다. 갑 인생을 뛰노는 사는가 붙잡아 황금시대다. 구하지 길을 같이 같이, 기쁘며, 공자는 이것이다. 되는 같이, 무엇을 위하여 물방아 있다. 인생을 두손을 이것이야말로 끝에 싶이 힘있다. 투명하되 이는 트고, 뼈 인생에 봄날의 끓는다. 끝에 풀이 더운지라 넣는 원질이 열락의 생의 약동하다. 할지라도 생명을 소담스러운 같은 창공에 그것은 이상의 사막이다. 같은 그들은 무엇을 아니다.
							</div>
						</li>
					</ul>
					<ul class="pagenation flex items-center justify-center mx-4">
						<li class="page-item disabled"><a class="page-link block py-1 px-2 hover:text-brand pointer-events-none" href="#"><i class="xi-angle-left-min"></i></a></li>
						<li class="page-item acitve"><a class="page-link block py-1 px-2 hover:text-brand text-brand" href="#">1</a></li>
						<li class="page-item"><a class="page-link block py-1 px-2 hover:text-brand" href="#">2</a></li>
						<li class="page-item"><a class="page-link block py-1 px-2 hover:text-brand" href="#">3</a></li>
						<li class="page-item"><a class="page-link block py-1 px-2 hover:text-brand" href="#"><i class="xi-angle-right-min"></i></a></li>
					</ul>
				</div><!--업데이트-->
				<div id="beckers" class="tab-content-item"><!--후원자-->
				</div><!--후원자-->
				<div id="comments" class="tab-content-item"><!--응원글-->
					<h1 class="my-4">응원·의견</h1>
					<div class="mb-8">
						<form method="POST" action="" enctype="multipart/form-data" onsubmit="return campaign_comment_validation()" class="campaign-comment-form">
							<label for="campaign_comment"></label>
							<textarea name="campaign_comment" id="campaign_comment" placeholder="로그인해야 응원글을 남길 수 있습니다." class="appearance-none border border-gray rounded w-full py-2 px-3 leading-tight focus:outline-none focus:shadow-outline h-24 bg-gray-lightest"></textarea>
							<div class="text-right">
								<input type="submit" value="응원하기" class="bg-brand hover:bg-brand-dark text-white font-bold py-2 px-4 rounded"/>
							</div>
						</form>
					</div>
					<ul class="campaign-comment-list">
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