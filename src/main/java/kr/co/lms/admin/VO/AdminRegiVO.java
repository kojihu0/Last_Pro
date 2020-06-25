package kr.co.lms.admin.VO;

public class AdminRegiVO {

	//DB 와 같게 하기 위해 대소문자 구별 하지 않았습니다.
	private int 	employee_no;
	private String 	employee_name;
	private String 	admin_id;
	private String 	admin_pw;
	//========================================
	public int getEmployee_no() {
		return employee_no;
	}
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

	//========================================
	
	
}
