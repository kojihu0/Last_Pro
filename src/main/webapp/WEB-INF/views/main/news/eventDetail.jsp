<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="mainBanner" style="background-image:url('<%=ctx%>/img/top-banner.jpg')" class="bg-cover mb-4 w-full">
	<div class="container my-0 mx-auto">
		<h1 class="border-l-4 border-brand-600 text-5xl text-white roboto-slab font-bold">&nbsp;&nbsp;EVENT</h1>
	</div>
</div>
<div id="profileMenu" class="my-0 mx-auto w-full max-w-screen-xl">
<span class="text-gray-500"><a href="<%=ctx%>/">Home</a>&nbsp;&nbsp;<i class="xi-angle-right"></i>&nbsp;&nbsp;Event</span>
	<div id="hr" class="my-4 border-t border-solid"></div>
	<span class="font-bold text-xl">제목 : ${vo.admin_notice_title} </span>
	<span class="text-lg float-right">등록일 : ${vo.admin_notice_date}</span>
	<div class="border-t  border-b  mt-4 border-solid border-gray-500 mb-8">
		<div class="m-0 m-auto mt-8 mb-8 w-11/12 text-black">${vo.admin_notice_content}</div>
	</div>
	<div>
		<c:if test="${pnVo.leadSubject!='이전글'}">
		<p class="xi-angle-up text-brand-500 font-bold"></p>&nbsp;&nbsp;이전글&nbsp; :&nbsp;
			<a class="hover:text-brand-500" href="<%=ctx%>/eventDetail?no=${pnVo.leadNo}&pageNum=${pVo.pageNum}">${pnVo.leadSubject}</a><br/>
			<div id="hr" class="my-4 border-t border-brand-400 border-solid"></div>
		</c:if> 
		
		<div class="mb-8">
		<c:if test="${pnVo.lagSubject!='다음글'}">
		<p class="xi-angle-down text-brand-500 font-bold"></p>&nbsp;&nbsp;다음글&nbsp; :&nbsp;
		 	<a class="hover:text-brand-500" href="<%=ctx%>/eventDetail?no=${pnVo.lagNo}&pageNum=${pVo.pageNum}">${pnVo.lagSubject}</a><br/>
		</c:if>
		</div>
	 </div>
	<div class="text-center mb-8">
		<a href="<%=ctx%>/event">	
			<input type="button" class="w-full focus:outline-none text-white cursor-pointer py-3 px-5 bg-brand-500 font-bold focus:bg-brand-700" value="목록으로"/>
		</a>
	</div>
	
</div>
