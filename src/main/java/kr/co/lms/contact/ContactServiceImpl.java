package kr.co.lms.contact;

import javax.inject.Inject;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import kr.co.lms.main.VO.ContactVO;

@Service
public class ContactServiceImpl implements ContactEmailService {
	
	@Inject
	JavaMailSender mailSender;
	
	@Override
	public void sendContactMail(ContactVO vo) {
		try {
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
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
