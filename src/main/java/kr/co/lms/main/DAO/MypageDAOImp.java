package kr.co.lms.main.DAO;

import java.util.List;
import kr.co.lms.main.VO.MypageVO;
import kr.co.lms.main.VO.WishListVO;

public interface MypageDAOImp {
	//수강중인 강좌 목록 가져오기
	public List<MypageVO> courseRecord(int no);
	//수료한 강좌 목록 가져오기
	public List<MypageVO> completionCourseRecord(int no);
	//미수료한 강좌 목록 가져오기 
	public List<MypageVO> inCompleteCourseRecord(int no);
	//수강상세페이지에서 학생정보와 강사 정보 가져오기
	public MypageVO memberMypageDetailInfo(int no);
	//위시리스트 정보 가져오기
	public List<WishListVO> wishListRecord(WishListVO wVO);
	//등록날짜 증감
	public void updateSysdate();
	//날짜차이 
	public MypageVO courseProgess(int no);
}
