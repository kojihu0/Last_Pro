<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %> 
	<div class="w-full max-w-screen-xl my-0 mx-auto items-center justify-between flex-wrap px-8 xl:px-0">
		<div class="text-xl p-3">
			<i class="xi-school"></i>&nbsp;강사 업무 일지 작성
		</div>
		 
		<div class="p-3 text-right">  
			<a class="bg-info-700 text-white rounded py-2 px-4" href="<%=projectPath%>/admin/adminManagementInfo">목록으로</a>
			<!-- 뭐가 문제여 또 -->
			<c:if test="${employee_name != '관리자' || employee_name == result_Vo.employee_name}"> 
				<a class="bg-info-700 text-white rounded py-2 px-4" href="<%=projectPath%>/admin/adminManageEdit?admin_manageinfo_no=${result_Vo.admin_manageinfo_no}&admin_manageinfo_title=${result_Vo.admin_manageinfo_title}">수정</a>
			</c:if>
		</div>
		 
		<!-- 테이블 -->
			<div class="p-6 bg-info-100">  
				<table class="border w-full"> 
					<thead> 
						<tr>
							<th class="w-32 bg-info-300 py-2 text-center">강사명</th>
							<td class="border bg-white  px-4 py-2 text-left">${result_Vo.employee_name }</td>
						</tr>
						<tr>		 
							<th class="bg-info-300 py-2 text-center">클래스</th> 
							<td class="border bg-white px-4 py-2 text-left">${result_Vo.admin_manageinfo_title}&nbsp;/&nbsp;${result_Vo.admin_manageinfo_subject }&nbsp;/&nbsp;${result_Vo.admin_manageinfo_class }</td>
						</tr>
						<tr>		
							<th class="bg-info-300  py-2 text-center">강의 일자</th>
							<td class="border bg-white  px-4 py-2 text-left">${result_Vo.admin_manageinfo_date }</td>
						</tr>
						<tr> 
							<th class="bg-info-300 py-2 text-center">결제 상태</th>
							<c:if test="${result_Vo.admin_manageinfo_ok == 0}">
								<td class="border bg-white px-4  py-2 text-left">미승인</td>		
							</c:if>
							<c:if test="${result_Vo.admin_manageinfo_ok == 1}"> 
								<td class="border bg-white px-4  py-2 text-left">승   인</td>		 
							</c:if>
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
						<td class="w-32 border bg-white  px-4 py-2 text-center">${result_Vo.admin_manageinfo_absent }</td>
						<th class="w-64 bg-info-300 py-2 text-center">결석생</th>
						<td class="border bg-white px-4 py-2 text-justify" style="width:800px">${result_Vo.absent_reason } </td> 
					</tr>
					<tr>
						<th class="bg-info-300 py-2 text-center">지각</th>
						<td class="border bg-white  px-4 py-2 text-center">${result_Vo.admin_manageinfo_tardy }</td>
						<th class="bg-info-300 py-2 text-center">지각생</th>
						<td class="border bg-white  px-4 py-2 text-justify"style="width:800px">${result_Vo.tardy_reason }</td>
					</tr>
					<tr>	
						<th class="bg-info-300 py-2 text-center">조퇴</th> 
						<td class="border bg-white  px-4 py-2 text-center">${result_Vo.admin_manageinfo_early }</td>
						<th class="bg-info-300 py-2 text-center">조퇴 인원</th>
						<td class="border bg-white  px-4 py-2 text-justify"style="width:800px">${result_Vo.early_reason }</td>
					</tr>
					<tr>	
						<th class="bg-info-300 py-2 text-center">휴강자</th>
						<td class="border bg-white  px-4 py-2 text-center">${result_Vo.admin_manageinfo_rest }</td>
						<th class="bg-info-300 py-2 text-center">휴강생</th>
						<td class="border bg-white  px-4 py-2 text-justify"style="width:800px">${result_Vo.rest_reason }</td>
					</tr>
					<tr>	
						<th class="bg-info-300 py-2 text-center">반 이동</th>
						<td class="border bg-white  px-4 py-2 text-center">${result_Vo.admin_manageinfo_move }</td>
						<th class="bg-info-300 py-2 text-center">이동 인원</th>
						<td class="border bg-white  px-4 py-2 text-justify"style="width:800px">${result_Vo.move_reason }</td>
					</tr>
					<tr>	
						<th class="bg-info-300 py-2 text-center">현재 인원/총인원</th>
						<td class="border bg-white  px-4 py-2 text-center">${result_Vo.admin_manageinfo_now }/40명</td>
						<th class="bg-info-300 py-2 text-center">학생 및 학부모 상담</th>
						<td class="border bg-white  px-4 py-2 text-justify"style="width:800px">${result_Vo.student_parent_counsel }</td>	
					</tr>
					</thead>
				</table>
		
				<div class="p-3"></div>
			
				<table class="border w-full"> 
					<thead>
						<tr>
							<th class="w-32 bg-info-300 py-2 text-center">금일 진행 업무</th>
							<td class="border bg-white px-4 py-2 text-left">${result_Vo.admin_manageinfo_work }</td>
						</tr>
						<tr>		
							<th class="bg-info-300 py-2 text-center">건의 사항</th>
							<td class="border bg-white px-4 py-2 text-left">${result_Vo.admin_manageinfo_opinion }</td> 
						</tr>
						<tr>  
							<th class="bg-info-300 py-2 text-center">첨부파일</th> 
							<td class="bg-white px-4 py-2 text-left"><a class="border-b-2 border-black" href="/lms/adminManagementUpload/${result_Vo.admin_manageinfo_file }" download>${result_Vo.admin_manageinfo_file }</a></td>		
						</tr>
					</thead>   
				</table>  
				
				<div class="p-3"></div>
				
			<form method="post" action="<%=projectPath %>/admin/adminManagementInfoOk">  
				승인 여부 &nbsp;: <input class="mx-2" type="radio" name="admin_manageinfo_ok" value="1" checked>승인 <input class="mx-2" type="radio" name="admin_manageinfo_ok" value="0">반송 <br/> 
				<br/>
				
				<div class="p-3"></div> 
			
				<div class="text-right">  
					<input type="hidden" name="admin_manageinfo_no" value="${result_Vo.admin_manageinfo_no}"/> 
					<c:if test="${employee_name == '관리자'}">	
						<input type="submit" value="결제" class="bg-info-700 text-white rounded py-2 px-4"/>
					</c:if>
					<!-- 목록으로 가는 버튼 -->		
				</div>
			</form>	
		
	</div>		
  
</div>
