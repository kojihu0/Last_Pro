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
	<span class="font-bold text-xl">제목 : ${vo.admin_notice_title} </span><span class="text-lg float-right">등록일:${vo.admin_notice_date}</span>
	<div class="border-t  border-b  mt-4 border-solid border-gray-500 h-64 mb-8">
		<div class="m-0 m-auto mt-4 w-11/12 text-black">${vo.admin_notice_content}</div>
	</div>
</div>
