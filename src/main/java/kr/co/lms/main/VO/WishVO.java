package kr.co.lms.main.VO;

public class WishVO {
	private int wish_no;
	private int student_no;
	private int course_no;
	private String wish_date;
	private String wish_status;
	
	public int getWish_no() {
		return wish_no;
	}
	public void setWish_no(int wish_no) {
		this.wish_no = wish_no;
	}
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
	public String getWish_date() {
		return wish_date;
	}
	public void setWish_date(String wish_date) {
		this.wish_date = wish_date;
	}
	public String getWish_status() {
		return wish_status;
	}
	public void setWish_status(String wish_status) {
		this.wish_status = wish_status;
	}
}
