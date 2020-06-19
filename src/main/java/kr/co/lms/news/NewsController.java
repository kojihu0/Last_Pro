package kr.co.lms.news;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.lms.main.DAO.NewsDAOImp;
import kr.co.lms.main.VO.NewsVO;

@Controller
public class NewsController {
	SqlSession sqlSession;
	
	
	public SqlSession getSqlSession() {
		return sqlSession;
	}
	@Autowired
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	@RequestMapping(value="/event", method=RequestMethod.GET)
	public ModelAndView event(NewsVO vo ,HttpServletRequest req) {//ÀÌº¥Æ® Æû
		ModelAndView mav = new ModelAndView();
		NewsDAOImp dao = sqlSession.getMapper(NewsDAOImp.class);
		mav.addObject("event_list",dao.eventsAllSelectRecord(vo));
		mav.setViewName("main/news/event");
		return mav;
	}
	@RequestMapping(value="/news", method=RequestMethod.GET)
	public ModelAndView news(NewsVO vo ,HttpServletRequest req ) {//°øÁö»çÇ× Æû
		ModelAndView mav = new ModelAndView();
		NewsDAOImp dao = sqlSession.getMapper(NewsDAOImp.class);
		mav.addObject("notice_list",dao.newsAllSelectRecord(vo));
		mav.setViewName("main/news/news");
		return mav;
	}
	@RequestMapping(value="/noticeForm", method=RequestMethod.GET)
	public ModelAndView noticeForm(int no ,HttpServletRequest req){
		ModelAndView mav = new ModelAndView();
		NewsDAOImp dao = sqlSession.getMapper(NewsDAOImp.class);
		mav.addObject("vo",dao.newsSelectRecord(no));
		mav.setViewName("main/news/noticeForm");
		return mav;
	}
	@RequestMapping(value="/eventForm", method=RequestMethod.GET)
	public ModelAndView eventForm(int no ,HttpServletRequest req){
		ModelAndView mav = new ModelAndView();
		NewsDAOImp dao = sqlSession.getMapper(NewsDAOImp.class);
		mav.addObject("vo",dao.eventsSelectRecord(no));
		mav.setViewName("main/news/eventForm");
		return mav;
	}
}