package kr.co.lms.main.DAO;

import java.util.List;

import kr.co.lms.main.VO.paymentVO;

public interface paymentDAOImp {
	//결제내역 등록 
	public void paymentInfoInsert(paymentVO vo);
	//현금결제 예약
	public void paymentCashInsert(paymentVO vo);
	//결제번호 가져오기 
	public Integer paymentNumberRecord(paymentVO vo);
	//결제내역 정보 가져오기 
	public paymentVO paymentInfoRecord(paymentVO vo);
	//결제정보 가져오기 
	public List<paymentVO> paymentHistoryRecord(paymentVO vo);
	//결제내역 상세페이지 가져오기 
	public paymentVO paymentDetailRecord(paymentVO vo);
	//결제취소 요청 
	public int paymentCancel(paymentVO vo);
	//결제 취소 상태 번호 가져오기 
	public int paymentCancelNum(paymentVO vo);
	//결제번호 가져오기 
	public paymentVO paymentNumRecord(paymentVO vo);
}
