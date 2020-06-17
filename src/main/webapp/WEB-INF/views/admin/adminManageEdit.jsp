<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>adminManageEdit</title>


</head>
<body>
		<div class="w-full max-w-screen-xl my-0 mx-auto items-center justify-between flex-wrap px-8 xl:px-0">
		<div class="text-xl p-3 mx-16 ">  
			<i class="xi-school"></i>&nbsp;강사 업무 일지 수정
		</div>
	
		<div class="p-3 text-right"> 
			<button class="bg-gray-500 hover:bg-blue-700 border border-black font-bold py-2 px-4 rounded-full"><a href="<%=projectPath%>/admin/adminManagementInfo">목록으로</a></button>
		</div>
	
	
		<form method="post" action="<%=projectPath %>/admin/adminManageEditOk" enctype="multipart/form-data" onsubmit="return manageEditCheck()">
			<!-- 테이블 -->
			<div class="p-6 bg-info-100">  
				<table class="border w-full"> 
					<thead>
						<tr>
							<th class="w-32 bg-info-300 py-2 text-center">강사명</th>
							<th class="border bg-white  px-4 py-2 text-left">정진범</th>
						</tr>
						<tr>		
							<th class="bg-info-300 py-2 text-center">클래스</th>
							<th class="border bg-white px-2 text-left">
								<select id="classSubject" class="border border-black mx-2 h-8">    
									<option selected="selected">::과목::</option>
									<option value="JAVA">JAVA</option>
									<option value="javascript">javascript</option>
									<option value="Html/CSS">Html/CSS</option>
									<option value="Spring">Spring</option>	
								</select> 
								<select id="classSelect" class="border border-black h-8">   
									<option selected="selected">::반::</option>
									<option value="A">A</option>
									<option value="B">B</option>
									<option value="C">C</option>
									<option value="D">D</option>
									<option value="E">E</option>
									<option value="F">F</option>	
								</select>	
							</th>							
						</tr>
						<tr>		
							<th class="bg-info-300  py-2 text-center">강의 일자</th>
							<th class="border bg-white  px-4 py-2 text-left calendar"><input type="text" id="courseDate" name="courseDate" class="border border-gray-600 datepicker"/></th>
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
						<th class="border bg-white  px-4 py-2 text-center"><input type="text" id="courseAbsent" name="courseAbsent" class="text-center w-16 border border-black" placeholder="0"/></th>
						<th class="bg-info-300 py-2 text-center">결석생</th>
						<th class="border bg-white px-4 py-2 text-justify" style="width:800px">사유 :&nbsp;&nbsp;<input type="text" id="absentReason" name="absentReason" style="width:500px" class="border border-black" placeholder="사고"/></th> 
					</tr>
					<tr>
						<th class="bg-info-300 py-2 text-center">지각</th>
						<th class="border bg-white  px-4 py-2 text-center"><input type="text" id="courselateness" name="courselateness" class="text-center w-16 border border-black" placeholder="0"/></th>
						<th class="bg-info-300 py-2 text-center">지각생</th> 
						<th class="border bg-white  px-4 py-2 text-justify"style="width:800px">사유 :&nbsp;&nbsp;<input type="text" id="latenessReason" name="latenessReason" style="width:500px" class="border border-black" placeholder="사고"/></th>
					</tr>
					<tr>	
						<th class="bg-info-300 py-2 text-center">조퇴</th> 
						<th class="border bg-white  px-4 py-2 text-center"><input type="text" id="courseEarlyLeave" name="courseEarlyLeave" class="text-center w-16 border border-black" placeholder="0"/></th>
						<th class="bg-info-300 py-2 text-center">조퇴 인원</th>
						<th class="border bg-white  px-4 py-2 text-justify"style="width:800px">사유 :&nbsp;&nbsp;<input type="text" id="earlyLeaveReason" name="earlyLeaveReason" style="width:500px" class="border border-black" placeholder="사고"/></th>
					</tr>
					<tr>	
						<th class="bg-info-300 py-2 text-center">휴강자</th>
						<th class="border bg-white  px-4 py-2 text-center"><input type="text" id="courseCanceler" name="courseCanceler" class="text-center w-16 border border-black" placeholder="0"/></th>
						<th class="bg-info-300 py-2 text-center">휴강생</th>
						<th class="border bg-white  px-4 py-2 text-justify"style="width:800px">사유 :&nbsp;&nbsp;<input type="text" id="cancelerReason" name="cancelerReason" style="width:500px" class="border border-black" placeholder="사고"/></th>
					</tr>
					<tr>	
						<th class="bg-info-300 py-2 text-center">반 이동</th>
						<th class="border bg-white  px-4 py-2 text-center"><input type="text" id="courseClassMove"name="courseClassMove" class="text-center w-16 border border-black" placeholder="0"/></th>
						<th class="bg-info-300 py-2 text-center">이동 인원</th>
						<th class="border bg-white  px-4 py-2 text-justify"style="width:800px">사유 :&nbsp;&nbsp;<input type="text" id="classMoveReason" name="classMoveReason" style="width:500px" class="border border-black" placeholder="사고"/></th>
					</tr>
					<tr>	
						<th class="bg-info-300 py-2 text-center">현재 인원</th> 
						<th class="border bg-white  px-4 py-2 text-center"><input type="text" id="courseStudentNum" name="courseStudentNum" class="text-center w-16 border border-black" placeholder="0"/></th>
						<th class="bg-info-300 py-2  text-center">학생/학부모 상담</th>
						<th class="border bg-white  px-4 py-2 text-justify"style="width:800px">상담 비고 :&nbsp;&nbsp;<input type="text" id="counselingReason" name="counselingReason" style="width:500px" class="border border-black" placeholder="사고"/></th>	
					</tr>
					</thead>
				</table>
		
				<div class="p-3"></div>
			
				<table class="border w-full"> 
					<thead>
						<tr>
							<th class="w-32 bg-info-300 py-2 text-center">금일 진행 업무</th>
							<th class="border bg-white px-4 py-2 text-left"><input type="text" id="todayWork" name="todayWork" style="width:500px" class="border border-black" placeholder="금일 진행한 업무 요약"/></th>
						</tr>
						<tr>		
							<th class="bg-info-300 py-2 text-center">건의 사항</th>
							<th class="border bg-white px-4 py-2 text-left"><input type="text" id="suggestion" name="suggestion" style="width:500px" class="border border-black" placeholder="건의 사항을 적어주세요"/></th>
						</tr>
						<tr> 
							<th class="bg-info-300 py-2 text-center">첨부파일</th> 
							<th class="border  bg-white px-2 py-2 text-left"><input type="file" name="file"/></th>		
						</tr>
					</thead>   
				</table>
				
				<div class="p-3"></div>
				
				<div class="text-right"> 
					<input type="submit" value="수정" class="bg-gray-500 border-black border hover:bg-cta-800 font-bold py-2 px-4 rounded-full"/>
					<a href="<%=projectPath %>/admin/adminManagementInfo" class="bg-gray-500 border-black border hover:bg-cta-800 font-bold py-2 px-4 rounded-full">수정취소</a> 
				</div> 
			</div>
		</form>   
	</div>


</body>
</html>