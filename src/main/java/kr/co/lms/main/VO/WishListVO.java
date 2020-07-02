package kr.co.lms.main.VO;

public class WishListVO {
	private int student_no;
	private int course_no;
	private int course_price;
	private String course_name;
	private String course_img;
	private String employee_name;
	
	
	
	public int getStudent_no() {
		return student_no;
	}
	public void setStudent_no(int student_no) {
		this.student_no = student_no;
	}
	public int getCourse_no() {
		return course_no;
	}
	public void setCourse_no(int course_no) {
		this.course_no = course_no;
	}
	public String getCourse_name() {
		return course_name;
	}
	public void setCourse_name(String course_name) {
		this.course_name = course_name;
	}
	public String getCourse_img() {
		return course_img;
	}
	public void setCourse_img(String course_img) {
		this.course_img = course_img;
	}
	public String getEmployee_name() {
		return employee_name;
	}
	public void setEmployee_name(String employee_name) {
		this.employee_name = employee_name;
	}
	public int getCourse_price() {
		return course_price;
	}
	public void setCourse_price(int course_price) {
		this.course_price = course_price;
	}
	
	
}
