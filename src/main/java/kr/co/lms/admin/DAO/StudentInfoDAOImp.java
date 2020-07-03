package kr.co.lms.admin.DAO;

import java.util.List;

import kr.co.lms.admin.VO.AdminStudentPagingVO;
import kr.co.lms.admin.VO.StudentAttendanceVO;
import kr.co.lms.admin.VO.StudentClassInfoVO;
import kr.co.lms.admin.VO.StudentCounselingVO;
import kr.co.lms.admin.VO.StudentInfoVO;
import kr.co.lms.admin.VO.StudentPaymentInfoVO;

public interface StudentInfoDAOImp {
	//학생 전체 리스트
	public List<StudentInfoVO> studentSelectAll(AdminStudentPagingVO PageVO);
	//학생 전체 수
	public int getStudentSelectAll(AdminStudentPagingVO PageVO);
	//학생 등록
	public int memberInsert(StudentInfoVO vo);
	//학생 상세정보
	public StudentInfoVO studentSelectDetail(int student_no);
	//학생 상세정보 수정
	public int studentInfoUpdate(StudentInfoVO vo);
	//학생 납부현황
	public List<StudentPaymentInfoVO> studentPaymentInfo(int student_no);
	//학생 상담 리스트
	public List<StudentCounselingVO> studentCounselingList(int student_no);
	//학생 상담 내용 추가
	public int studentCounselingInsert(StudentCounselingVO vo);
	//학생 상담 내용 삭제
	public int studentCounselingDelete(int student_no, int counseling_no);
	//학생 상담 내용 수정
	public int studentCounselingUpdate(StudentCounselingVO vo);
	//학생 삭제
	public int memberDel(int student_no);
	//반배정 형황 리스트
	public List<StudentClassInfoVO> studentClassInfoSelect(int student_no);
	//반배정 변경
	public int studentClassMove(StudentClassInfoVO vo);
	//휴원 퇴원 수정
	public int studentClosedOutEditOk(StudentClassInfoVO vo);
	//휴원 퇴원 설정
	public int closedOutOk(StudentClassInfoVO vo);
	//학생 출결 목록
	public List<StudentAttendanceVO> studentAttendace(int student_no);
	//학생 출결 리스트
	public List<StudentAttendanceVO> studentAttendaceList(int payment_no);
	//학생 클래스 삭제
	public int classRecordDel(int payment_no, int student_no);
}
