package kr.co.lms.admin.DAO;

import java.util.List;

import kr.co.lms.admin.VO.AdminStudentPagingVO;
import kr.co.lms.admin.VO.StudentByCourseVO;

public interface StudentAttendanceDAOImp {
	//강좌 리스트
	public List<StudentByCourseVO> selectCorseByAttendance(AdminStudentPagingVO PageVO); 
	//강좌 수
	public int getSelectCorseByAttendance(AdminStudentPagingVO PageVO);
	//강좌별 학생 출결리스트
	public List<StudentByCourseVO> selectStudentAttendance(int course_no);
	public List<StudentByCourseVO> selectStudentAttendance2(AdminStudentPagingVO PageVO);
	//강좌별 학생 출결 리스트 설정 화면
	public List<StudentByCourseVO> selectSettingStudentAttendance(int course_no);
	//강좌별 학생 출결 설정
	public int studentAttendanceOk(int student_no, int attendance_state, String attendance_reason, int course_no);
	public int studentAttendanceOk2(int student_no, int attendance_state, String attendance_reason, int course_no);
	//각자의 출결 정보 
	public StudentByCourseVO selectAttendanceIndividual(int student_no, int course_no);
	//각자 출결 정보 수정
	public int studentAttedanceUpdate(StudentByCourseVO vo);
	//각자 출결 정보 삭제
	public int studentAttendanceDelete(StudentByCourseVO vo);
	//출결 테이블에 코스별 학생 수 구하기
	public StudentByCourseVO studentCountByAttendance(int course_no);
	public StudentByCourseVO studentCountByAttendance2(int course_no);
	//출결 테이블에 attendance_no 수 구하기
	public StudentByCourseVO studentCountByAttendance3(int course_no);
}
