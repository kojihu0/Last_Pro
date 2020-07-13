<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!-- 메인슬라이더 -->
<div class="main-slide-section w-full h-screen relative">
	<div id="mainSlider" class="h-full text-white">
		<div class="slide-item bg-cover bg-center h-full" style="background-image:url('<%=ctx %>/img/main1.jpg')">
			<div class="container h-full my-0 mx-auto relative px-4 lg:px-0">
				<div class="slide_txt absolute">
					<h1 class="roboto-slab text-6xl">Best For Education</h1>
					<p class="text-lg">코딩이 습관이 되는 학원 EDUCAMP</p>
				</div>
			</div>
		</div>
		<div class="slide-item bg-cover bg-center h-full opacity-75" style="background-image:url('<%=ctx %>/img/main2.jpg')">
			<div class="container h-full my-0 mx-auto relative px-4 lg:px-0">
				<div class="slide_txt absolute">
					<h1 class="roboto-slab text-6xl">Best For Education</h1>
					<p class="text-lg">EDUCAMP는 항상 끊임없이 연구하고 노력하는 IT전문교육기관입니다.</p>
				</div>
			</div>
		</div>
		<div class="slide-item bg-cover bg-center h-full opacity-75" style="background-image:url('<%=ctx %>/img/main3.jpg')">
			<div class="container h-full my-0 mx-auto relative px-4 lg:px-0">
				<div class="slide_txt absolute">
					<h1 class="roboto-slab text-6xl">Best For Education</h1>
					<p class="text-lg">기초부터 탄탄하게 가르치는 교육</p>
				</div>
			</div>
		</div>
	</div>
	<div class="w-full absolute bottom-0 main-slide-cols mb-16 hidden lg:block">
		<div class="container flex my-0 mx-auto text-white">
			<div class="w-1/3 bg-black p-6 mr-2 flex opacity-75 duration-300 hover:opacity-100 col">
				<div class="mr-10"><img alt="" src="<%=ctx %>/img/mainslide-graduation-cap.png"></div>
				<div>
					<h1 class="roboto-slab font-bold">ABOUT US</h1>
					<p>학원 소개</p>
					<a class="text-xs text-brand-500" href="<%=ctx%>/aboutUs">VIEW MORE <i class="xi-angle-right"></i></a>
				</div>
			</div>
			<div class="w-1/3 bg-black p-6 mr-2 flex opacity-75 duration-300 hover:opacity-100 col">
				<div class="mr-10"><img alt="" src="<%=ctx %>/img/mainslide-book.png"></div>
				<div>
					<h1 class="roboto-slab font-bold">COURSES INFO</h1>
					<p>강좌 소개</p>
					<a class="text-xs text-brand-500" href="<%=ctx%>/course/courseList">VIEW MORE <i class="xi-angle-right"></i></a>
				</div>
			</div>
			<div class="w-1/3 bg-black p-6 flex opacity-75 duration-300 hover:opacity-100 col">
				<div class="mr-10"><img alt="" src="<%=ctx %>/img/mainslide-contact-us.png"></div>
				<div>
					<h1 class="roboto-slab font-bold">CONTACT</h1>
					<p>고객센터</p>
					<a class="text-xs text-brand-500" href="<%=ctx%>/contact">VIEW MORE <i class="xi-angle-right"></i></a>
				</div>
			</div>
		</div>
	</div>
	<button class="slide-arrow arrow-prev outline-none opacity-0 duration-300"><i class="xi-angle-left"></i></button>
	<button class="slide-arrow arrow-next outline-none opacity-0 duration-300"><i class="xi-angle-right"></i></button>
</div>
<!-- 메인슬라이더 -->
<!-- 베스트강의 -->
<div class="best-section container my-0 mx-auto py-16 px-4 lg:px-0">
	<div class="flex justify-between items-end relative pb-4 mb-10 fadeRight">
		<div>
			<h1 class="roboto-slab font-bold">LATEST COURSES</h1>
			<p>최신강좌</p>
		</div>
		<div class="carou-btn">
			<button class="slide-arrow arrow-prev outline-none border border-black duration-300 hover:border-brand-500 hover:text-brand-500"><i class="xi-angle-left"></i></button>
			<button class="slide-arrow arrow-next outline-none border border-black duration-300 hover:border-brand-500 hover:text-brand-500"><i class="xi-angle-right"></i></button>
		</div>
		<span class="heading-line bg-black absolute bottom-0 left-0"></span>
	</div>
	<c:if test="${empty courseList}">
	<p class="py-8 text-center text-lg font-bold text-white">강좌가 없습니다.</p>
	</c:if>
	<div id="courseCarousel" class="-mx-4 fadeUp">
		<c:forEach var="cvo" items="${courseList}">
			<div class="course-item px-4 text-center"><!-- course-item -->
				<div class="course-image relative overflow-hidden border border-gray-300 h-48 text-center bg-cover bg-center" style="background-image:url('<%=ctx %>/img/${cvo.course_img}')">
					<a class="course-readmore overlay-center bg-brand-500 inline-block py-2 px-4 text-sm duration-300" href="<%=ctx%>/course/courseDetail?course_no=${cvo.course_no}">READ MORE</a>
				</div>
				<div class="course-content border-b border-l border-r border-gray-300 bg-white px-6">
					<h3 class="course-title hover:text-brand-500 duration-500 pt-4 mb-4 truncate">
						<a href="<%=ctx%>/course/courseDetail?course_no=${cvo.course_no}">${cvo.course_name}</a>
					</h3>
					<div class="course-author text-gray-900 mb-4">${cvo.employee_name}</div>
					<div class="course-price text-danger-500 relative py-4">${cvo.course_price_format}<span>원</span></div>
				</div>
			</div><!-- course-item -->
		</c:forEach>
	</div>
	<div class="text-center mt-8 mb-2">
		<a class="inline-block bg-black text-white py-2 px-4 rounded border border-black duration-300 hover:bg-white hover:text-black" href="<%=ctx %>/course/courseList">READ MORE</a>
	</div>
</div>
<!-- 베스트강의 -->
<!-- 가입하기 -->
<div class="pSection register-section w-full bg-cover bg-center relative bg-black shadow-inner overflow-hidden">
	<img src="<%=ctx %>/img/register.jpg" class="pImage absolute max-w-none w-auto h-screen lg:max-w-full lg:w-full lg:h-auto top-0 left-0 opacity-75">
	<div class="pContent container my-0 mx-auto py-20 lg:py-32 px-4 lg:px-0">
		<div class="w-full lg:flex items-center">
			<div class="w-full relative text-white text-center">
				<p class="text-2xl fadeUp"><span class="text-brand-500 font-bold">Educamp</span>에서 여러분을 기다립니다.</p>
				<h1 class="roboto-slab font-bold text-6xl mb-8 fadeUp">REGISTER NOW</h1>
				<a class="inline-block py-2 px-8 bg-brand-500 rounded-full duration-300 text-xl font-bold shadow-md hover:bg-brand-600 fadeUp" href="<%=ctx%>/register">가입하러가기</a>
			</div>
		</div>
	</div>
</div>
<!-- 이벤트 -->
<div class="event-section container my-16 mx-auto px-4 lg:px-0">
	<div class="flex justify-between items-end relative pb-4 mb-10 fadeRight">
		<div>
			<h1 class="roboto-slab font-bold">EVENTS</h1>
			<p>최근 진행중이거나 진행된 이벤트입니다.</p>
		</div>
		<a class="outline-none border border-black text-xs px-4 view-all" href="<%=ctx%>/event">VIEW ALL</a>
		<span class="heading-line bg-black absolute bottom-0 left-0"></span>
	</div>
	<div>
		<c:if test="${empty eventList}">
			<p class="py-8 text-center text-lg font-bold">이벤트가 없습니다.</p>
		</c:if>
		<c:forEach var="evo" items="${eventList}">
		<div class="event-row sm:flex border-t border-gray-300 py-12 fadeUp"><!-- event-row -->
			<div class="event-date flex-shrink-0 text-brand-500 sm:text-center mr-12 flex items-end sm:block">
				<div class="date text-6xl font-bold">${evo.notice_day}</div>
				<div class="month">${evo.notice_month}월</div>
			</div>
			<div class="event-content relative px-4 pt-4 lg:px-16 sm:pt-0 flex-auto">
				<h2 class="font-bold hover:text-brand-500 duration-500 truncate"><a href="<%=ctx %>/newsDetail?no=${evo.admin_notice_no}&pageNum=1">${evo.admin_notice_title}</a></h2>
				<div class="event-desc text-gray-700 mt-6"><c:out value='${fn:substring(evo.admin_notice_content.replaceAll("\\\<.*?\\\>",""),0,140)}' escapeXml="false" /></div>
			</div>
			<div class="event-img flex-shrink-0 overflow-hidden w-full p-4 sm:p-0 sm:w-auto hidden lg:block">
				<c:if test="${evo.admin_notice_img!=null && evo.admin_notice_img!=''}">
				<img class="w-full" src="<%=ctx %>/img/${evo.admin_notice_img}">
				</c:if>
			</div>
		</div><!-- event-row -->
		</c:forEach>
	</div>
</div>
<!-- 이벤트 -->
<!-- 새소식 -->
<div class="news-section w-full py-16 bg-cover relative" style="background-image:url('<%=ctx %>/img/writing.jpg');">
	<div class="container my-0 mx-auto px-4 lg:px-0">
		<h1 class="roboto-slab text-white font-bold relative fadeRight">LATEST NEWS</h1>
		<div class="flex justify-between items-end text-white relative pb-4 mb-10 fadeRight">
			<div>새 소식을 알려드립니다.</div>
			<div class="carou-btn">
				<button class="slide-arrow arrow-prev outline-none border border-white duration-300 hover:border-brand-500 hover:text-brand-500"><i class="xi-angle-left"></i></button>
				<button class="slide-arrow arrow-next outline-none border border-white duration-300 hover:border-brand-500 hover:text-brand-500"><i class="xi-angle-right"></i></button>
			</div>
			<span class="heading-line bg-white absolute bottom-0 left-0"></span>
		</div>
		<c:if test="${empty newsList}">
			<p class="py-8 text-center text-lg font-bold text-white">새 소식이 없습니다.</p>
		</c:if>
		<div id="newsCarousel" class="-mx-4 fadeUp">
			<c:forEach var="nvo" items="${newsList}">
			<div class="news-item px-4"><!-- news-item -->
				<div class="news-img overflow-hidden text-center h-64">
					<a href="<%=ctx %>/newsDetail?no=${nvo.admin_notice_no}&pageNum=1">
					<c:if test="${nvo.admin_notice_img!=null && nvo.admin_notice_img!=''}">
					<img src="<%=ctx %>/img/${nvo.admin_notice_img}">
					</c:if>
					<c:if test="${nvo.admin_notice_img==null || nvo.admin_notice_img==''}">
					<img src="<%=ctx %>/img/no-image.png" class="my-0 mx-auto">
					</c:if>
					</a>
				</div>
				<div class="news-content text-center -mt-4">
					<div class="news-date bg-brand-500 text-white text-sm inline-block px-4 py-1">${nvo.admin_notice_date}</div>
					<h2 class="text-white py-4 hover:text-brand-500 duration-500 truncate"><a href="<%=ctx %>/newsDetail?no=${nvo.admin_notice_no}">${nvo.admin_notice_title}</a></h2>
				</div>
			</div><!-- news-item -->
			</c:forEach>
		</div>
	</div>
	<div class="text-center mt-8 mb-2 relative">
		<a class="bg-black text-white py-2 px-4 rounded border border-black duration-300 hover:bg-white hover:text-black" href="<%=ctx%>/news">READ MORE</a>
	</div>
</div>
<!-- 새소식 -->
