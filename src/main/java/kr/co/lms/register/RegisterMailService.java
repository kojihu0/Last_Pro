package kr.co.lms.register;

import javax.servlet.http.HttpServletRequest;

public interface RegisterMailService {

	public void sendRegisterMail(String usermail,String sesId);
}
