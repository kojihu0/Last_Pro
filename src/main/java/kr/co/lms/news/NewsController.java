package kr.co.lms.news;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.lms.main.DAO.NewsDAOImp;
import kr.co.lms.main.VO.CourseVO;
import kr.co.lms.main.VO.LeadLagVO;
import kr.co.lms.main.VO.NewsVO;
import kr.co.lms.main.VO.PagingVO;

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
	public ModelAndView event(NewsVO vo ,HttpServletRequest req){//이벤트 게시물
		PagingVO pvo = new PagingVO();
		pvo.setCategory_no(2);
		//한페이지에 보여줄 게시물 갯수 설정
		pvo.setOnePageRecord(5);
		System.out.println("1111111111111111"+pvo.getCategory_no());
		//전체페이지 수 구하기 
		
		ModelAndView mav = new ModelAndView();
		NewsDAOImp dao = sqlSession.getMapper(NewsDAOImp.class);
		pvo.setTotalRecord(dao.eventGetTotalRecord());
		String str = req.getParameter("pageNum");
		if(str != null) {
			pvo.setPageNum(Integer.parseInt(str));
		}else {
			pvo.setPageNum(1);
		}
		System.out.println("=============================");
		System.out.println("이벤트 페이지 작업");
		System.out.println("한페이지 보여주기"+pvo.getOnePageRecord());
		System.out.println("현재 페이지"+pvo.getPageNum());
		System.out.println("총 페이지"+pvo.getTotalPage());
		System.out.println("총 레코드"+pvo.getTotalRecord());
		System.out.println("마지막 페이지 번호"+pvo.getLastPageRecord());
		System.out.println("=============================");
		
		//라스트 페이지 작업.
		pvo.setTotalRecord(dao.eventGetTotalRecord());
		System.out.println(pvo.getCategory_no());
		if((pvo.getPageNum() < pvo.getTotalPage())) { //현재 페이지번호가 마지막페이지 번호보다 작을 때
			pvo.setLastPageRecord(pvo.getOnePageRecord());
		} 
		System.out.println(pvo.getCategory_no());
		List<NewsVO> eventsList = dao.eventsAllSelectRecord(pvo);
		mav.addObject("pvo",pvo);
		mav.addObject("crrPageNum", pvo.getPageNum());
		mav.addObject("event_list",eventsList);
		mav.setViewName("main/news/event");
		return mav;
	}
	
	@RequestMapping(value="/news", method=RequestMethod.GET)
	public ModelAndView news(NewsVO vo ,HttpServletRequest req){//공지사항 게시물
		ModelAndView mav = new ModelAndView();
		PagingVO pvo = new PagingVO();
		//한페이지에 보여줄 게시물의 수를 설정
		pvo.setOnePageRecord(5);
		//전체 페이지의 수를 구하고
		NewsDAOImp dao = sqlSession.getMapper(NewsDAOImp.class);
		pvo.setTotalRecord(dao.newsGetTotalRecord());
		String str = req.getParameter("pageNum");
		 
		if(str != null) {
			pvo.setPageNum(Integer.parseInt(str));
		}else {
			pvo.setPageNum(1);
		}
 
		System.out.println("=============================");
		System.out.println("뉴스 페이지 작업");
		System.out.println("한페이지 보여주기"+pvo.getOnePageRecord());
		System.out.println("현재 페이지"+pvo.getPageNum());
		System.out.println("총 페이지"+pvo.getTotalPage());
		System.out.println("총 레코드"+pvo.getTotalRecord());
		System.out.println("마지막 페이지 번호"+pvo.getLastPageRecord());
		System.out.println("=============================");
		
		//라스트 페이지 작업.
		pvo.setTotalRecord(dao.newsGetTotalRecord());
		
		if((pvo.getPageNum() < pvo.getTotalPage())) { //현재 페이지번호가 마지막페이지 번호보다 작을 때
			pvo.setLastPageRecord(pvo.getOnePageRecord());
		} 
	
		List<NewsVO> newsList = dao.newsAllSelectRecord(pvo);
		mav.addObject("pvo",pvo);
		mav.addObject("crrPageNum", pvo.getPageNum());
		mav.addObject("notice_list", newsList); 
		mav.setViewName("main/news/news");
		return mav;
	}
	
	@RequestMapping(value="/newsDetail", method=RequestMethod.GET)
	public ModelAndView noticeForm(int no ,HttpServletRequest req){//공지사항 게시물 선택
		NewsVO vo = new	NewsVO();
		PagingVO pVo = new PagingVO();
		
		ModelAndView mav = new ModelAndView();
		
		vo.setAdmin_notice_no(no);
		System.out.println(no);
		pVo.setPageNum(Integer.parseInt(req.getParameter("pageNum")));
		System.out.println(req.getParameter("pageNum"));
		NewsDAOImp dao = sqlSession.getMapper(NewsDAOImp.class);
		
		NewsVO vo2 = dao.newsSelectRecord(no);
		
		mav.addObject("pnVo",dao.newsRecordList(vo.getAdmin_notice_no(), pVo));
		mav.addObject("pVo",pVo);
		mav.addObject("vo",vo2);
		mav.setViewName("main/news/newsDetail");
		return mav;
	}
	
	@RequestMapping(value="/eventDetail", method=RequestMethod.GET)
	public ModelAndView eventForm(int no ,HttpServletRequest req){//이벤트 게시물 선택
		NewsVO vo = new NewsVO();
		PagingVO pVo = new PagingVO();	
		ModelAndView mav = new ModelAndView();
		
		NewsDAOImp dao = sqlSession.getMapper(NewsDAOImp.class);
		
		vo.setAdmin_notice_no(no);
		pVo.setPageNum(Integer.parseInt(req.getParameter("pageNum")));
		
		NewsVO vo2 = dao.eventsSelectRecord(no);
		
		mav.addObject("pnVo",dao.eventRecordList(vo.getAdmin_notice_no(),pVo));
		mav.addObject("pVo",pVo);
		mav.addObject("vo",vo2);
		mav.setViewName("main/news/eventDetail");
		return mav;
	}
}