package kr.co.lms.main.VO;



public class MemberVO {
	private String student_no;
	private String userid;
	private String student_pw;
	private String student_name_ko;
	private String usertel;
	private String useremail;
	private String writedate;
	private String logStatus = "N";
	
	


	public String getStudent_no() {
		return student_no;
	}
	public void setStudent_no(String student_no) {
		this.student_no = student_no;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getStudent_name_ko() {
		return student_name_ko;
	}
	public void setStudent_name_ko(String student_name_ko) {
		this.student_name_ko = student_name_ko;
	}
	public String getUsertel() {
		return usertel;
	}
	public void setUsertel(String usertel) {
		this.usertel = usertel;
	}
	public String getUseremail() {
		return useremail;
	}
	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}
	public String getWritedate() {
		return writedate;
	}
	public void setWritedate(String writedate) {
		this.writedate = writedate;
	}
	public String getLogStatus() {
		return logStatus;
	}
	public void setLogStatus(String logStatus) {
		this.logStatus = logStatus;
	}
	public String getStudent_pw() {
		return student_pw;
	}
	public void setStudent_pw(String student_pw) {
		this.student_pw = student_pw;
	}
	

}
