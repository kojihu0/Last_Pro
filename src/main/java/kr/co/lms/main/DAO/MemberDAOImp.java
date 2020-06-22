package kr.co.lms.main.DAO;

import kr.co.lms.main.VO.MemberVO;

public interface MemberDAOImp {
	public int memberRegister(MemberVO vo);
	public String idCheck(String userid);
	public MemberVO memberLogin(MemberVO vo);
	public String memberIdFind(MemberVO vo);
	public String memberPwFind(MemberVO vo);
	
	
}
