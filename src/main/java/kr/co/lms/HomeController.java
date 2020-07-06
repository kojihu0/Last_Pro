package kr.co.lms;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.lms.main.DAO.HomeDAOImp;
import kr.co.lms.main.DAO.MypageDAOImp;
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
		MypageDAOImp dao2 =sqlSession.getMapper(MypageDAOImp.class);
		dao2.updateSysdate();
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
	
	@RequestMapping("/termsOfService")
	public String termsOfPolicy() {
		return "main/terms/termsOfService";
	}
	
	@RequestMapping("/privacyPolicy")
	public String privatePolicy() {
		return "main/terms/privacyPolicy";
	}
	
	//캡차
//	@RequestMapping(value = "VerifyRecaptcha", method = RequestMethod.POST)
//	@ResponseBody
//    public int VerifyRecaptcha(HttpServletRequest request) {
//        VerifyRecaptcha.setSecretKey("6LeIxAcTAAAAAGG-vFI1TnRWxMZNFuojJ4WifJWe");
//        String gRecaptchaResponse = request.getParameter("recaptcha");
//        System.out.println(gRecaptchaResponse);
//        //0 = 성공, 1 = 실패, -1 = 오류
//        try {
//            if(VerifyRecaptcha.verify(gRecaptchaResponse))
//                return 0;
//            else return 1;
//        } catch (Exception e) {
//            e.printStackTrace();
//            return -1;
//        }
//    }
}
