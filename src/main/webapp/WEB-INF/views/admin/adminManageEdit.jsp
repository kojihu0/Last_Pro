<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %> 
		<div class="w-full max-w-screen-xl my-0 mx-auto items-center justify-between flex-wrap px-8 xl:px-0">
		<div class="text-xl p-6 ">  
			<i class="xi-school"></i>&nbsp;강사 업무 일지 수정
		</div>
	
		<div class="p-3 text-right">  
			<a href="<%=projectPath%>/admin/adminManagementInfo" class="border-solid border border-gray-600 rounded py-2 px-4">목록으로</a>
		</div>
	  
	 
		<form method="post" action="<%=projectPath %>/admin/adminManageEditOk?admin_manageinfo_no=${result_Vo.admin_manageinfo_no}" enctype="multipart/form-data" onsubmit="return manageEditCheck()">
			<!-- 테이블 -->
			<div class="p-6 bg-info-100">  
				<table class="border w-full">  
					<thead>
						<tr>
							<th class="w-32 bg-info-300 py-2 text-center">강사명</th>
							<th class="border bg-white  px-4 py-2 text-left">${result_Vo.employee_name}</th>
						</tr>
						<tr>		
							<th class="bg-info-300 py-2 text-center">클래스</th>
							<th class="border bg-white px-2 text-left">
								<select name="admin_manageinfo_subject" id="classSubject" class="border border-black mx-2 h-8">     
									<c:if test="${result_Vo.admin_manageinfo_subject == null }"><option  selected="selected">::전공::</option></c:if>
									<c:if test="${result_Vo.admin_manageinfo_subject != null }"><option>::반::</option></c:if>
									
									<c:if test="${result_Vo.admin_manageinfo_subject == 'JAVA' }"><option value="JAVA"  selected="selected">JAVA</option></c:if>
									<c:if test="${result_Vo.admin_manageinfo_subject != 'JAVA' }"><option value="JAVA" >JAVA</option></c:if>
									
									<c:if test="${result_Vo.admin_manageinfo_subject == 'javascript' }"><option value="javascript" selected="selected">javascript</option></c:if>
									<c:if test="${result_Vo.admin_manageinfo_subject != 'javascript' }"><option value="javascript">javascript</option></c:if>
									
									<c:if test="${result_Vo.admin_manageinfo_subject == 'Html/CSS'}"><option value="Html/CSS" selected="selected">Html/CSS</option></c:if>
									<c:if test="${result_Vo.admin_manageinfo_subject != 'Html/CSS' }"><option value="Html/CSS">Html/CSS</option></c:if>
									
									<c:if test="${result_Vo.admin_manageinfo_subject == 'Spring' }"><option value="Spring" selected="selected">Spring</option></c:if>
									<c:if test="${result_Vo.admin_manageinfo_subject != 'Spring' }"><option value="Spring">Spring</option></c:if>
								</select> 
								
								<select name="admin_manageinfo_class" id="classSelect" class="border border-black h-8">   
									<c:if test="${result_Vo.admin_manageinfo_class == null }"><option  selected="selected">::반::</option></c:if>
									<c:if test="${result_Vo.admin_manageinfo_class != null }"><option>::반::</option></c:if>
									
									<c:if test="${result_Vo.admin_manageinfo_class != 'A' }"><option value="A">A</option></c:if>
									<c:if test="${result_Vo.admin_manageinfo_class == 'A' }"><option value="A"  selected="selected">A</option></c:if>
									 
									<c:if test="${result_Vo.admin_manageinfo_class != 'B' }"><option value="B">B</option></c:if>
									<c:if test="${result_Vo.admin_manageinfo_class == 'B' }"><option value="B" selected="selected">B</option></c:if>
									
									<c:if test="${result_Vo.admin_manageinfo_class != 'C'  }"><option value="C">C</option></c:if>
									<c:if test="${result_Vo.admin_manageinfo_class == 'C' }"><option value="C" selected="selected">C</option></c:if> 
									
									<c:if test="${result_Vo.admin_manageinfo_class != 'D' }"><option value="D">D</option></c:if>
									<c:if test="${result_Vo.admin_manageinfo_class == 'D' }"><option value="D" selected="selected">D</option></c:if>
									
									<c:if test="${result_Vo.admin_manageinfo_class != 'E' }"><option value="E">E</option></c:if>
									<c:if test="${result_Vo.admin_manageinfo_class == 'E' }"><option value="E" selected="selected">E</option></c:if>
									
									<c:if test="${result_Vo.admin_manageinfo_class != 'F' }"><option value="F">F</option></c:if> 
									<c:if test="${result_Vo.admin_manageinfo_class == 'F' }"><option value="F" selected="selected">F</option></c:if>
								</select>
									
							</th>							
						</tr>
						<tr>		
							<th class="bg-info-300  py-2 text-center">강의 일자</th>
							<th class="border bg-white  px-4 py-2 text-left calendar"><input type="text" id="courseDate" name="admin_manageinfo_date" class="border border-gray-600 datepicker" value="${result_Vo.admin_manageinfo_date }"/></th>
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
						<th class="border bg-white  px-4 py-2 text-center"><input type="text" id="courseAbsent" name="admin_manageinfo_absent" class="text-center w-16 border border-black" placeholder="0" value="${result_Vo.admin_manageinfo_absent }"/></th>
						<th class="bg-info-300 py-2 text-center">결석생</th>
						<th class="border bg-white px-4 py-2 text-justify" style="width:800px">사유 :&nbsp;&nbsp;<input type="text" id="absentReason" name="absent_reason" value="${result_Vo.absent_reason }" style="width:500px" class="border border-black" /></th> 
					</tr>
					<tr>
						<th class="bg-info-300 py-2 text-center">지각</th>
						<th class="border bg-white  px-4 py-2 text-center"><input type="text" id="courselateness" name="admin_manageinfo_tardy" value="${result_Vo.admin_manageinfo_tardy }" class="text-center w-16 border border-black"/></th>
						<th class="bg-info-300 py-2 text-center">지각생</th> 
						<th class="border bg-white  px-4 py-2 text-justify"style="width:800px">사유 :&nbsp;&nbsp;<input type="text" id="latenessReason" name="tardy_reason" value="${result_Vo.tardy_reason}" style="width:500px" class="border border-black"/></th>
					</tr>
					<tr>	
						<th class="bg-info-300 py-2 text-center">조퇴</th> 
						<th class="border bg-white  px-4 py-2 text-center"><input type="text" id="courseEarlyLeave" name="admin_manageinfo_early" value="${result_Vo.admin_manageinfo_early }" class="text-center w-16 border border-black" /></th>
						<th class="bg-info-300 py-2 text-center">조퇴 인원</th>
						<th class="border bg-white  px-4 py-2 text-justify"style="width:800px">사유 :&nbsp;&nbsp;<input type="text" id="earlyLeaveReason" name="early_reason" value="${result_Vo.early_reason }" style="width:500px" class="border border-black" /></th>
					</tr>
					<tr>	
						<th class="bg-info-300 py-2 text-center">휴강자</th>
						<th class="border bg-white  px-4 py-2 text-center"><input type="text" id="courseCanceler" name="admin_manageinfo_rest" value="${result_Vo.admin_manageinfo_rest }" class="text-center w-16 border border-black" /></th>
						<th class="bg-info-300 py-2 text-center">휴강생</th>
						<th class="border bg-white  px-4 py-2 text-justify"style="width:800px">사유 :&nbsp;&nbsp;<input type="text" id="cancelerReason" name="rest_reason" value="${result_Vo.rest_reason }" style="width:500px" class="border border-black" /></th>
					</tr>
					<tr>	
						<th class="bg-info-300 py-2 text-center">반 이동</th>
						<th class="border bg-white  px-4 py-2 text-center"><input type="text" id="courseClassMove"name="admin_manageinfo_move" value="${result_Vo.admin_manageinfo_move }" class="text-center w-16 border border-black" /></th>
						<th class="bg-info-300 py-2 text-center">이동 인원</th>
						<th class="border bg-white  px-4 py-2 text-justify"style="width:800px">사유 :&nbsp;&nbsp;<input type="text" id="classMoveReason" name="move_reason" value="${result_Vo.move_reason }" style="width:500px" class="border border-black" /></th>
					</tr>
					<tr>	
						<th class="bg-info-300 py-2 text-center">현재 인원</th> 
						<th class="border bg-white  px-4 py-2 text-center"><input type="text" id="courseStudentNum" name="admin_manageinfo_now" value="${result_Vo.admin_manageinfo_now }" class="text-center w-16 border border-black" /></th>
						<th class="bg-info-300 py-2  text-center">학생/학부모 상담</th>
						<th class="border bg-white  px-4 py-2 text-justify"style="width:800px">상담 비고 :&nbsp;&nbsp;<input type="text" id="counselingReason" name="student_parent_counsel" value="${result_Vo.student_parent_counsel }" style="width:500px" class="border border-black"/></th>	
					</tr>
					</thead>
				</table>
		
				<div class="p-3"></div>
			
				<table class="border w-full"> 
					<thead>
						<tr>
							<th class="w-32 bg-info-300 py-2 text-center">금일 진행 업무</th>
							<th class="border bg-white px-4 py-2 text-left"><input type="text" id="todayWork" name="admin_manageinfo_work" value="${result_Vo.admin_manageinfo_work }" style="width:500px" class="border border-black" /></th>
						</tr>
						<tr>		
							<th class="bg-info-300 py-2 text-center">건의 사항</th>
							<th class="border bg-white px-4 py-2 text-left"><input type="text" id="suggestion" name="admin_manageinfo_opinion" value="${result_Vo.admin_manageinfo_opinion }" style="width:500px" class="border border-black"/></th>
						</tr>
						<tr> 
							<th class="bg-info-300 py-2 text-center">첨부파일</th>   
							<th class="border  bg-white px-2 py-2 text-left"><input type="file" value="${result_Vo.admin_manageinfo_file }" name="admin_manageinfo_file_m" /></th>		
						</tr>
					</thead>   
				</table>
				 
				<div class="p-3"></div>
				
				<div class="text-right"> 
					<input type="submit" value="수정" class="bg-info-700 text-white rounded py-2 px-4"/>
					<a href="<%=projectPath %>/admin/adminManagementInfo" class="bg-info-700 text-white rounded py-2 px-4">수정취소</a> 
				</div> 
			</div>
		</form>   
	</div>
