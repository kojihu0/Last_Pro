package kr.co.lms.contact;

import kr.co.lms.main.VO.ContactVO;

public interface ContactEmailService {
	//메일보내기
	public void sendContactMail(ContactVO vo);
}
