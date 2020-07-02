package kr.co.lms.admin.DAO;

import java.util.List;

import kr.co.lms.admin.VO.AdminStudentPagingVO;
import kr.co.lms.admin.VO.CancelRegisterVO;

public interface CancelRegisterDAOImp {
	
	public List<CancelRegisterVO> cancelSelectAll(AdminStudentPagingVO PageVO);
	
	public int getCancelSelectAll(AdminStudentPagingVO PageVO);
	
	public CancelRegisterVO selectCancelRecord(int student_no, int payment_no);
	
	public CancelRegisterVO selectRefundRecord(int student_no, int payment_no);
	
	public int CancelRecordInsert(CancelRegisterVO vo);
	
	public CancelRegisterVO selectPaymentRecord(int student_no, int payment_no);
	
	public int updatePaymentRecord(CancelRegisterVO vo);
	
	public CancelRegisterVO selectReturnRecord(int student_no);
	
	public int updateReturnRecord(int student_no);
	
	public int deleteReceiveRecord(int student_no, int payment_no);
	
	public int deleteReturnRecord(int student_no, int payment_no);
}
