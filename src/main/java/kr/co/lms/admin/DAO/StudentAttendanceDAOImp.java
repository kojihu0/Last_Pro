package kr.co.lms.admin.DAO;

import java.util.List;

import kr.co.lms.admin.VO.AdminStudentPagingVO;
import kr.co.lms.admin.VO.StudentByCourseVO;

public interface StudentAttendanceDAOImp {
	
	public List<StudentByCourseVO> selectCorseByAttendance(AdminStudentPagingVO PageVO); 
	
	public int getSelectCorseByAttendance(AdminStudentPagingVO PageVO);
	
	public List<StudentByCourseVO> selectStudentAttendance(int course_no);
	public List<StudentByCourseVO> selectStudentAttendance2(AdminStudentPagingVO PageVO);
	
	public List<StudentByCourseVO> selectSettingStudentAttendance(int course_no);
	
	public int studentAttendanceOk(int student_no, int attendance_state, String attendance_reason, int course_no);
	public int studentAttendanceOk2(int student_no, int attendance_state, String attendance_reason, int course_no);
	
	public StudentByCourseVO selectAttendanceIndividual(int student_no, int course_no);
	
	public int studentAttedanceUpdate(StudentByCourseVO vo);
	
	public int studentAttendanceDelete(StudentByCourseVO vo);
	
	public StudentByCourseVO studentCountByAttendance(int course_no);
	public StudentByCourseVO studentCountByAttendance2(int course_no);
	
	public StudentByCourseVO studentCountByAttendance3(int course_no);
}
