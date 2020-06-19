package kr.co.lms.contact;

import javax.inject.Inject;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import kr.co.lms.main.DAO.ContactDAOImp;
import kr.co.lms.main.VO.ContactVO;

@Service
public class ContactServiceImpl implements ContactDAOImp {
	
	@Inject
	JavaMailSender mailSender;
	
	@Override
	public void sendContactMail(ContactVO vo) {
		try {
			MimeMessage msg = mailSender.createMimeMessage(); //이메일객체
			
			//수신자
			msg.addRecipient(RecipientType.TO, new InternetAddress());
			
			//발신자(이메일주소+이름)
			msg.addFrom(new InternetAddress[] {new InternetAddress()});
			
			//이메일 제목
			msg.setSubject(vo.getContact_name()+"님으로부터 새로운 문의가 수신되었습니다.", "utf-8");
			//이메일 본문
			msg.setText(vo.getContact_content());
			mailSender.send(msg);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
