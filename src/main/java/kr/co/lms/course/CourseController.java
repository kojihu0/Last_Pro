package kr.co.lms.course;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.co.lms.main.DAO.CourseDAOImp;
import kr.co.lms.main.VO.CourseReviewVO;
import kr.co.lms.main.VO.CourseVO;
import kr.co.lms.main.VO.PagingVO;
import kr.co.lms.main.VO.WishVO;

@Controller
public class CourseController {
	SqlSession sqlSession;
	
	public SqlSession getSqlSession() {
		return sqlSession;
	}
	
	@Autowired
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@RequestMapping(value = "/course/courseList", method = RequestMethod.GET)
	public ModelAndView courseList(@RequestParam(required = false, defaultValue = "1") int pageNum,
			@RequestParam(required = false, defaultValue = "") String search_text) {
		CourseDAOImp dao = sqlSession.getMapper(CourseDAOImp.class);
		
		PagingVO pvo = new PagingVO();
		pvo.setOnePageRecord(8); //한페이지당 보여질 개수
		
		if(!search_text.isEmpty() && search_text!=null) { //검색어가 존재할때 검색어 셋팅
			pvo.setSearch_text(search_text);
		}
		
		if(pageNum>0) { //페이지번호  세팅
			pvo.setPageNum(pageNum);
		}
		else {
			pvo.setPageNum(1);
		}
		pvo.setTotalRecord(dao.getTotalCoureses(search_text)); //전체 레코드 수 세팅
		
		if((pvo.getPageNum() < pvo.getTotalPage())) { //현재 페이지번호가 마지막페이지 번호보다 작을 때만 lastPageRecord에 onePageRecord적용
			pvo.setLastPageRecord(pvo.getOnePageRecord());
		}
		
		List<CourseVO> courseList = dao.courseList(pvo);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", courseList);
		mav.addObject("pvo", pvo);
		mav.addObject("crrPageNum", pvo.getPageNum());
		mav.addObject("search_text", search_text);
		mav.setViewName("main/course/courseList");
		return mav;
	}
	
	@RequestMapping(value = "/course/courseDetail", method = RequestMethod.GET)
	public ModelAndView courseDetail(@RequestParam(required = false, defaultValue = "1") int reviewPageNum,
			@RequestParam(value = "course_no") int course_no, HttpServletRequest req) {
		
		CourseDAOImp dao = sqlSession.getMapper(CourseDAOImp.class);
		PagingVO rpvo = new PagingVO();
		rpvo.setOnePageRecord(5);
		rpvo.setCourse_no(course_no);
		
		if(reviewPageNum>0) { //페이지번호  세팅
			rpvo.setPageNum(reviewPageNum);
		}
		else {
			rpvo.setPageNum(1);
		}
		int totalReviews = dao.getTotalReviews(course_no); //전체 수강평 수
		rpvo.setTotalRecord(totalReviews);
		
		if((rpvo.getPageNum() < rpvo.getTotalPage())) { //현재 페이지번호가 마지막페이지 번호보다 작을 때만 lastPageRecord에 onePageRecord적용
			rpvo.setLastPageRecord(rpvo.getOnePageRecord());
		}
		
		//세션
		HttpSession sess = req.getSession();
		String logStatus = (String) sess.getAttribute("logStatus");
		int student_no = 0;
		int payment_no = 0;
		int wish_no = 0;
		if(logStatus!=null) { //로그인 상태일때 세션에서 학생번호와 구매번호 가져오기
			if(logStatus.equals("Y")) {
				student_no = (Integer)sess.getAttribute("student_no");
				String strPayment_no = dao.selectPaymentNo(course_no, student_no); 
				if(strPayment_no!=null) {
					payment_no = Integer.parseInt(strPayment_no);
				}
				System.out.println("구매번호"+payment_no);
				wish_no = dao.selectWishNo(course_no, student_no);
				
			}
		}
		//리뷰 퍼센트 구하기
		int rankSum=0;
		List<CourseReviewVO> reviewTmp = new ArrayList<CourseReviewVO>();
		List<CourseReviewVO> review = dao.reviewRanks(course_no);
		for(int i=0; i<5; i++) {
			CourseReviewVO vvv = new CourseReviewVO();
			reviewTmp.add(vvv);
		}
		System.out.println("ddddd"+review.size());
		for(int i=0; i<review.size(); i++) {
			CourseReviewVO vv = review.get(i);
			rankSum+=vv.getReview_rank()*vv.getReview_cnt();			
			reviewTmp.set(5-vv.getReview_rank(), vv);	
			
		}
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("vo", dao.selectCourse(course_no));
		mav.addObject("reviewList", dao.reviewList(rpvo));
		mav.addObject("reviewRanks", reviewTmp);
		mav.addObject("reviewRankSum", rankSum);
		mav.addObject("rpvo", rpvo);
		mav.addObject("crrPageNum", rpvo.getPageNum());
		mav.addObject("payment_no", payment_no);
		mav.addObject("wish_no", wish_no);
		mav.setViewName("main/course/courseDetail");
		return mav;
	}
	
	@RequestMapping(value = "/course/reviewOk", method = RequestMethod.POST)
	public ModelAndView insertCouresReview(CourseReviewVO vo, HttpServletRequest req) {
		CourseDAOImp dao = sqlSession.getMapper(CourseDAOImp.class);
		
		HttpSession sess = req.getSession();
		int student_no = Integer.parseInt((String)sess.getAttribute("student_no"));
		vo.setStudent_no(student_no);
		System.out.println("test"+ vo.getCourse_no()+" "+vo.getStudent_no());
		int payment_no = Integer.parseInt(dao.selectPaymentNo(vo.getCourse_no(), vo.getStudent_no()));
		vo.setPayment_no(payment_no);
		int cnt = dao.insertReview(vo);
		
		String response;
		if(cnt>0) {
			response = "수강후기를 등록했습니다.";
		}
		else {
			response = "수강후기 등록을 실패했습니다.";
		}
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("course_no", vo.getCourse_no());
		mav.addObject("response", response);
		mav.addObject("url", "/course/courseDetail");
		mav.addObject("hash", "#comments");
		mav.setViewName("main/course/courseRedirect");
		return mav;
	}
	
	@RequestMapping(value = "/course/reviewModifyOk", method = RequestMethod.POST, produces = "application/text;charset=UTF-8")
	@ResponseBody
	public String updateCouresReview(CourseReviewVO vo, HttpServletRequest req) {
		CourseDAOImp dao = sqlSession.getMapper(CourseDAOImp.class);
		
		int cnt = dao.updateReview(vo);
		
		String response="";
		String msg="";
		if(cnt>0) {
			msg = "수강후기를 수정했습니다.";
		}
		else {
			msg = "수강후기 수정을 실패했습니다.";
		}
		
		response="{\"msg\": \""+msg+"\", "
				+ "\"review_no\": \""+vo.getReview_no()+"\", "
				+ "\"review_rank\": \""+vo.getReview_rank()+"\", "
				+ "\"review_content\": \""+vo.getReview_content()+"\"}";
		
		return response;
	}
	
	@RequestMapping("/course/reviewDeleteOk")
	public ModelAndView deleteCouresReview(CourseReviewVO vo) {
		CourseDAOImp dao = sqlSession.getMapper(CourseDAOImp.class);
		int cnt = dao.deleteReview(vo.getReview_no());
		
		String response;
		if(cnt>0) {
			response = "수강후기를 삭제했습니다.";
		}
		else {
			response = "수강후기 삭제를 실패했습니다.";
		}
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("course_no", vo.getCourse_no());
		mav.addObject("response", response);
		mav.addObject("url", "/course/courseDetail");
		mav.addObject("hash", "#comments");
		mav.setViewName("main/course/courseRedirect");
		return mav;
	}
	
	@RequestMapping(value = "/course/wishOk", produces = "application/text;charset=UTF-8")
	@ResponseBody
	public String insertWishList(WishVO vo, String wish_status, HttpServletRequest req) {
		CourseDAOImp dao = sqlSession.getMapper(CourseDAOImp.class);
		
		HttpSession sess = req.getSession();
		int student_no = Integer.parseInt((String)sess.getAttribute("student_no"));
		vo.setStudent_no(student_no);
		System.out.println(wish_status);
		int cnt = 0;
		String response="";
		String msg="";
		if(wish_status.equals("add")) {
			int wish_cnt = dao.selectWishNo(vo.getCourse_no(), student_no);
			if(wish_cnt==0) {
				cnt = dao.insertWish(vo);
				if(cnt>0) {
					msg = "강좌를 위시리스트에 추가했습니다.";
					vo.setWish_status("remove");
				}
				else {
					msg = "위시리스트 추가 실패";
				}
			}
		}
		else if(wish_status.equals("remove")) {
			cnt = dao.deleteWish(vo);
			if(cnt>0) {
				msg = "강좌를 위시리스트에서 삭제했습니다.";
				vo.setWish_status("add");
			}
			else {
				msg = "위시리스트 삭제 실패";
			}
		}
		
		
		response="{\"msg\": \""+msg+"\", "
				+ "\"wish_status\": \""+vo.getWish_status()+"\", "
				+ "\"course_no\": \""+vo.getCourse_no()+"\"}";
		
		return response;
	}
}
