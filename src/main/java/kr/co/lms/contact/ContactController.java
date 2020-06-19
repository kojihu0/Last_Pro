package kr.co.lms.contact;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.lms.main.DAO.ContactDAOImp;
import kr.co.lms.main.VO.ContactVO;

@Controller
public class ContactController {
	SqlSession sqlSession;
	
	public SqlSession getSqlSession() {
		return sqlSession;
	}
	
	@Autowired
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@RequestMapping("/contact")
	public ModelAndView contact() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("main/contact");
		return mav;
	}
	
	@Inject
	ContactDAOImp contactService;
	
	@RequestMapping(value = "/sendContactForm", method = RequestMethod.POST)
	public ModelAndView sendContactForm(@ModelAttribute ContactVO vo) {
		ModelAndView mav = new ModelAndView();
		
		try {
			contactService.sendContactMail(vo);
			mav.addObject("message", "이메일이 발송되었습니다.");
		} catch (Exception e) {
			e.printStackTrace();
			mav.addObject("message", "이메일이 발송실패");
		}
		
		mav.setViewName("redirect:contact");
		return mav;
	}
}
