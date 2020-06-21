package kr.co.lms.contact;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.co.lms.main.DAO.ContactDAOImp;
import kr.co.lms.main.VO.ContactVO;

import kr.co.lms.VerifyRecaptcha;

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
	ContactEmailService contactService;
	
	@RequestMapping(value = "/sendContactForm", method = RequestMethod.POST, produces = "application/text;charset=UTF-8")
	@ResponseBody
	public String sendContactForm(@ModelAttribute ContactVO vo) {
		ContactDAOImp dao = sqlSession.getMapper(ContactDAOImp.class);
		int cnt;
		String resTxt;
		try {
			contactService.sendContactMail(vo);
			cnt = dao.insertContact(vo);
			resTxt = "문의가 접수되었습니다.";
			
		} catch (Exception e) {
			e.printStackTrace();
			resTxt ="문의접수에 실패했습니다. 고객센터 전화로 직접 문의바랍니다.";
		}
		
		//mav.setViewName("redirect:contact");
		//return mav;
		return resTxt;
	}
}
