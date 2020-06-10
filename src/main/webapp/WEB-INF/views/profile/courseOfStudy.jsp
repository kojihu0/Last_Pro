<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/tailwind.css" type="text/css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/profile.css" type="text/css">
</head>
<body>

	<div class="mb-4 h-64 w-full  border-solid border-4 border-brand-500 background-image:url('<%=request.getContextPath()%>/img/menu-img.jpg')">
		
	</div>
	<div id="profileMenu" class="m-0 m-auto">
		<span class="text-gray-500">Home&nbsp;&nbsp;>&nbsp;&nbsp;Profile</span>
	<div id="hr" class="my-4 border-t border-solid"></div>
		<ul class="flex ">
		  <li class="-mb-px mr-1">
		    <a class="bg-white  hover:inline-block border-b border-l border-t border-r  py-3 px-4 text-brand-500 font-semibold" href="#">Course</a>
		  </li> 
		  <li class="mr-1">
		    <a class="bg-white inline-block py-3 px-4 text-gray-900 hover:text-brand-500 font-semibold" href="#">Completion Course</a>
		  </li>
		   <li class="mr-1">
		    <a class="bg-white inline-block py-3 px-4 text-gray-900 hover:text-brand-500 font-semibold" href="#">Schedule</a>
		  </li>
		  <li class="mr-1">
		    <a class="bg-white inline-block py-3 px-4 text-gray-900 hover:text-brand-500 font-semibold" href="#">Schedule</a>
		  </li>
		  <li class="mr-1">
		    <a class="bg-white inline-block py-3 px-4 text-gray-900 hover:text-brand-500 font-semibold" href="#">Profile</a>
		  </li>
		</ul>
		<div>
		 <ul class="flex border-b mt-16">
		  <li class="-mb-px mr-1">
		    <a class="bg-white  inline-block border-l border-t border-r  py-1 px-3 text-brand-500 font-semibold" href="#">Course</a>
		  </li> 
		  <li class="mr-1">
		    <a class="bg-white inline-block py-1 px-3 text-gray-900 hover:text-brand-500 font-semibold" href="#">Grade</a>
		  </li>
		 	
		 </ul>
		</div>
		
	</div>

</body>
</html>