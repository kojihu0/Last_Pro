package kr.co.lms.register;

import javax.inject.Inject;

import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
@Service
public class RegisterMailServiceImp implements RegisterMailService {
	@Inject
	JavaMailSender mailSender;

	
	@Override
	public void sendRegisterMail(String usermail,String sesId) {
		
		try {
			
			MimeMessage msg = mailSender.createMimeMessage(); //이메일객체
			MimeMessageHelper helper = new MimeMessageHelper(msg, true, "utf-8");
			
			String contactContent = "EduCamp 회원가입에 필요한 인증코드 메일 입니다.\n";
				   contactContent+="인증코드:"+sesId;
			helper.setTo(new InternetAddress(usermail));
			helper.setFrom(new InternetAddress("fezze779@gmail.com", "Educamp"));
			
			//이메일 제목
			helper.setSubject("EduCamp 회원가입에 필요한 인증코드 메일 입니다.");
			//이메일 본문
			helper.setText(contactContent);
			
			mailSender.send(msg); //메일보내기
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}