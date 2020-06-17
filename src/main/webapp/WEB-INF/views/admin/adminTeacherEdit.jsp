<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TeacherInfo Edit</title>



	
</head>
<body>


<!--  -->
	<div class="w-full max-w-screen-xl my-0 mx-auto items-center justify-between flex-wrap px-8 xl:px-0">
			<div class="text-xl p-3 mx-16 ">  
				<i class="xi-school"></i>&nbsp;직원-정보수정
			</div>

		<form method="post" action="<%=projectPath %>/admin/adminTeacherEditOk" onsubmit="return teacherEditCheck()">
			<div class="p-3 my-0 mx-auto flex justify-center">  
			<table>
				<tbody>  
					<tr>  
						<th class="p-3 w-32 border border-black bg-info-300 text-center text-l">이  름</th>    
						<td class="p-3 border border-black" style="width:800px">김개똥</td>  
					</tr> 
					<tr>
						<th class="p-3 w-32 border border-black bg-info-300 text-center text-l">소  속</th>
						<td class="p-3 border border-black">
							<select id="belong" name="belong" class="border border-black h-8"> 
								<option  selected="selected">::담당::</option>
								<option value="A" >A</option> 
								<option value="B">B</option>
								<option value="C">C</option>
								<option value="D">D</option>
								<option value="E">E</option>
							</select>
						</td>
					</tr>
					<tr>
						<th class="p-3 w-32 border border-black bg-info-300 text-center text-l">직  급</th>
						<td class="p-3 border border-black">
							<select id="teacherRank"name="teacherRank" class="border border-black h-8"> 
								<option  selected="selected">::직급::</option>
								<option value="평강사">평강사</option>
								<option value="임시강사">임시강사</option>
								<option value="강사">강사</option>
							</select>
						</td>
					</tr>
					<tr> 
						<th class="p-3 w-32 border border-black bg-info-300 text-center text-l">I  D</th>
						<td class="p-3 border border-black">kim1234</td>  
					</tr>
					<tr>
						<th class="p-3 w-32 border border-black bg-info-300 text-center text-l">권  한</th>
						<td class="p-3 border border-black">
							<select  id="teacherAuthority" name="teacherAuthority" class="border border-black h-8"> 
								<option  selected="selected">::권한::</option>
						 		<option value="일반">일반</option>
								<option value="임시">임시</option>
								<option value="관리자">관리자</option>
							</select>
						</td>
					</tr>
					<tr>
						<th class="p-3 w-32 border border-black  bg-info-300 text-center text-l">휴대폰</th>
						<td class="p-3 border border-black">
						 	<span id="teacherTel_01">010</span>&nbsp;-&nbsp;<input type="tel" id="teacherTel_02" name="teacherTel_02" size="4" class="border border-black" maxlength="4"/>&nbsp;-&nbsp;<input type="tel" id="teacherTel_03" name="teacherTel_03"size="4" class="border border-black" maxlength="4"/>
						</td>
					</tr> 
					<tr>
						<th class="p-3 w-32 border border-black bg-info-300 text-center text-l">이메일</th>
						<td class="p-3 border border-black">
							<input type="text" id="emailId" name="emailId" class="border border-black" size="15"/>&nbsp;@&nbsp;<input type="text" name="domain" id="domain" class="border border-black" size="15" value=""/>

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
						<td class="p-3 border border-black">
							<input type="radio" name="teacherState" value="정상" checked/>&nbsp;정상&nbsp;
							<input type="radio" name="teacherState" value="계약만료"/>&nbsp;계약만료&nbsp;
							<input type="radio" name="teacherState" value="퇴사"/>&nbsp;퇴사&nbsp;
						</td> 
					</tr>
				</tbody>
			</table>
		</div>
					<div class="p-3 text-right">  
			<input type="submit" value="수정 " class="bg-info-200 border-black border font-bold py-2 px-4 rounded"/>
			<a class="bg-info-200 border-black border font-bold py-2 px-4 rounded" href="<%=projectPath %>/admin/adminTeacherList">수정취소</a>
			<a class="bg-info-200 border-black border font-bold py-2 px-4 rounded" href="<%=projectPath %>/admin/adminTeacherList">삭제</a>
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



<!--  -->
</body>
</html>