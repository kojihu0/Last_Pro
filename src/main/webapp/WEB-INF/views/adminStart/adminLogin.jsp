<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String projectPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <!-- Tailwind -->
    <link rel="stylesheet" href="<%=projectPath %>/css/tailwind.css" type="text/css"/>
  
  	<!-- base -->
	<link rel="stylesheet" href="<%=projectPath %>/css/adminCss.css" type="text/css"/>
    <style>
    	<!-- 폰트 추가 -->
        @import url('https://fonts.googleapis.com/css?family=Karla:400,700&display=swap');
        .font-family-karla {
            font-family: karla;
        }
        <!-- 폰트 추가 end -->
    </style>
    <script src="<%=projectPath%>/js/adminWordCheck.js" type="text/javascript"></script>
    
</head> 



<body class="bg-white font-family-karla h-screen">

    <div class="w-full flex flex-wrap">
        <!-- Login Section --> 
        <div class="w-full md:w-1/2 flex flex-col">
            <div class="flex justify-center md:justify-start pt-12 md:pl-12 md:-mb-24">
                <a href="#" class="text-white font-bold text-xl p-4"><img id="logoImg" src="<%=projectPath %>/img/educamp.png"/></a> 
            </div>

            <div class="flex flex-col justify-center md:justify-start my-auto pt-8 md:pt-0 px-8 md:px-24 lg:px-32">
                <p class="text-center text-3xl">Welcome!</p>
                 
                <!-- loginform start -->
                <form class="flex flex-col pt-3 md:pt-8" method="post" action="<%=projectPath %>/adminStart/adminLoginOk" onsubmit="return adminLoginChek()">
                    <div class="flex flex-col pt-4">
                        <label for="adminId" class="text-lg">Id</label>
                        <input type="email" id="adminId" name="admin_id" placeholder="your@email.com" class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 mt-1 leading-tight focus:outline-none focus:shadow-outline">
                    </div>
                    <div class="flex flex-col pt-4">
                        <label for="adminPw" class="text-lg">Password</label> 
                        <input type="password" id="adminPw" name="admin_pw" placeholder="Password" class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 mt-1 leading-tight focus:outline-none focus:shadow-outline">
                    </div>
                    <input type="submit" value="LogIn" class="bg-brand-500 text-white font-bold text-lg hover:bg-gray-700 p-2 mt-8">
                </form>
 				<!-- loginform end -->               
                <!-- 회원가입 링크 start-->
                <div class="text-center pt-12 pb-12">
                    <p>Don't have an account? <a href="<%=projectPath %>/adminStart/adminJoin" class="underline font-semibold">Register here.</a></p>
                </div>
                <!-- 회원가입 링크 end -->
            </div>

        </div>

        <!-- Image Section -->
        <div class="w-1/2 shadow-2xl">
            <img class="object-cover w-full h-screen hidden md:block" src="<%=projectPath %>/img/adminLoginBanner_01.jpg"/>
        </div>
        <!-- image section end -->
    </div>

</body>
</html>