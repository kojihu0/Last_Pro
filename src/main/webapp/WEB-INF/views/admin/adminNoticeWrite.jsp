<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<script src="<%=projectPath %>/ckeditor/ckeditor.js"></script>
	

</head>
<body>


	<div class="w-full max-w-screen-xl my-0 mx-auto items-center justify-between flex-wrap px-8 xl:px-0">
		<div class="text-xl p-3 mx-16 ">  
			<i class="xi-school"></i>&nbsp;사내 공지사항 작성
		</div>
	
		<div class="p-3 text-right"> 
			<a class="bg-info-200 border border-black font-bold rounded py-2 px-4" href="<%=projectPath%>/admin/adminNotice">목록으로</a>
		</div>
		
		
		
		<div class="p-3 bg-gray-100 tableDiv border border-cta-900">
		<form method="post" action="<%=projectPath%>/admin/adminNoticeWriteOk" enctype="multipart/form-data" onsubmit="return noticeRegiCheck()">
			<table class=" my-0 mx-auto"> 
				<thead>
					<tr>
						<th class="bg-info-300 w-32 border border-black">작성자</th>
						<th class="p-2 text-left border border-black">${admin_id }</th>
					</tr>
					<tr>
						<th class="bg-info-300 w-32 border border-black">제목</th>
						<th class="p-2 text-left border border-black"><input  style="width:400px" class="border border-black" type="text" id="noticeWriteSubject" name="admin_notice_title"/></th>
					</tr>
					<tr>
						<th class="bg-info-300 w-32 border border-black">분류</th>
						<th class="p-2 text-left border border-black">	
							<div class="inline-block relative w-40">
								<select name="admin_category" id="selectNoticeCategory" class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline">
									<option selected="selected">::선택::</option>
									<option value="1">공지사항</option>
								    <option value="2">이벤트</option> 
							  	 </select>
							  	 <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
					    			<svg class="fill-current h-4 w-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"><path d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z"/></svg>
					  			</div>
				 			</div>
			 			</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th class="bg-info-300 w-32 border border-black">내용</th>  
						<td class="border border-black"><textarea id="noticeWriteContent" name="admin_notice_content" class="appearance-none border border-gray rounded w-full py-2 px-3 leading-tight focus:outline-none focus:shadow-outline"></textarea></td>
					</tr>
					<tr>
						<th class="bg-info-300 border border-black p-3 w-32">강의 이미지</th>
						<td class="p-3 border border-black">  
							<input class="border border-black" type="file" name="admin_notice_img_m"/> 
						</td>
					</tr>
				</tbody>
			</table>
		
				<div class="text-right">  
					<input type="submit" value="등록" class="bg-info-200 border-black border  font-bold py-2 px-4 rounded"/>
					<a href="<%=projectPath %>/admin/adminNotice" class="bg-info-200 border-black border font-bold py-2 px-4 rounded">등록취소</a> 
				</div> 
		
		</form>
		
		</div>
		
		
		
		
		
	</div>


<script type="text/javascript">
$(function(){
	CKEDITOR.replace('noticeWriteContent',
					 {height: 350 })
	
});

</script>

</body>
</html>