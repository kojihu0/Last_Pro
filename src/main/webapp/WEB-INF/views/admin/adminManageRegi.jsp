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


    <link rel="stylesheet" href="<%=projectPath %>/css/tailwind.css" type="text/css"/>
	<link rel="stylesheet" href="<%=projectPath %>/css/adminCss.css" type="text/css"/>
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">

</head>
<body>
	<div class="w-full max-w-screen-xl my-0 mx-auto items-center justify-between flex-wrap px-8 xl:px-0">
		<div class="text-xl p-3 mx-16 ">  
			<i class="xi-school"></i>&nbsp;강사 업무 일지 등록
		</div>

		<form method="psot" action="<%=projectPath %>/admin/adminManageRegiOk" enctype="multipart/form-data">
			<!-- 테이블 -->
			<div class="p-6 bg-info-100">  
				<table class="border w-full"> 
					<thead>
						<tr>
							<th class="w-32 bg-info-300 py-2 text-center">강사명</th>
							<th class="border bg-white  px-4 py-2 text-left"><input type="text" name="teacherName" class="border border-black"placeholder="김개똥"/></th>
						</tr>
						<tr>		
							<th class="bg-info-300 py-2 text-center">클래스</th>
							<th class="border bg-white px-2 py-2 text-left">
								<select class="border border-black flex-initial mx-2">   
									<option>::과목::</option>
									<option>JAVA</option>
									<option>javascript</option>
									<option>Html/CSS</option>
									<option>Spring</option>	
								</select>
							</th>
						</tr>
						<tr>		
							<th class="bg-info-300  py-2 text-center">강의 일자</th>
							<th class="border bg-white  px-4 py-2 text-left"><input type="date" name="courseDate" class="border border-black"/></th>
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
						<th class="border bg-white  px-4 py-2 text-center"><input type="text" name="courseAbsent" class="text-center w-16 border border-black" placeholder="00"/></th>
						<th class="bg-info-300 py-2 text-center">결석생</th>
						<th class="border bg-white px-4 py-2 text-justify" style="width:800px">사유 :&nbsp;&nbsp;<input type="text" name="absentReason" style="width:500px" class="border border-black" placeholder="사고"/></th> 
					</tr>
					<tr>
						<th class="bg-info-300 py-2 text-center">지각</th>
						<th class="border bg-white  px-4 py-2 text-center"><input type="text" name="courselateness" class="text-center w-16 border border-black" placeholder="00"/></th>
						<th class="bg-info-300 py-2 text-center">지각생</th> 
						<th class="border bg-white  px-4 py-2 text-justify"style="width:800px">사유 :&nbsp;&nbsp;<input type="text" name="latenessReason" style="width:500px" class="border border-black" placeholder="사고"/></th>
					</tr>
					<tr>	
						<th class="bg-info-300 py-2 text-center">조퇴</th> 
						<th class="border bg-white  px-4 py-2 text-center"><input type="text" name="courseEarlyLeave" class="text-center w-16 border border-black" placeholder="00"/></th>
						<th class="bg-info-300 py-2 text-center">조퇴 인원</th>
						<th class="border bg-white  px-4 py-2 text-justify"style="width:800px">사유 :&nbsp;&nbsp;<input type="text" name="earlyLeaveReason" style="width:500px" class="border border-black" placeholder="사고"/></th>
					</tr>
					<tr>	
						<th class="bg-info-300 py-2 text-center">휴강자</th>
						<th class="border bg-white  px-4 py-2 text-center"><input type="text" name="courseCanceler" class="text-center w-16 border border-black" placeholder="00"/></th>
						<th class="bg-info-300 py-2 text-center">휴강생</th>
						<th class="border bg-white  px-4 py-2 text-justify"style="width:800px">사유 :&nbsp;&nbsp;<input type="text" name="cancelerReason" style="width:500px" class="border border-black" placeholder="사고"/></th>
					</tr>
					<tr>	
						<th class="bg-info-300 py-2 text-center">반 이동</th>
						<th class="border bg-white  px-4 py-2 text-center"><input type="text" name="courseClassMove" class="text-center w-16 border border-black" placeholder="00"/></th>
						<th class="bg-info-300 py-2 text-center">이동 인원</th>
						<th class="border bg-white  px-4 py-2 text-justify"style="width:800px">사유 :&nbsp;&nbsp;<input type="text" name="classMoveReason" style="width:500px" class="border border-black" placeholder="사고"/></th>
					</tr>
					<tr>	
						<th class="bg-info-300 py-2 text-center">현재 인원</th> 
						<th class="border bg-white  px-4 py-2 text-center"><input type="text" name="courseStudentNum" class="text-center w-16 border border-black" placeholder="00"/></th>
						<th class="bg-info-300 py-2  text-center">학생/학부모 상담</th>
						<th class="border bg-white  px-4 py-2 text-justify"style="width:800px">사유 :&nbsp;&nbsp;<input type="text" name="counselingReason" style="width:500px" class="border border-black" placeholder="사고"/></th>	
					</tr>
					</thead>
				</table>
		
				<div class="p-3"></div>
			
				<table class="border w-full"> 
					<thead>
						<tr>
							<th class="w-32 bg-info-300 py-2 text-center">금일 진행 업무</th>
							<th class="border bg-white px-4 py-2 text-left"><input type="text" name="todayWork" style="width:500px" class="border border-black" placeholder="금일 진행한 업무 요약"/></th>
						</tr>
						<tr>		
							<th class="bg-info-300 py-2 text-center">건의 사항</th>
							<th class="border bg-white px-4 py-2 text-left"><input type="text" name="suggestion" style="width:500px" class="border border-black" placeholder="건의 사항을 적어주세요"/></th>
						</tr>
						<tr> 
							<th class="bg-info-300 py-2 text-center">첨부파일</th> 
							<th class="border  bg-white px-2 py-2 text-left"><input type="file" name="file"/></th>		
						</tr>
					</thead>   
				</table>
				
				<div class="p-3"></div>
				
				<div class="text-right"> 
					<input type="submit" value="등록" class="bg-info-200 border-black border font-bold py-2 px-4 rounded"/>
					<a href="<%=projectPath %>/admin/adminManagementInfo" class="bg-info-200 border-black border font-bold py-2 px-4 rounded">등록취소</a> 
				</div> 
			</div>
		</form>   
	</div>	
</body>
</html>