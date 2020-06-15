<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>adminTeacherRegi</title>
 
</head>
<body>
	<div class="w-full max-w-screen-xl my-0 mx-auto items-center justify-between flex-wrap px-8 xl:px-0">
			<div class="text-xl p-3 mx-16 ">  
				<i class="xi-school"></i>&nbsp;직원등록
			</div>

		<form method="post" action="">
			<div class="p-3 my-0 mx-auto flex justify-center">  
			<table>
				<tbody>  
					<tr>  
						<th class="p-3 w-32 border border-black bg-info-300 text-center text-l">이  름</th>    
						<td class="p-3 border border-black" style="width:800px"><input class="border border-black" type="text" name="teacherName"/></td>  
					</tr> 
					<tr>
						<th class="p-3 w-32 border border-black bg-info-300 text-center text-l">소  속</th>
						<td class="p-3 border border-black">
							<select name="belong" class="border border-black h-8"> 
								<option value="" selected="selected">::담당::</option>
								<option value="java">A</option> 
								<option value="java">B</option>
								<option value="java">C</option>
								<option value="java">D</option>
								<option value="java">E</option>
							</select>
						</td>
					</tr>
					<tr>
						<th class="p-3 w-32 border border-black bg-info-300 text-center text-l">직  급</th>
						<td class="p-3 border border-black">
							<select name="teacherRank" class="border border-black h-8"> 
								<option value="" selected="selected">::직급::</option>
								<option value="평강사">평강사</option>
								<option value="임시강사">임시강사</option>
								<option value="강사">강사</option>
							</select>
						</td>
					</tr>
					<tr> 
						<th class="p-3 w-32 border border-black bg-info-300 text-center text-l">I  D</th>
						<td class="p-3 border border-black"><input class="border border-black" type="text" name="teacherId" placeholder="your@email.com == id"/></td>  
					</tr>
					<tr>
						<th class="p-3 w-32 border border-black bg-info-300 text-center text-l">권  한</th>
						<td class="p-3 border border-black">
							<select name="teacherRank" class="border border-black h-8"> 
								<option value="" selected="selected">::권한::</option>
								<option value="일반">일반</option>
								<option value="임시">임시</option>
								<option value="관리자">관리자</option>
							</select>
						</td>
					</tr>
					<tr>
						<th class="p-3 w-32 border border-black  bg-info-300 text-center text-l">휴대폰</th>
						<td class="p-3 border border-black">
							<input class="border border-black" type="tel" name="teacherTel_01" size="3"/>&nbsp;-&nbsp;<input type="tel" name="teacherTel_02" size="4" class="border border-black"/>&nbsp;-&nbsp;<input type="tel" name="teacherTel_03"size="4" class="border border-black"/>
						</td>
					</tr> 
					<tr>
						<th class="p-3 w-32 border border-black bg-info-300 text-center text-l">이메일</th>
						<td class="p-3 border border-black">
							<input type="text" name="emailId" class="border border-black" size="15"/>&nbsp;@&nbsp;<input type="text" name="domain" id="domain" class="border border-black" size="15" value=""/>

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
							<input type="radio" name="teacherState" value="정상"/>&nbsp;정상&nbsp;
							<input type="radio" name="teacherState" value="계약만료"/>&nbsp;계약만료&nbsp;
							<input type="radio" name="teacherState" value="퇴사"/>&nbsp;퇴사&nbsp;
						</td> 
					</tr>
				</tbody> 
			</table>
		</div>
		<div class="p-3 text-center"> 
			<input type="submit" value="등록 " class="bg-info-200 border-black border font-bold py-2 px-4 rounded"/>
			<a class="bg-info-200 border-black border font-bold py-2 px-4 rounded" href="<%=projectPath %>/admin/adminTeacherList">등록취소</a>
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

	  	console.log(selectDomain.value);
		console.log(selectDomain);
		console.log(optionVal);
		console.log(valueSelect);
		
		document.getElementById("domain").value = valueSelect;
	});
	
});	
	</script>
</body>
</html>