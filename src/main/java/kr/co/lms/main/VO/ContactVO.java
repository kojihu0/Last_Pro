package kr.co.lms.main.VO;

public class ContactVO {
	private int contact_no;
	private String contact_name;
	private String contact_email;
	private String contact_tel;
	private String contact_content;
	private String contact_date;
	private String contentType;
	private String emailSender;
	
	public ContactVO() {
		contentType="text/plane";
	}
	public int getContact_no() {
		return contact_no;
	}
	public void setContact_no(int contact_no) {
		this.contact_no = contact_no;
	}
	public String getContact_name() {
		return contact_name;
	}
	public void setContact_name(String contact_name) {
		this.contact_name = contact_name;
	}
	public String getContact_email() {
		return contact_email;
	}
	public void setContact_email(String contact_email) {
		this.contact_email = contact_email;
	}
	public String getContact_tel() {
		return contact_tel;
	}
	public void setContact_tel(String contact_tel) {
		this.contact_tel = contact_tel;
	}
	public String getContact_content() {
		return contact_content;
	}
	public void setContact_content(String contact_content) {
		this.contact_content = contact_content;
	}
	public String getContact_date() {
		return contact_date;
	}
	public void setContact_date(String contact_date) {
		this.contact_date = contact_date;
	}

	public String getEmailSender() {
		return emailSender;
	}

	public void setEmailSender(String emailSender) {
		this.emailSender = emailSender;
	}
}
