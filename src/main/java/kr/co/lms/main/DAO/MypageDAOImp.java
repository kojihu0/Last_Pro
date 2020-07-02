package kr.co.lms.main.DAO;

import java.util.List;

import kr.co.lms.main.VO.CourseVO;
import kr.co.lms.main.VO.MypageVO;

public interface MypageDAOImp {
	//수강중인 강좌 목록 가져오기
	public List<MypageVO> courseRecord(int no);
	//수료한 강좌 목록 가져오기
	public List<MypageVO> completionCourseRecord(int no);
	//미수료한 강좌 목록 가져오기 
	public List<MypageVO> inCompleteCourseRecord(int no);
	//시간표
	public List<CourseVO> selectTimeTable(int student_no);
}
