package kr.co.lms.admin.DAO;

import java.util.List;

import kr.co.lms.admin.VO.AdminStudentPagingVO;
import kr.co.lms.admin.VO.StudentByCourseVO;

public interface StudentByCourseDAOImp {
	
	public List<StudentByCourseVO> selectStudentByCourse(AdminStudentPagingVO PageVO); 
	
	public int getSelectStudentByCourse(AdminStudentPagingVO PageVO);
	
	public StudentByCourseVO selectCourseInfo(int course_no);
	
	public List<StudentByCourseVO> selectCourseByStudent(int course_no);
	
	public int studentClassUpdate(StudentByCourseVO vo);
	
	public StudentByCourseVO selectStudentName(int student_no);
	
	public int studentLeaveOutUpdate(StudentByCourseVO vo);
}
