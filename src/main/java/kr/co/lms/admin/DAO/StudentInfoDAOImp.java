package kr.co.lms.admin.DAO;

import java.util.List;

import kr.co.lms.admin.VO.AdminStudentPagingVO;
import kr.co.lms.admin.VO.StudentAttendanceVO;
import kr.co.lms.admin.VO.StudentClassInfoVO;
import kr.co.lms.admin.VO.StudentCounselingVO;
import kr.co.lms.admin.VO.StudentInfoVO;
import kr.co.lms.admin.VO.StudentPaymentInfoVO;

public interface StudentInfoDAOImp {

	public List<StudentInfoVO> studentSelectAll(AdminStudentPagingVO PageVO);
	
	public int getStudentSelectAll(AdminStudentPagingVO PageVO);
	
	public int memberInsert(StudentInfoVO vo);
	
	public StudentInfoVO studentSelectDetail(int student_no);
	
	public int studentInfoUpdate(StudentInfoVO vo);
	
	public List<StudentPaymentInfoVO> studentPaymentInfo(int student_no);
	
	public List<StudentCounselingVO> studentCounselingList(int student_no);
	
	public int studentCounselingInsert(StudentCounselingVO vo);
	
	public int studentCounselingDelete(int student_no, int counseling_no);
	
	public int studentCounselingUpdate(StudentCounselingVO vo);
	
	public int memberDel(int student_no);
	
	public List<StudentClassInfoVO> studentClassInfoSelect(int student_no);
	
	public int studentClassMove(StudentClassInfoVO vo);
	
	public int studentClosedOutEditOk(StudentClassInfoVO vo);
	
	public int closedOutOk(StudentClassInfoVO vo);
	
	public List<StudentAttendanceVO> studentAttendace(int student_no);
	
	public List<StudentAttendanceVO> studentAttendaceList(int payment_no);
	
	public int classRecordDel(int payment_no, int student_no);
}
