<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title> 


   

</head>
<body>
	<div class="w-full max-w-screen-xl my-0 mx-auto items-center justify-between flex-wrap px-8 xl:px-0">
		<div class="text-xl p-3 mx-16 ">  
			<i class="xi-school"></i>&nbsp;강사 업무 일지 등록
		</div>
 
		<form method="post" action="<%=projectPath %>/admin/adminMangeRegiOk" enctype="multipart/form-data" onsubmit="return manageRegiCheck()">
			<!-- 테이블 -->
			<div class="p-6 bg-info-100">  
				<table class="border w-full"> 
					<thead>
						<tr> 
							<th class="w-32 bg-info-300 py-2 text-center">강사명</th>
							<th class="border bg-white  px-4 py-2 text-left"><input type="text" id="teacherName" name="employee_name" class="border border-black" value="${employee_name}"/></th> 
						</tr> 
						<tr>		
							<th class="bg-info-300 py-2 text-center">클래스</th>
							<th class="border bg-white px-2 py-2 text-left">
								<select name="admin_manageinfo_subject" id="classSubject" class="border border-black mx-2 h-8">    
									<option selected="selected">::과목::</option>
									<option value="JAVA">JAVA</option>
									<option value="javascript">javascript</option>
									<option value="Html/CSS">Html/CSS</option>
									<option value="Spring">Spring</option>	
								</select>  
								<select name="admin_manageinfo_class" id="classSelect" class="border border-black h-8">   
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
							<th class="border bg-white  px-4 py-2 text-left calendar"><input type="text" id="courseDate" name="admin_manageinfo_date" class="datepicker border border-gray-600"/></th>
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
						<th class="border bg-white  px-4 py-2 text-center"><input type="text" id="courseAbsent" name="admin_manageinfo_absent" class="text-center w-16 border border-black" placeholder="0"/></th>
						<th class="bg-info-300 py-2 text-center">결석생</th>
						<th class="border bg-white px-4 py-2 text-justify" style="width:800px">사유 :&nbsp;&nbsp;<input type="text" id="absentReason" name="absent_reson" style="width:500px" class="border border-black" placeholder="사고"/></th> 
					</tr>
					<tr>
						<th class="bg-info-300 py-2 text-center">지각</th>
						<th class="border bg-white  px-4 py-2 text-center"><input type="text" name="admin_manageinfo_tardy" id="courselateness" class="text-center w-16 border border-black" placeholder="0"/></th>
						<th class="bg-info-300 py-2 text-center">지각생</th> 
						<th class="border bg-white  px-4 py-2 text-justify"style="width:800px">사유 :&nbsp;&nbsp;<input type="text" id="latenessReason" name="tardy_reason" style="width:500px" class="border border-black" placeholder="사고"/></th>
					</tr>
					<tr>	
						<th class="bg-info-300 py-2 text-center">조퇴</th> 
						<th class="border bg-white  px-4 py-2 text-center"><input type="text" id="courseEarlyLeave" name="admin_manageinfo_early" class="text-center w-16 border border-black" placeholder="0"/></th>
						<th class="bg-info-300 py-2 text-center">조퇴 인원</th>
						<th class="border bg-white  px-4 py-2 text-justify"style="width:800px">사유 :&nbsp;&nbsp;<input type="text" id="earlyLeaveReason" name="early_reason" style="width:500px" class="border border-black" placeholder="사고"/></th>
					</tr>
					<tr>	
						<th class="bg-info-300 py-2 text-center">휴강자</th>
						<th class="border bg-white  px-4 py-2 text-center"><input type="text" name="admin_manageinfo_rest" id="courseCanceler" class="text-center w-16 border border-black" placeholder="0"/></th>
						<th class="bg-info-300 py-2 text-center">휴강생</th>
						<th class="border bg-white  px-4 py-2 text-justify"style="width:800px">사유 :&nbsp;&nbsp;<input type="text" id="cancelerReason" name="rest_reason" style="width:500px" class="border border-black" placeholder="사고"/></th>
					</tr>
					<tr>	
						<th class="bg-info-300 py-2 text-center">반 이동</th>
						<th class="border bg-white  px-4 py-2 text-center"><input type="text" id="courseClassMove" name="admin_manageinfo_move" class="text-center w-16 border border-black" placeholder="0"/></th>
						<th class="bg-info-300 py-2 text-center">이동 인원</th>
						<th class="border bg-white  px-4 py-2 text-justify"style="width:800px">사유 :&nbsp;&nbsp;<input type="text" id="classMoveReason" name="move_reason" style="width:500px" class="border border-black" placeholder="사고"/></th>
					</tr>
					<tr>	
						<th class="bg-info-300 py-2 text-center">현재 인원</th> 
						<th class="border bg-white  px-4 py-2 text-center"><input type="text" id="courseStudentNum" name="admin_manageinfo_now" class="text-center w-16 border border-black" placeholder="0"/></th> 
						<th class="bg-info-300 py-2  text-center">학생/학부모 상담</th>
						<th class="border bg-white  px-4 py-2 text-justify"style="width:800px">사유 :&nbsp;&nbsp;<input type="text" id="counselingReason" name="student_parent_counsel" style="width:500px" class="border border-black" placeholder="사고"/></th>	
					</tr>
					</thead>
				</table>
		
				<div class="p-3"></div>
			
				<table class="border w-full"> 
					<thead>
						<tr>
							<th class="w-32 bg-info-300 py-2 text-center">금일 진행 업무</th>
							<th class="border bg-white px-4 py-2 text-left"><input type="text" id="todayWork" name="admin_manageinfo_work" style="width:500px" class="border border-black" placeholder="금일 진행한 업무 요약"/></th>
						</tr>
						<tr>		
							<th class="bg-info-300 py-2 text-center">건의 사항</th>
							<th class="border bg-white px-4 py-2 text-left"><input type="text" id="suggestion" name="admin_manageinfo_opinion" style="width:500px" class="border border-black" placeholder="건의 사항을 적어주세요"/></th>
						</tr>
						<tr> 
							<th class="bg-info-300 py-2 text-center">첨부파일</th>  
							<th class="border  bg-white px-2 py-2 text-left"><input type="file" name="admin_manageinfo_file_m"/></th>		
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