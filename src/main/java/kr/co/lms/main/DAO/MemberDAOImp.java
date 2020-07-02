package kr.co.lms.main.DAO;

import kr.co.lms.main.VO.MemberVO;

public interface MemberDAOImp {
	//회원가입
	public int memberRegister(MemberVO vo);
	//아이디 중복체크
	public int idCheck(String userid);
	//로그인
	public MemberVO memberLogin(MemberVO vo);
	//유저 아이디 찾기
	public String memberIdFind(MemberVO vo);
	//유저 비밀번호 찾기
	public String memberPwFind(MemberVO vo);
	//유저 정보 수정
	public int memberDataUpdate(MemberVO vo);
	//결제예정자 정보 가져오기 
	public MemberVO memberPaymentRecord(MemberVO vo2);
	//내정보에 들어갈 이름과 자기소개
	public MemberVO  memberDataSelect(MemberVO vo);
	//내정보 이미지 업데이트
	public int memberImgDataSelect(MemberVO vo); 
	//내정보 비밀번호 변경
	public int memberPasswordDataSelect(MemberVO vo);
	//이메일 중복체크
	public int emailCheck(String student_email);
}
