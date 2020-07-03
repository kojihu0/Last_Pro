package kr.co.lms.admin.DAO;

import java.util.List;

import kr.co.lms.admin.VO.AdminStudentPagingVO;
import kr.co.lms.admin.VO.CancelRegisterVO;

public interface CancelRegisterDAOImp {
	//취소요청 리스트
	public List<CancelRegisterVO> cancelSelectAll(AdminStudentPagingVO PageVO);
	//취소요청 리스트 갯수
	public int getCancelSelectAll(AdminStudentPagingVO PageVO);
	//취소 요청 한개 선택
	public CancelRegisterVO selectCancelRecord(int student_no, int payment_no);
	//반화내역 선택
	public CancelRegisterVO selectRefundRecord(int student_no, int payment_no);
	//반환내역추가
	public int CancelRecordInsert(CancelRegisterVO vo);
	//수납내역 수정
	public CancelRegisterVO selectPaymentRecord(int student_no, int payment_no);
	//수납내역 업데이트
	public int updatePaymentRecord(CancelRegisterVO vo);
	//반환내역 수정
	public CancelRegisterVO selectReturnRecord(int student_no);
	//반환내역 업데이트
	public int updateReturnRecord(int student_no);
	//수납내역 삭제
	public int deleteReceiveRecord(int student_no, int payment_no);
	//반환내역 삭제
	public int deleteReturnRecord(int student_no, int payment_no);
}
