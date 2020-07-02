package kr.co.lms.idFind;

import javax.inject.Inject;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.lms.main.DAO.MemberDAOImp;
import kr.co.lms.main.VO.MemberVO;

@Controller
public class Id_pwdFindController {
	private String senderEmail="insunok0715@naver.com";
	private String senderName="Educamp";
	
	SqlSession sqlSession;
	@Inject
	JavaMailSenderImpl mailSender2;
	
	public SqlSession getSqlSession() {
		return sqlSession;
	}
	@Autowired
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Autowired
	PasswordEncoder passwordEncoder;
	
	@RequestMapping(value="/idFind",method=RequestMethod.GET)
	public String idFind() {
		return"main/login/idFind";
	}
	
	@RequestMapping(value="/idFind", method=RequestMethod.POST, produces="application/text; charset=UTF-8")
	@ResponseBody
	public String idFindEmail(HttpServletRequest req, MemberVO vo) {
		MemberDAOImp dao = sqlSession.getMapper(MemberDAOImp.class);
		String findId = dao.memberIdFind(vo);
		String response = "";
		if(findId!=null && !findId.isEmpty()) {
			response ="회원님의 아이디는 "+findId+" 입니다.";
		}
		else {
			response ="입력하신 정보로 가입된 회원아이디가 존재하지 않습니다.";
		}
		
		return response;
	}
	
	@RequestMapping(value="/pwdFind", method=RequestMethod.POST, produces="application/text; charset=UTF-8")
	@ResponseBody
	public String pwdFindEmail(HttpServletRequest req, MemberVO vo) {
		MemberDAOImp dao = sqlSession.getMapper(MemberDAOImp.class);
		String findId = dao.memberIdFind(vo);
		String response = "패스워드 발급이 실패했습니다. 관리자에게 문의바랍니다.";
		if(findId!=null && !findId.isEmpty()) { //입력한 정보가  DB에 존재함
			String newPwd = generateTempPwd();
			String body ="EduCamp 임시 비밀번호입니다. 로그인 후 패스워드를 변경하세요.\r\n"+newPwd;
			String subject ="EduCamp 패스워드 재설정 안내";
			vo.setStudent_pw(passwordEncoder.encode(newPwd));
			int cnt = dao.memberPasswordDataSelect(vo);
			if(cnt>0) {
				try {
					MimeMessage message = mailSender2.createMimeMessage();
					
					String email = req.getParameter("student_email");
					System.out.println(email);
					
					MimeMessageHelper helper = new MimeMessageHelper(message, true, "UTF-8"); 
					helper.setFrom(new InternetAddress(senderEmail, senderName));
					helper.setTo(email);
					helper.setSubject(subject);
					helper.setText(body); 
					
					mailSender2.send(message);
					System.out.println("비밀번호 이메일 전송 성공");
					
					response = "이메일로 임시 패스워드가 발급되었습니다.";
				}catch(Exception e) {
					System.out.println(e.getMessage());
				}
			}
			else {
				response = "패스워드 발급이 실패했습니다. 관리자에게 문의바랍니다.";
			}
		}
		else {
			response ="입력하신 정보로 가입된 회원아이디가 존재하지 않습니다.";
		}
		
		return response;
	}
	
	String generateTempPwd() {
		char[] charset = new char[]{'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k' ,'l', 'm',
						'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'};
		char[] charsetNum = new char[]{'1', '2', '3', '4', '5', '6', '7', '8', '9', '0'};
		char[] charsetSp = new char[]{'!', '@', '#', '$', '%', '^', '&', '-', '+', '='};
		StringBuffer newPwd = new StringBuffer();
		for(int i=0; i<10; i++) {
			int idx = 0;
			if(i<=7) {
				idx = (int)(charset.length * Math.random());
				newPwd.append(charset[idx]);
			}
			else if(i==8){
				idx = (int)(charsetNum.length * Math.random());
				newPwd.append(charsetNum[idx]);
			}
			else {
				idx = (int)(charsetSp.length * Math.random());
				newPwd.append(charsetSp[idx]);
			}
			
		}
		return newPwd.toString();
	}
}
