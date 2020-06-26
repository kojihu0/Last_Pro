package kr.co.lms.main.VO;



public class MemberVO {
	private int student_no;//학생번호 
	private String student_id;//아이디
	private String student_pw;//비밀번호 
	private String student_name_ko;//이름
	private String student_info;//자기소개
	private String student_img;//이미지
	private String student_tel_phone;//전화번호
	private String student_email;//이메일
	private String useremailCode;//이메일 인증코드 
	private String writedate;//등록일 
	private String logStatus = "N";//로그인상태
	
	


	public int getStudent_no() {
		return student_no;
	}
	public void setStudent_no(int student_no) {
		this.student_no = student_no;
	}
	public String getStudent_id() {
		return student_id;
	}
	public void setStudent_id(String student_id) {
		this.student_id = student_id;
	}
	public String getStudent_name_ko() {
		return student_name_ko;
	}
	public void setStudent_name_ko(String student_name_ko) {
		this.student_name_ko = student_name_ko;
	}
	public String getStudent_info() {
		return student_info;
	}
	public void setStudent_info(String student_info) {
		this.student_info = student_info;
	}
	public String getStudent_img() {
		return student_img;
	}
	public void setStudent_img(String student_img) {
		this.student_img = student_img;
	}
	
	public String getStudent_email() {
		return student_email;
	}
	public void setStudent_email(String student_email) {
		this.student_email = student_email;
	}
	
	public String getStudent_tel_phone() {
		return student_tel_phone;
	}
	public void setStudent_tel_phone(String student_tel_phone) {
		this.student_tel_phone = student_tel_phone;
	}
	public String getUseremailCode() {
		return useremailCode;
	}
	public void setUseremailCode(String useremailCode) {
		this.useremailCode = useremailCode;
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
