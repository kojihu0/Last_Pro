<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String projectPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>

    <!-- Tailwind -->
	<link rel="stylesheet" href="<%=projectPath %>/css/tailwind.css" type="text/css"/>
    <style>
        @import url('https://fonts.googleapis.com/css?family=Karla:400,700&display=swap');

        .font-family-karla {
            font-family: karla;
        }
    </style>


</head>
<body class="bg-white font-family-karla h-screen">
    <div class="w-full flex flex-wrap">
        <!-- Register Section -->
        <div class="w-full md:w-1/2 flex flex-col">
 			<!-- 로고 -->       
            <div class="flex justify-center md:justify-start pt-12 md:pl-12 md:-mb-12">
                <a href="#" class="bg-brand-500 text-white font-bold text-xl p-4">Logo</a>
            </div>
            <!-- 로고 end -->

            <div class="flex flex-col justify-center md:justify-start my-auto pt-8 md:pt-0 px-8 md:px-24 lg:px-32">
                <p class="text-center text-3xl">Join Us.</p>
               
               	<!-- form start .POST 방식 -->
                <form class="flex flex-col pt-3 md:pt-8" method="post" action="<%=projectPath %>/adminStart/adminJoinOk">
                    <!-- 이름 -->
                    <div class="flex flex-col pt-4">
                        <label for="adminName" class="text-lg">Name</label>
                        <input type="text" id="adminName" name="adminName" placeholder="your name" class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 mt-1 leading-tight focus:outline-none focus:shadow-outline">
                    </div>
					<!-- 이름 end -->
					<!-- 아이디 -->
                    <div class="flex flex-col pt-4">
                        <label for="adminId" class="text-lg">Id</label>
                        <input type="email" id="adminId" name="adminId" placeholder="your@email.com" class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 mt-1 leading-tight focus:outline-none focus:shadow-outline">
                    </div>
    				<!-- 아이디  end-->
    				<!-- 비밀번호 -->
                    <div class="flex flex-col pt-4">
                        <label for="adminPw" class="text-lg">Password</label>
                        <input type="password" id="adminPw" name="adminPw" placeholder="Password" class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 mt-1 leading-tight focus:outline-none focus:shadow-outline">
                    </div>
                    <!-- 비밀번호 end -->
					<!-- 비밀번호 확인 -->
                    <div class="flex flex-col pt-4">
                        <label for="confirmPw" class="text-lg">Confirm Password</label>
                        <input type="password" id="confirmPw" name="confirmPw" placeholder="Password" class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 mt-1 leading-tight focus:outline-none focus:shadow-outline">
                    </div>
    				<!-- 비밀번호 확인 end -->
                    <input type="submit" value="Register" class="bg-brand-500 text-white font-bold text-lg hover:bg-gray-700 p-2 mt-8">
                </form>
                <!-- form end -->
                
                <!-- 로그인 폼으로 .GET 방식 --> 
                <div class="text-center pt-12 pb-12">
                    <p>Already have an account? <a href="<%=projectPath %>/admin" class="underline font-semibold">Log in here.</a></p>
                </div>
                <!-- 로그인 폼으로 end -->
            </div>

        </div>

        <!-- Image Section -->
        <div class="w-1/2 shadow-2xl">
            <img class="object-cover w-full h-screen hidden md:block" src="<%=projectPath%>/img/adminLoginBanner_02.jpg"/>
        </div>
    </div>
</body>
</html>