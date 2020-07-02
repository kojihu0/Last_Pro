package kr.co.lms.admin.DAO;

import java.util.List;

import kr.co.lms.admin.VO.AdminStudentPagingVO;
import kr.co.lms.admin.VO.StudentByCourseVO;

public interface StudentByCourseDAOImp {
	//강좌별 수강생 리스트
	public List<StudentByCourseVO> selectStudentByCourse(AdminStudentPagingVO PageVO); 
	//강좌별 수강생 수
	public int getSelectStudentByCourse(AdminStudentPagingVO PageVO);
	//강좌 정보
	public StudentByCourseVO selectCourseInfo(int course_no);
	//강좌별 수강 학생
	public List<StudentByCourseVO> selectCourseByStudent(int course_no);
	//수강생 반 이동
	public int studentClassUpdate(StudentByCourseVO vo);
	//반이동 또는 휴퇴원 처리하는 학생의 이름구하기
	public StudentByCourseVO selectStudentName(int student_no);
	//휴퇴원 처리
	public int studentLeaveOutUpdate(StudentByCourseVO vo);
}
