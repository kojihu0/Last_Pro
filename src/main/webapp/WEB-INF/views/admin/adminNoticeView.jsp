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
			<i class="xi-school"></i>&nbsp;사내공지
		</div>
	
		<div class="p-3">
			<table class="w-full">
				<thead>
				<tr>
					<th class="p-3 text-xl border-b-4 border-info-300">${list.admin_notice_title}</th>
				<tr>
				<tr>
					<td>
						<div class="flex justify-end border-b-4 border-info-300">
							<div class="p-3"><i class="xi-gratipay"></i>&nbsp;작성자 : ${list.employee_name }</div>
							<div class="p-3"><i class="xi-gratipay"></i>&nbsp;작성일자 : ${list.admin_notice_date }</div>
							<div class="p-3"><i class="xi-gratipay"></i>&nbsp;조회수 : ${list.admin_notice_hit}</div>  
						</div>
					</td>
				</tr>
				
				<tr>
					<td class="border border-b-4 border-info-300">
						<div  style="min-height:400px">
							${list.admin_notice_content } 
						</div>	
					<td>
				<tr>
				</thead>
			</table>
		</div>
	
		<div class="p-3 text-right">  
			<a href="<%=projectPath%>/admin/adminNotice"  class="bg-info-200 hover:bg-blue-700 border border-black font-bold py-2 px-4 rounded">목록으로</a>
			<a href="<%=projectPath%>/admin/adminNoticeEdit?admin_notice_no=${list.admin_notice_no }&employee_name=${list.employee_name}" class="bg-info-200 hover:bg-blue-700 border border-black font-bold py-2 px-4 rounded">수정</a>
			<a href="<%=projectPath%>/admin/adminNoticeDel?admin_notice_no=${list.admin_notice_no }" class="bg-info-200 hover:bg-blue-700 border border-black font-bold py-2 px-4 rounded">삭제</a>
		</div>	
	</div>
	<!-- 전체 틀 끝 -->
</body>
</html>