package kr.co.lms.register;


import java.nio.charset.CodingErrorAction;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.lms.main.DAO.MemberDAOImp;
import kr.co.lms.main.VO.MemberVO;

@Controller
public class RegisterController {
	SqlSession sqlSession;
	BCryptPasswordEncoder BPd;
	
	
	public SqlSession getSqlSession() {
		return sqlSession;
	}
	@Autowired
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	
	public BCryptPasswordEncoder getBPd() {
		return BPd;
	}
	@Autowired
	public void setBPd(BCryptPasswordEncoder bPd) {
		BPd = bPd;
	}
	@RequestMapping(value="/register", method=RequestMethod.GET)
	public String register() {//유저 회원가입 
		return"main/register/register";
	}
	@RequestMapping(value="/registerOk", method=RequestMethod.POST)
	public ModelAndView register(MemberVO vo) {//유저 회원가입
		ModelAndView mav = new ModelAndView();
		String Encryption = BPd.encode(vo.getStudent_pw());
		vo.setStudent_pw(Encryption);
		MemberDAOImp dao = sqlSession.getMapper(MemberDAOImp.class);
		
		int cnt = dao.memberRegister(vo);
		if(cnt>0) {
			mav.setViewName("redirect:/");
		}else {
			mav.setViewName("redirect:register");
		}
		return mav;
	}
	//이메일 네이버 smtp 보내기
	@RequestMapping("/emailSend")
	public String emailCode(HttpServletRequest req) {
		String email = req.getParameter("user_email");
		System.out.println(email);
		String sesId = req.getSession().getId();
		Properties p = new Properties();
		p.put("mail.smtp.host", "smtp.naver.com");
		p.put("mail.smtp.port","25");
		p.put("defaultEncoding","UTF-8");
		p.put("mail.smtp.auth","true");
		try {
			Session ses = Session.getDefaultInstance(p, new Authenticator() {
			String un = "insunok0715@naver.com";
				String pw = "wjd1234!";
				
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(un, pw);
				}
			});
			
			ses.setDebug(false);
		
			MimeMessage mM = new MimeMessage(ses);
			mM.setFrom(new InternetAddress("insunok0715@naver.com"));
			InternetAddress[] toAddr = new InternetAddress[1];
			toAddr[0] =new InternetAddress(email);
			
			mM.setRecipients(Message.RecipientType.TO, toAddr);
			mM.setSubject("EduCamp 회원가입 이메일 인증 코드입니다. "); 
			
			
			String content = "EduCamp 회원가입에 필요한 이메일 인증 코드입니다.\n";
				   content+="인증코드:"+sesId;
			
				   
			mM.setText(content);
			System.out.println();
			Transport.send(mM);
			
			//이메일 인증코드가 전송되었는지 보내기 
			req.setAttribute("code", "ok");
			System.out.println("이메일 인증 -->"+email);
			
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("이메일 에러 -->"+e.getMessage());
		}
		return "main/register/register";
	}
	
	
	@RequestMapping("/subjectRegister")
	public String subjectRegister() {
		return "admin/subjectRegister";
	}
	@RequestMapping("/cancelRegister")
	public String cancelRegister() {
		return "admin/cancelRegister";
	}
}
