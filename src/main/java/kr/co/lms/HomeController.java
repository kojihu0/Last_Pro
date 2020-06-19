package kr.co.lms;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.lms.main.DAO.HomeDAOImp;
import kr.co.lms.main.VO.HomeVO;

@Controller
public class HomeController {
	SqlSession sqlSession;
	
	public SqlSession getSqlSession() {
		return sqlSession;
	}
	
	@Autowired
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView home() {
		HomeDAOImp dao = sqlSession.getMapper(HomeDAOImp.class);
		List<HomeVO> homeCourseList = dao.homeCourseList();
		List<HomeVO> homeEventList = dao.homeEventList();
		List<HomeVO> homeNewsList = dao.homeNewsList();
		ModelAndView mav = new ModelAndView();
		mav.addObject("courseList", homeCourseList);
		mav.addObject("eventList", homeEventList);
		mav.addObject("newsList", homeNewsList);
		mav.setViewName("home");
		return mav;
	}
	
	@RequestMapping("/aboutUs")
	public String aboutUs() {
		return "main/aboutUs";
	}
}
