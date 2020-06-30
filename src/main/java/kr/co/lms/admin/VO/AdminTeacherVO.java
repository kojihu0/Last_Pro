package kr.co.lms.admin.VO;

public class AdminTeacherVO {
	
	private int 	employee_no;
	private String 	employee_name;
	private String 	admin_id;
	private String 	admin_pw; 
	private String 	employee_class;
	private String 	employee_authority;
	
		private String teacherTel_01;
		private String teacherTel_02;
		private String teacherTel_03;
	private String 	employee_tel;
	
		private String emailId;
		private String domain;
	private String  employee_email;
	

	private String 	employee_state;
	private String 	employee_img;
	private String 	employee_rank;
	private String  employee_overview;
	
	//=====================================================
	
	public String getTeacherTel_01() {
		return teacherTel_01;
	}
	public void setTeacherTel_01(String teacherTel_01) {
		this.teacherTel_01 = teacherTel_01;
	}
	public String getTeacherTel_02() {
		return teacherTel_02;
	}
	public void setTeacherTel_02(String teacherTel_02) {
		this.teacherTel_02 = teacherTel_02;
	}
	public String getTeacherTel_03() {

		return teacherTel_03;
	}
	public void setTeacherTel_03(String teacherTel_03) {
		this.teacherTel_03 = teacherTel_03;

	}
	public String getEmployee_tel() {
		return employee_tel = teacherTel_01 + "-" + teacherTel_02 + "-" +teacherTel_03; 
	}
	public void setEmployee_tel(String employee_tell) {
		this.employee_tel = employee_tell;
		
		String teacherTelSplit[] = employee_tel.split("-");
		teacherTel_01 = teacherTelSplit[0];
		teacherTel_02 = teacherTelSplit[1];
		teacherTel_03 = teacherTelSplit[2]; 
	}
	
	public String getEmailId() {

		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getDomain() {
		return domain;
	}
	public void setDomain(String domain) { 
		this.domain = domain;
	}
	public String getEmployee_email() {
		return emailId + "@" +  domain;
		
	}
	public void setEmployee_email(String employee_email) {
		
		this.employee_email = employee_email;
		
		String splitEmail[] = employee_email.split("@");
		
		emailId = splitEmail[0];
		domain  = splitEmail[1]; 
	}
	
	public int getEmployee_no() {
		return employee_no;
	}
	
	
	//==================================================
	
	public void setEmployee_no(int employee_no) {
		this.employee_no = employee_no;
	}
	public String getEmployee_name() {
		return employee_name;
	}
	public void setEmployee_name(String employee_name) {
		this.employee_name = employee_name;
	}
	public String getAdmin_id() {
		return admin_id;
	}
	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}
	public String getAdmin_pw() {
		return admin_pw;
	}
	public void setAdmin_pw(String admin_pw) {
		this.admin_pw = admin_pw;
	}
	public String getEmployee_class() {
		return employee_class;
	}
	public void setEmployee_class(String employee_class) {
		this.employee_class = employee_class;
	}
	public String getEmployee_authority() {
		return employee_authority;
	}
	public void setEmployee_authority(String employee_authority) {
		this.employee_authority = employee_authority;
	}

	public String getEmployee_state() {
		return employee_state;
	}
	public void setEmployee_state(String employee_state) {
		this.employee_state = employee_state;
	}
	public String getEmployee_img() {
		return employee_img;
	}
	public void setEmployee_img(String employee_img) {
		this.employee_img = employee_img;
	}
	public String getEmployee_rank() {
		return employee_rank;
	}
	public void setEmployee_rank(String employee_rank) {
		this.employee_rank = employee_rank;
	}
	public String getEmployee_overview() {
		return employee_overview;
	}
	public void setEmployee_overview(String employee_overview) {
		this.employee_overview = employee_overview;
	}
	
	

}
