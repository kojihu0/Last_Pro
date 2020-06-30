package kr.co.lms.main.DAO;

import kr.co.lms.main.VO.paymentVO;

public interface paymentDAOImp {
	//결제내역 등록 
	public void paymentInfoInsert(paymentVO vo);
	//결제번호 가져오기 
	public int paymentNumberRecord(paymentVO vo);
	//결제내역 정보 가져오기 
	public paymentVO paymentInfoRecord(paymentVO vo);
}
