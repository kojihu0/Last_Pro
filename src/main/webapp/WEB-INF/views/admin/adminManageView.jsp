<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %> 
<%
	String projectPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<script src="/lms/js/jquery-3.4.1.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	
	


    <link rel="stylesheet" href="<%=projectPath %>/css/tailwind.css" type="text/css"/>
	<link rel="stylesheet" href="<%=projectPath %>/css/adminCss.css" type="text/css"/>
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
</head>
<body>
	<div class="w-full max-w-screen-xl my-0 mx-auto items-center justify-between flex-wrap px-8 xl:px-0">
		<div class="text-xl p-3">
			<i class="xi-school"></i>&nbsp;강사 업무 일지 작성
		</div>
		 
		<div class="p-3 text-right"> 
			<button class="bg-gray-500 hover:bg-blue-700 border border-black font-bold py-2 px-4 rounded-full"><a href="<%=projectPath%>/admin/adminManagementInfo">목록으로</a></button>
			<button class="bg-gray-500 hover:bg-blue-700 border border-black font-bold py-2 px-4 rounded-full"><a href="<%=projectPath%>/admin/adminManageEdit">수정</a></button>
		</div>
		 
		<!-- 테이블 -->
			<div class="p-6 bg-info-100">  
				<table class="border w-full"> 
					<thead>
						<tr>
							<th class="w-32 bg-info-300 py-2 text-center">강사명</th>
							<th class="border bg-white  px-4 py-2 text-left">김개똥</th>
						</tr>
						<tr>		
							<th class="bg-info-300 py-2 text-center">클래스</th>
							<th class="border bg-white px-4 py-2 text-left">자바 반</th>
						</tr>
						<tr>		
							<th class="bg-info-300  py-2 text-center">강의 일자</th>
							<th class="border bg-white  px-4 py-2 text-left">06.11</th>
						</tr>
						<tr> 
							<th class="bg-info-300 py-2 text-center">결제 상태</th>
							<th class="border bg-white px-4  py-2 text-left">미결</th>		
						</tr>
					</thead>   
				</table> 
				<!-- 테이블 end -->
				
				<div class="p-3"></div>
				
				<!-- 2번째 테이블 -->
				<table class="w-full">
					<thead>
					<tr>
						<th class="w-32 bg-info-300 py-2 text-center">결석</th>
						<th class="w-32 border bg-white  px-4 py-2 text-center">3</th>
						<th class="w-64 bg-info-300 py-2 text-center">결석생</th>
						<th class="border bg-white px-4 py-2 text-justify" style="width:800px">사유 : </th> 
					</tr>
					<tr>
						<th class="bg-info-300 py-2 text-center">지각</th>
						<th class="border bg-white  px-4 py-2 text-center">4</th>
						<th class="bg-info-300 py-2 text-center">지각생</th>
						<th class="border bg-white  px-4 py-2 text-justify"style="width:800px">사유 : </th>
					</tr>
					<tr>	
						<th class="bg-info-300 py-2 text-center">조퇴</th> 
						<th class="border bg-white  px-4 py-2 text-center">4</th>
						<th class="bg-info-300 py-2 text-center">조퇴 인원</th>
						<th class="border bg-white  px-4 py-2 text-justify"style="width:800px">사유 : </th>
					</tr>
					<tr>	
						<th class="bg-info-300 py-2 text-center">휴강자</th>
						<th class="border bg-white  px-4 py-2 text-center">5</th>
						<th class="bg-info-300 py-2 text-center">휴강생</th>
						<th class="border bg-white  px-4 py-2 text-justify"style="width:800px">사유 : </th>
					</tr>
					<tr>	
						<th class="bg-info-300 py-2 text-center">반 이동</th>
						<th class="border bg-white  px-4 py-2 text-center">3</th>
						<th class="bg-info-300 py-2 text-center">이동 인원</th>
						<th class="border bg-white  px-4 py-2 text-justify"style="width:800px">사유 : </th>
					</tr>
					<tr>	
						<th class="bg-info-300 py-2 text-center">현재 인원/총인원</th>
						<th class="border bg-white  px-4 py-2 text-center">30명/40명</th>
						<th class="bg-info-300 py-2 text-center">학생 및 학부모 상담</th>
						<th class="border bg-white  px-4 py-2 text-justify"style="width:800px">사유 :</th>	
					</tr>
					</thead>
				</table>
		
				<div class="p-3"></div>
			
				<table class="border w-full"> 
					<thead>
						<tr>
							<th class="w-32 bg-info-300 py-2 text-center">금일 진행 업무</th>
							<th class="border bg-white px-4 py-2 text-left">너 오늘 뭐 했니??</th>
						</tr>
						<tr>		
							<th class="bg-info-300 py-2 text-center">건의 사항</th>
							<th class="border bg-white px-4 py-2 text-left">말해봐. 들어는 줄게</th>
						</tr>
						<tr>  
							<th class="bg-info-300 py-2 text-center">첨부파일</th>
							<th class="border  bg-white px-32 py-2 text-left"><a href="#" download></a></th>		
						</tr>
					</thead>  
				</table>  
				
				<div class="p-3"></div>
				
			<form method="get" action="<%=projectPath %>/admin/adminManagementInfo">
				승인 여부 &nbsp;: <input class="mx-2" type="radio" name="type" value="Y" checked>승인 <input class="mx-2" type="radio" name="type" value="N">반송 <br/> 
				한 줄 의견 : <input type="text" style="width:500px" class="border"/>
				
				<br/>
				
				<div class="p-3"></div> 
				
				<div class="text-right">  
					<input type="submit" value="결제" class="bg-gray-500 hover:bg-blue-700 border border-black font-bold py-2 px-4 rounded-full"/>
					<!-- 목록으로 가는 버튼 -->		
				</div>
			</form>	
		
	</div>		
  
</div>


</body>
</html>