package kr.co.lms.main.DAO;

import java.util.List;
import kr.co.lms.main.VO.MypageVO;

public interface MypageDAOImp {
	//수강중인 강좌 목록 가져오기
	public List<MypageVO> courseRecord();
	//수료한 강좌 목록 가져오기
	public List<MypageVO> completionCourseRecord();
	//미수료한 강좌 목록 가져오기 
	public List<MypageVO> inCompleteCourseRecord();
	
}
