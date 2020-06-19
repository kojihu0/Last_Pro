<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="mainBanner" style="background-image:url('<%=ctx%>/img/top-banner.jpg')" class="bg-cover mb-4 w-full">
	<div class="container my-0 mx-auto">
		<h1 class="border-l-4 border-brand-600 text-5xl text-white roboto-slab font-bold">&nbsp;&nbsp;COURSES</h1>
	</div>
</div>
<div class="container my-0 mx-auto">
	<span class="text-gray-500"><a href="<%=ctx%>/">Home</a>&nbsp;&nbsp;<i class="xi-angle-right"></i>&nbsp;&nbsp;Courses</span>
	<div id="hr" class="my-4 border-t border-solid"></div>
	<div class="course-list lg:flex lg:flex-wrap -mx-4 px-4 lg:px-0">
		<c:if test="${empty list}">
			<p class="py-8 text-center text-lg font-bold">강좌가 없습니다.</p>
		</c:if>
		<c:forEach var="vo" items="${list}">
		<div class="course-item px-4 py-6 text-center lg:w-1/4 fadeUp"><!-- course-item -->
			<div class="course-image relative overflow-hidden border border-gray-300">
				<img class="duration-300" src="<%=ctx %>/img/${vo.course_img}">
				<a class="course-readmore overlay-center bg-brand-500 inline-block py-2 px-4 text-sm duration-300" href="<%=ctx%>/course/courseDetail?course_no=${vo.course_no}">READ MORE</a>
			</div>
			<div class="course-content border-b border-l border-r border-gray-300 bg-white px-6">
				<h2 class="course-title hover:text-brand-500 duration-500 pt-4 mb-4">
					<a href="<%=ctx%>/course/courseDetail?course_no=${vo.course_no}">${vo.course_name}</a>
				</h2>
				<div class="course-author text-gray-900 mb-4">${vo.employee_name}</div>
				<div class="course-price text-danger-500 relative py-4">${vo.course_price_format}<span>원</span></div>
			</div>
		</div><!-- course-item -->
		</c:forEach>
	</div>
	<ul class="pagenation flex items-center justify-center my-8 pb-8">
		<li class="page-item"><a class="page-link block py-1 px-2 hover:text-brand-500 <c:if test="${crrPageNum==1}">pointer-events-none</c:if>" href="<%=ctx%>/course/courseList?pageNum=${pvo.pageNum-1}"><i class="xi-angle-left-min"></i></a></li>
		<c:forEach var="i" begin="${pvo.startPage}" end="${pvo.startPage+pvo.pageCount-1}">
		<c:if test="${i<=pvo.totalPage}">
		<li class="page-item"><a class="pn page-link block py-1 px-2 hover:text-brand<c:if test="${i==crrPageNum}"> text-brand-500</c:if>" href="<%=ctx%>/course/courseList?pageNum=${i}">${i}</a></li>
		</c:if>
		</c:forEach>
		<li class="page-item"><a class="page-link block py-1 px-2 hover:text-brand-500 <c:if test="${crrPageNum==pvo.totalPage}">pointer-events-none</c:if>" href="<%=ctx%>/course/courseList?pageNum=${pvo.pageNum+1}"><i class="xi-angle-right-min"></i></a></li>
	</ul>
</div>