package kr.co.lms.main.DAO;

import kr.co.lms.main.VO.MemberVO;

public interface MemberDAOImp {
	//회원가입
	public int memberRegister(MemberVO vo);
	//회원가입 아이디 체크
	public String idCheck(String userid);
	//유저 로그인
	public MemberVO memberLogin(MemberVO vo);
	//아이디 찾기  
	public String memberIdFind(MemberVO vo);
	//비밀번호 찾기  
	public String memberPwFind(MemberVO vo);
	
	
}
