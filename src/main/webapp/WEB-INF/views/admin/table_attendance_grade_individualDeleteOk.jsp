<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
	var course_no = '${course_no}';
	alert("출결 삭제가 완료 되었습니다.");
	location.href="/lms/admin/table_attendance_grade?course_no="+course_no;
</script>