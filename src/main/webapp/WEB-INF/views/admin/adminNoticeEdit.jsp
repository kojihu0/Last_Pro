<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>

	<div class="w-full max-w-screen-xl my-0 mx-auto items-center justify-between flex-wrap px-8 xl:px-0">
		<div class="text-xl p-6 ">  
			<i class="xi-school"></i>&nbsp;사내 공지사항 작성
		</div>
		<div class="p-3 bg-white tableDiv">
		<div class="p-3 text-right"> 
			<a class="bg-info-700 text-white rounded py-2 px-4" href="<%=projectPath%>/admin/adminNotice">목록으로</a>
		</div>
		<form method="post" action="<%=projectPath%>/admin/adminNoticeEditOk" onsubmit="return noticeEditCheck()">
			<table class=" my-0 mx-auto"> 
				<thead>
					<tr>
						<th class="bg-info-300 w-32 border border-gray-500">작성자</th>
						<th class="p-2 text-left border border-gray-500">관리자
							<input type="hidden" name="admin_notice_no" value="${list.admin_notice_no }"/>
						</th>
					</tr>
					<tr>
						<th class="bg-info-300 w-32 border border-gray-500">제목</th>
						<th class="p-2 text-left border border-gray-500"><input  style="width:400px" class="border border-gray-500" type="text" id="noticeWriteSubject" name="admin_notice_title" value="${list.admin_notice_title }"/></th>
					</tr>
					<tr>
						<th class="bg-info-300 w-32 border border-gray-500">분류</th>
						<th class="p-2 text-left border border-gray-500">	
							<div class="inline-block relative w-40">
								<select name="admin_category" id="selectNoticeCategory" class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline">
									<c:if test="${list.admin_category != null }">
										<option>::선택::</option>
									</c:if>
										<c:if test="${list.admin_category == null }">
									<option selected="selected">::선택::</option>
									</c:if>
									
									<c:if test="${list.admin_category == '1' }">
										<option value="1" selected="selected">공지사항</option>
									</c:if>
									<c:if test="${list.admin_category != '1' }">
										<option value="1">공지사항</option>
									</c:if>
									
									<c:if test="${list.admin_category == '2' }">
										<option value="2" selected="selected">이벤트</option> 
									</c:if>
									<c:if test="${list.admin_category != '2' }"> 
										<option value="2">이벤트</option> 
									</c:if>
							  	 </select>
							  	 <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
					    			<i class="xi-angle-down"></i>
					  			</div>
				 			</div>
			 			</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th class="bg-info-300 w-32 border border-gray-500">내용</th>  
						<td class="border border-gray-500"><textarea id="noticeWriteContent" name="admin_notice_content" class="appearance-none border border-gray rounded w-full py-2 px-3 leading-tight focus:outline-none focus:shadow-outline">${list.admin_notice_content }</textarea></td>
					</tr>
					<tr>
						<th class="bg-info-300 border border-gray-500 p-3 w-32">강의 이미지</th>
						<td class="p-3 border border-gray-500">  
							<input class="border border-gray-500" type="file" name="admin_notice_img_m" value="${list.admin_notice_img }"/> 
						</td>
					</tr>
				</tbody>
			</table>
		
				<div class="p-3 text-right">  
					<input type="submit" value="수정" class="bg-info-700 text-white rounded py-2 px-4"/>
					<a href="<%=projectPath %>/admin/adminNotice" class="bg-info-700 text-white rounded py-2 px-4">등록취소</a> 
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