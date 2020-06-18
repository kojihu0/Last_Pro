package kr.co.lms.main.VO;

import java.text.NumberFormat;

public class HomeVO {
	private int employee_no; //강사계정번호
	
	/*인기강좌*/
	private int course_no; //강좌번호
	private int employee_name; //강사명
	private int course_price; //강좌금액
	private String course_img; //썸네일
	private String course_price_format; //강좌금액(포맷)
	
	/*이벤트, 새소식*/
	private int admin_notice_no; 
//	int employee_no;
	private String admin_category;
	private String admin_notice_title;
	private String admin_notice_img;
	private String admin_notice_date;
	
	public int getEmployee_no() {
		return employee_no;
	}
	public void setEmployee_no(int employee_no) {
		this.employee_no = employee_no;
	}
	public int getCourse_no() {
		return course_no;
	}
	public void setCourse_no(int course_no) {
		this.course_no = course_no;
	}
	public int getEmployee_name() {
		return employee_name;
	}
	public void setEmployee_name(int employee_name) {
		this.employee_name = employee_name;
	}
	public int getCourse_price() {
		return course_price;
	}
	public void setCourse_price(int course_price) {
		course_price_format = NumberFormat.getInstance().format(course_price); //숫자 천 단위 콤마
		this.course_price = course_price;
	}
	public String getCourse_img() {
		return course_img;
	}
	public void setCourse_img(String course_img) {
		this.course_img = course_img;
	}
	public String getCourse_price_format() {
		return course_price_format;
	}
	public void setCourse_price_format(String course_price_format) {
		this.course_price_format = course_price_format;
	}
	public int getAdmin_notice_no() {
		return admin_notice_no;
	}
	public void setAdmin_notice_no(int admin_notice_no) {
		this.admin_notice_no = admin_notice_no;
	}
	public String getAdmin_category() {
		return admin_category;
	}
	public void setAdmin_category(String admin_category) {
		this.admin_category = admin_category;
	}
	public String getAdmin_notice_title() {
		return admin_notice_title;
	}
	public void setAdmin_notice_title(String admin_notice_title) {
		this.admin_notice_title = admin_notice_title;
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
