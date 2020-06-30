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
	
	@RequestMapping(value = "/sendContactForm", method = RequestMethod.POST)
	@ResponseBody
	public int sendContactForm(@ModelAttribute ContactVO vo, HttpServletRequest req) {
		String gRecaptchaResponse = req.getParameter("g-recaptcha-response");
		System.out.println(req.getParameter("g-recaptcha-response"));
		ContactDAOImp dao = sqlSession.getMapper(ContactDAOImp.class);
		int cnt;
		int res;
		try {
			//±¸±ÛÄ¸Â÷ÀÎÁõ
			if(VerifyRecaptcha.verify(gRecaptchaResponse)) {
				contactService.sendContactMail(vo);
				cnt = dao.insertContact(vo);
				System.out.println(cnt);
				if(cnt>0) {
					res = 1;
				}
				else {
					res = 0;
				}
			}
			else {
				res = -1; //Ä¸Â÷ÀÎÁõ ¾ÈµÊ
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
			res = 0;
		}
		
		return res;
	}
}
