<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
	<div class="w-full max-w-screen-xl my-0 mx-auto items-center justify-between flex-wrap px-8 xl:px-0">
			<div class="text-xl p-6 ">  
				<i class="xi-school"></i>&nbsp;직원-정보수정
			</div>
  
		<form method="post" action="<%=projectPath %>/admin/adminTeacherEditOk?employee_no=${vo.employee_no}"  enctype="multipart/form-data"    onsubmit="return teacherEditCheck()">
			<div class="p-3 my-0 mx-auto flex justify-center">
			<table>
			<thead>
					<tr>
						<th class="p-3 w-32 border border-black bg-info-300 text-center text-l">사  진</th>
						<th class="p-3 w-32 border border-black text-l">    
							<div class="">
								<div class="p-3 img_wrap border-solid border border-gray-600" style="width:200px; height:250px; margin:0 auto"> 
									<img id="img" class="object-cover" src="<%=projectPath %>/img/${vo.employee_img }"/>

								</div>  
								<div class="p-3">  
									<input type="hidden" name="employee_img" value="${vo.employee_img}"/>  
									<input type="file" id="input_img" name="employee_img_m" class="hidden"/> 
									<button id="button_img" class=" border-solid border border-gray-600 rounded bg-info-200">사진등록</button>
								</div>
							</div> 
						</th>
						<th class="p-3 w-32 border border-black bg-info-300 text-center text-l">소개글</th>
						<th class="w-16 border border-black text-l">    
							<textarea class="border border-black" name="employee_overview" style="height: 290px; resize: none;" cols="30" rows="10">${vo.employee_overview }</textarea>				
						</th>    
					</tr>
				</thead>
				<tbody>  
					<tr>  
						<th class="p-3 w-32 border border-black bg-info-300 text-center text-l">이  름</th>    
						<td colspan="3" class="p-3 border border-black" style="width:800px">${vo.employee_name }</td>  
					</tr> 
					<tr>
						<th class="p-3 w-32 border border-black bg-info-300 text-center text-l">소  속</th>
						<td colspan="3" class="p-3 border border-black">
							<select id="belong" name="employee_class" class="border border-black h-8">
									<c:if test="${vo.employee_class == null }"><option  selected="selected">::담당::</option></c:if>
									<c:if test="${vo.employee_class != null }"><option>::담당::</option></c:if>
									
									<c:if test="${vo.employee_class != 'A' }"><option value="A">A</option></c:if>
									<c:if test="${vo.employee_class == 'A' }"><option value="A"  selected="selected">A</option></c:if>
									 
									<c:if test="${vo.employee_class != 'B' }"><option value="B">B</option></c:if>
									<c:if test="${vo.employee_class == 'B' }"><option value="B" selected="selected">B</option></c:if>
									
									<c:if test="${vo.employee_class != 'C'  }"><option value="C">C</option></c:if>
									<c:if test="${vo.employee_class == 'C' }"><option value="C" selected="selected">C</option></c:if> 
									
									<c:if test="${vo.employee_class != 'D' }"><option value="D">D</option></c:if>
									<c:if test="${vo.employee_class == 'D' }"><option value="D" selected="selected">D</option></c:if>
									
									<c:if test="${vo.employee_class != 'E' }"><option value="E">E</option></c:if>
									<c:if test="${vo.employee_class == 'E' }"><option value="E" selected="selected">E</option></c:if>
							</select>
						</td> 
					</tr>
					<tr> 
						<th class="p-3 w-32 border border-black bg-info-300 text-center text-l">전  공</th>
						<td colspan="3" class="p-3 border border-black">
							<select name="employee_subject" class="border border-black h-8">   
								<c:if test="${vo.employee_subject == null }"><option  selected="selected">::반::</option></c:if>
									<c:if test="${vo.employee_subject != null }"><option>::반::</option></c:if>
									
									<c:if test="${vo.employee_subject == 'JAVA' }"><option value="JAVA"  selected="selected">JAVA</option></c:if>
									<c:if test="${vo.employee_subject != 'JAVA' }"><option value="JAVA" >JAVA</option></c:if>
									
									<c:if test="${vo.employee_subject == 'javascript' }"><option value="javascript" selected="selected">javascript</option></c:if>
									<c:if test="${vo.employee_subject != 'javascript' }"><option value="javascript">javascript</option></c:if>
									
									<c:if test="${vo.employee_subject == 'Html/CSS'}"><option value="Html/CSS" selected="selected">Html/CSS</option></c:if>
									<c:if test="${vo.employee_subject != 'Html/CSS' }"><option value="Html/CSS">Html/CSS</option></c:if>
									 
									<c:if test="${vo.employee_subject == 'Spring' }"><option value="Spring" selected="selected">Spring</option></c:if>
									<c:if test="${vo.employee_subject != 'Spring' }"><option value="Spring">Spring</option></c:if>
							</select>
						</td>
					</tr>
					<tr>
						<th class="p-3 w-32 border border-black bg-info-300 text-center text-l">직  급</th>
						<td colspan="3" class="p-3 border border-black">  
							<select id="teacherRank" name="employee_rank" class="border border-black h-8"> 
								<c:if test="${vo.employee_rank == null  }"><option  selected="selected">::직급::</option></c:if>
								<c:if test="${vo.employee_rank != null  }"><option >::직급::</option></c:if>

								<c:if test="${vo.employee_rank != '평강사'  }"><option value="평강사">평강사</option></c:if>
								<c:if test="${vo.employee_rank == '평강사' }"><option value="평강사" selected="selected">평강사</option></c:if> 
									
								<c:if test="${vo.employee_rank != '임시강사' }"><option value="임시강사">임시강사</option></c:if>
								<c:if test="${vo.employee_rank == '임시강사' }"><option value="임시강사" selected="selected">임시강사</option></c:if>
									
								<c:if test="${vo.employee_rank != '강사' }"><option value="강사">강사</option></c:if> 
								<c:if test="${vo.employee_rank == '강사' }"><option value="강사" selected="selected">강사</option></c:if>
							</select>
						</td>
					</tr>
					<tr> 
						<th class="p-3 w-32 border border-black bg-info-300 text-center text-l">I  D</th>
						<td colspan="3" class="p-3 border border-black">${vo.admin_id }</td>  
					</tr>
					<tr>
						<th class="p-3 w-32 border border-black bg-info-300 text-center text-l">권  한</th>
						<td colspan="3" class="p-3 border border-black">
							<select  id="teacherAuthority" name="employee_authority" class="border border-black h-8"> 
								<c:if test="${vo.employee_authority == null  }"><option  selected="selected">::권한::</option></c:if>
								<c:if test="${vo.employee_authority != null  }"><option >::권한::</option></c:if>

								<c:if test="${vo.employee_authority != '일반'  }"><option value="일반">일반</option></c:if>
								<c:if test="${vo.employee_authority == '일반' }"><option value="일반" selected="selected">일반</option></c:if> 
									
								<c:if test="${vo.employee_authority != '임시' }"><option value="임시">임시</option></c:if>
								<c:if test="${vo.employee_authority == '임시' }"><option value="임시" selected="selected">임시</option></c:if>
									  
								<c:if test="${vo.employee_authority != '관리자' }"><option value="관리자">관리자</option></c:if> 
								<c:if test="${vo.employee_authority == '관리자' }"><option value="관리자" selected="selected">관리자</option></c:if>
							
							</select>
						</td> 
					</tr>
					<tr>
						<th class="p-3 w-32 border border-black  bg-info-300 text-center text-l">휴대폰</th> 
						<td colspan="3" class="p-3 border border-black"> 
						 	<span id="teacherTel_01">010</span>&nbsp;-&nbsp;<input type="tel" id="teacherTel_02" name="teacherTel_02" size="4" class="border border-black" maxlength="4" value="${data[2] }"/>&nbsp;-&nbsp;<input type="tel" id="teacherTel_03" name="teacherTel_03"size="4" class="border border-black" maxlength="4" value="${data[3] }"/>
						</td>
					</tr> 
					<tr>
						<th class="p-3 w-32 border border-black bg-info-300 text-center text-l">이메일</th>
						<td colspan="3" class="p-3 border border-black">
							<input type="text" id="emailId" name="emailId" class="border border-black" size="15" value="${data[0] }"/>&nbsp;@&nbsp;<input type="text" name="domain" id="domain" class="border border-black" size="15" value="${data[1] }"/> 

							<select title="이메일 도메인 선택" id="domainSelect" name="domainSelect" class="border border-black h-8">
                                <option value="" selected="selected">::선택::</option> 
                                <option value="paran.com">파란</option> 
                                <option value="hanmir.com">한미르</option>
                                <option value="naver.com">네이버</option>
                                <option value="nate.com">네이트</option> 
                                <option value="">직접입력</option>
                       		</select>
						</td>
					</tr> 
					<tr> 
						<th class="p-3 w-32 border border-black bg-info-300 text-center text-l">상  태</th> 
						<td colspan="3" class="p-3 border border-black">
							<input type="radio" name="employee_state" value="정상" checked/>&nbsp;정상&nbsp;
							<input type="radio" name="employee_state" value="계약만료"/>&nbsp;계약만료&nbsp;
							<input type="radio" name="employee_state" value="퇴사"/>&nbsp;퇴사&nbsp; 
						</td> 
					</tr>
				</tbody>
			</table>
		</div>
		<div class="p-3 text-right">  
			<input type="submit" value="수정 " class="bg-info-200 border-black border font-bold py-2 px-4 rounded"/>
			<a class="bg-info-200 border-black border font-bold py-2 px-4 rounded" href="<%=projectPath %>/admin/adminTeacherList">수정취소</a> 
			<a class="bg-info-200 border-black border font-bold py-2 px-4 rounded" href="<%=projectPath %>/admin/adminTeacherDel?employee_no=${vo.employee_no}">삭제</a> 
		</div>
	</form>
</div>

<script>
	$(function(){		
		//이메일 선택.
		$("#domainSelect").change(function(){  
	
			var selectDomain = document.getElementById("domainSelect").selectedIndex;
			var optionVal    = document.getElementById("domainSelect").options;
			
			var valueSelect  = optionVal[selectDomain].value; 
			
			document.getElementById("domain").value = valueSelect;
		});

	});	
</script>
