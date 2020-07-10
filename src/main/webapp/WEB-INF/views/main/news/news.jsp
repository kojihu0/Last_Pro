<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<style>
#notice_content{
width:500px;
overflow: hidden;
text-overflow: ellipsis;
white-space: nowrap;
}
</style>
<body>
	<div id="mainBanner" style="background-image:url('<%=ctx%>/img/top-banner.jpg')" class="bg-cover mb-4 w-full">
		<div class="container my-0 mx-auto">
			<h1 class="border-l-4 border-brand-600 text-5xl text-white roboto-slab font-bold">&nbsp;&nbsp;NOTICE</h1>
		</div>
	</div>
		<div id="profileMenu" class="my-0 mx-auto w-full max-w-screen-xl">
		<span class="text-gray-500"><a href="<%=ctx%>/">Home</a>&nbsp;&nbsp;<i class="xi-angle-right"></i>&nbsp;&nbsp;Notice</span>
		<div id="hr" class="my-4 border-t border-solid"></div>
		<div  class="card_box w-full my-0 mx-auto max-w-screen-xl"> 
			<!-- notice-navigation -->
			<nav id="notice-navigation" class="flex items-center justify-between flex-wrap flex-grow w-3/4 my-8">
				<ul class="notice-menu flex flex-wrap flex-grow block text-lg">
				  <li class="-mb-px mr-1">
				    <a class="bg-white border-brand-500 border-b border-l border-t-4 border-r  py-3 px-4 text-brand-500 font-semibold" href="<%=ctx%>/news">공지사항</a>
				  </li> 
				  <li class="mr-1">
				    <a class="bg-white hover:border-brand-500 border-b border-l border-t border-r py-3 px-4 text-gray-900 hover:text-brand-500 font-semibold" href="<%=ctx%>/event">이벤트</a>
				  </li>
				</ul> 					   
			</nav><!-- notice-navigation end --> 
			<c:if test="${empty notice_list}">
					<p class="py-8 text-center text-lg font-bold">등록된 공지사항이 없습니다.</p>
				</c:if>
		<c:forEach var="vo" items="${notice_list}">
			<!-- 공지사항 폼 -->
				<div class="w-full my-0 mx-auto max-w-screen-lg" >  
					<div class="event-row sm:flex border-t border-gray-300 py-12 fadeUp"><!-- event-row -->
						<div class="event-date flex-shrink-0 text-brand-500 sm:text-center mr-12 flex items-end sm:block">
							<div class="date text-6xl font-bold">${vo.admin_notice_DD_date}</div>
							<div class="month">20${vo.admin_notice_date }년&nbsp;${vo.admin_notice_MM_date}월</div>
						</div>
						<div class="flex-auto event-content relative px-4 pt-4 lg:px-16 sm:pt-0">
							<h2 class="font-bold hover:text-brand-500 duration-500"><a href="<%=ctx%>/newsDetail?no=${vo.admin_notice_no}&pageNum=${pvo.pageNum}">${vo.admin_notice_title}</a></h2>
							<div id="notice_content"class="event-desc text-gray-700 mt-6">
								<c:out value='${fn:substring(vo.admin_notice_content.replaceAll("\\\<.*?\\\>",""),0,100)}' />
							</div>
						</div>
						<div class="event-img flex-shrink-0 overflow-hidden w-full p-4 sm:p-0 sm:w-auto hidden lg:block">
							<c:if test="${vo.admin_notice_img!=null && evo.admin_notice_img!=''}">
							<img class="w-full object-center" src="<%=ctx %>/img/${vo.admin_notice_img}">
							</c:if>
						</div>
					</div><!-- event-row -->
				</div><!-- 공지사항 폼 end -->
		</c:forEach>
		<ul class="pagenation flex items-center justify-center my-8 pb-8">
			<li class="page-iktem"><a class="page-link block py-1 px-2 hover:text-brand-500 <c:if test="${crrPageNum==1}">pointer-events-none</c:if>" href="<%=ctx%>/news?pageNum=${pvo.pageNum-1}"><i class="xi-angle-left-min"></i></a></li>
			<c:forEach var="i" begin="${pvo.startPage}" end="${pvo.startPage+pvo.pageCount-1}">
			<c:if test="${i<=pvo.totalPage}">
			<li class="page-item">
			<a class="pn page-link block py-1 px-2 hover:text-brand-500
			<c:if test="${i==crrPageNum}"> text-brand-500</c:if>" href="<%=ctx%>/news?pageNum=${i}">${i}
			</a></li>
			</c:if>
			</c:forEach>
			<li class="page-item"><a class="page-link block py-1 px-2 hover:text-brand-500 <c:if test="${crrPageNum==pvo.totalPage}">pointer-events-none</c:if>" href="<%=ctx%>/news?pageNum=${pvo.pageNum+1}"><i class="xi-angle-right-min"></i></a></li>
		</ul>
	</div><!-- card_box end -->
</div>
</body>
</html>