package kr.co.lms.main.DAO;

import java.util.List;

import kr.co.lms.main.VO.HomeVO;

public interface HomeDAOImp {
	public List<HomeVO> homeCourseList();
	public List<HomeVO> homeEventList();
	public List<HomeVO> homeNewsList();
}
