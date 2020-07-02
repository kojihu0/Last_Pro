package kr.co.lms.admin.VO;

import org.springframework.web.multipart.MultipartFile;

public class AdminNoticeVO {

	private int 	admin_notice_no;	 //nn
	private int 	employee_no;		 //nn
	private String	employee_name;
	private int 	admin_category;		 //nn
	private String 	admin_notice_title;	 //nn
	private String 	admin_notice_content;//nn
	private String 	admin_notice_img;
	private MultipartFile admin_notice_img_m;
	private String 	admin_notice_date;
	private int     admin_notice_hit;
	
	public MultipartFile getAdmin_notice_img_m() {
		return admin_notice_img_m;
	}
	public void setAdmin_notice_img_m(MultipartFile admin_notice_img_m) {
		this.admin_notice_img_m = admin_notice_img_m;
	}
	public String getEmployee_name() {
		return employee_name;
	}
	public void setEmployee_name(String employee_name) {
		this.employee_name = employee_name;
	}
	public int getAdmin_notice_hit() {
		return admin_notice_hit;
	}
	public void setAdmin_notice_hit(int admin_notice_hit) {
		this.admin_notice_hit = admin_notice_hit;
	}
	public int getAdmin_notice_no() {
		return admin_notice_no;
	}
	public void setAdmin_notice_no(int admin_notice_no) {
		this.admin_notice_no = admin_notice_no;
	}
	public int getEmployee_no() {
		return employee_no;
	}
	public void setEmployee_no(int employee_no) {
		this.employee_no = employee_no;
	}
	public int getAdmin_category() {
		return admin_category;
	}
	public void setAdmin_category(int admin_category) {
		this.admin_category = admin_category;
	}
	public String getAdmin_notice_title() {
		return admin_notice_title;
	}
	public void setAdmin_notice_title(String admin_notice_title) {
		this.admin_notice_title = admin_notice_title;
	}
	public String getAdmin_notice_content() {
		return admin_notice_content;
	}
	public void setAdmin_notice_content(String admin_notice_content) {
		this.admin_notice_content = admin_notice_content;
	}
	public String getAdmin_notice_img() {
		return admin_notice_img;
	}
	public void setAdmin_notice_img(String admin_notice_img) {
		this.admin_notice_img = admin_notice_img;
	}
	public String getAdmin_notice_date() {
		return admin_notice_date;
	}
	public void setAdmin_notice_date(String admin_notice_date) {
		this.admin_notice_date = admin_notice_date;
	}

	
	
	
}
