<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://unpkg.com/@popperjs/core@2"></script>
<script src="https://unpkg.com/tippy.js@6"></script>
<script type="text/javascript">
document.addEventListener('DOMContentLoaded', function() {
	var calendarEl = document.getElementById('courseSchedule');
	var calendar = new FullCalendar.Calendar(calendarEl, {
		plugins: [ 'dayGrid' ],
		locale: 'ko',
		eventSources: [
			{
				url: '<%=ctx%>/schedule/getTimeTable',
				method: 'POST',
				failure: function(){
					console.log('시간표 불러오기 실패');
				}
		    }
		],
		eventRender: function(info){
			var event = info.event.extendedProps.description;
			tippy(info.el, { 
				  	content	: event   
			});
		}
		
	});
	calendar.render();
});
</script>
<div id="mainBanner" style="background-image:url('<%=ctx%>/img/top-banner.jpg')" class="bg-cover mb-4 w-full">
	<div class="container my-0 mx-auto">
		<h1 class="border-l-4 border-brand-600 text-5xl text-white roboto-slab font-bold">&nbsp;&nbsp;PROFILE</h1>
	</div>
</div>
<div id="profileMenu" class="my-0 mx-auto w-full max-w-screen-xl">
	<span class="text-gray-500"><a href="<%=ctx%>/">Home</a>&nbsp;&nbsp;<i class="xi-angle-right"></i>&nbsp;&nbsp;Profile</span>
<div id="hr" class="my-4 border-t border-solid"></div>
<div class="flex my-12">
	<div class="lg:w-1/5 flex-initial">
		<c:if test="${student_img != null }">
			<img src="<%=ctx%>/img/${student_img}">
		</c:if >
		<c:if test="${student_img == null }">
			<img src="<%=ctx%>/img/user-avatar.png">
		</c:if>
			<div id="hr" class="my-8 border-t border-solid"></div>
			<h1 class="text-4xl font-bold text-center">${student_name_ko}</h1>
			<div id="hr" class="m-0 m-auto bg-black border-black my-4 border-t border-solid w-4 border-2"></div>
			<h4 class="text-gray-500 text-center mb-4">${student_info}</h4>
		</div>
		<div class="lg:w-4/5 w-3/4 mt-4 pl-8">
			<ul class="flex roboto-slab -mb-px">
				<li class="mr-1">
					<a class="bg-white hover:border-brand-500 border-b border-l border-t border-r py-3 px-4 text-gray-900 hover:text-brand-500 font-semibold" href="<%=ctx%>/courseOfStudy">Course</a>
				</li> 
				<li class="mr-1">
					<a class="bg-white hover:border-brand-500 border-b border-l border-t border-r py-3 px-4 text-gray-900 hover:text-brand-500 font-semibold" href="<%=ctx%>/completionCourse">Completion Course</a>
				</li>
				<li class="mr-1">
					<a class="bg-white hover:border-brand-500 border-b border-l border-t border-r py-3 px-4 text-gray-900 hover:text-brand-500 font-semibold" href="<%=ctx%>/inCompletionCourse">Incomplete Course</a>
				</li>
				<li class="mr-1">
					<a class="bg-white border-brand-500 border-b border-l border-t-4 border-r  py-3 px-4 text-brand-500 font-semibold" href="<%=ctx%>/schedule">Schedule</a>
				</li>
				<li class="mr-1">
					<a class="bg-white hover:border-brand-500 border-b border-l border-t border-r py-3 px-4 text-gray-900 hover:text-brand-500 font-semibold" href="<%=ctx%>/profile">Profile</a>
				</li>
				<li class="mr-1">
					<a class="bg-white hover:border-brand-500 border-b border-l border-t border-r py-3 px-4 text-gray-900 hover:text-brand-500 font-semibold" href="<%=ctx%>/wishList">WishList</a>
				</li>
				<li class="mr-1">
					<a class="bg-white hover:border-brand-500 border-b border-l border-t border-r py-3 px-4 text-gray-900 hover:text-brand-500 font-semibold" href="<%=ctx%>/paymentHistory">PaymentHistory</a>
				</li>
			</ul>
			<div class="my-8 p-4">
				<div id="courseSchedule" class="w-full max-w-screen-md">
				</div>
			</div>
		</div>
	</div>
</div>