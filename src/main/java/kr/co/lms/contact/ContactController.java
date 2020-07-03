package kr.co.lms.contact;

import javax.inject.Inject;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
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
	JavaMailSender mailSender;
	
	@RequestMapping(value = "/sendContactForm", method = RequestMethod.POST)
	@ResponseBody
	public int sendContactForm(ContactVO vo, HttpServletRequest req) {
		String gRecaptchaResponse = req.getParameter("g-recaptcha-response");
		System.out.println(req.getParameter("g-recaptcha-response"));
		ContactDAOImp dao = sqlSession.getMapper(ContactDAOImp.class);
		int cnt;
		int res;
		try {
			//구글캡차인증
			if(VerifyRecaptcha.verify(gRecaptchaResponse)) {
				MimeMessage msg = mailSender.createMimeMessage(); //이메일객체
				MimeMessageHelper helper = new MimeMessageHelper(msg, true, "utf-8");
				String contactContent = "성함: " + vo.getContact_name() + "\r\n"
						+ "이메일: " + vo.getContact_email() + "\r\n"
						+ "연락처: " + vo.getContact_tel() + "\r\n"
						+ "문의내용: " + vo.getContact_content();
				//수신자
				helper.setTo(new InternetAddress("fezze779@gmail.com"));
				//발신자(이메일주소+이름)
				helper.setFrom(new InternetAddress("fezze779@gmail.com", "Educamp"));
				
				//이메일 제목
				helper.setSubject(vo.getContact_name()+"님으로부터 새로운 문의가 수신되었습니다.");
				//이메일 본문
				helper.setText(contactContent);
				
				mailSender.send(msg); //메일보내기
				cnt = dao.insertContact(vo); //데이터베이스 처리
				System.out.println(cnt);
				if(cnt>0) {
					res = 1;
				}
				else {
					res = 0;
				}
			}
			else {
				res = -1; //캡차인증 안됨
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
			res = 0;
		}
		
		return res;
	}
}
