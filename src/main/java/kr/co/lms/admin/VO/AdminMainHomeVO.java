package kr.co.lms.admin.VO;

public class AdminMainHomeVO {
	
	
	//팔린 선생 판매 순위
	private String  payment_name;
	private int 	payment_num;
	
	//팔린 강좌 순위
	private String  course_name;
	private int 	course_num;
	
	
	//전체 학생 수
	private int totalStudent;
	//전체 선생 수
	private int totalTeacher;
	//총 판매액
	private int totalPrice;
	//전체 강좌 수
	private int totalCourse;
	
	
	
	public String getPayment_name() {
		return payment_name;
	}
	public void setPayment_name(String payment_name) {
		this.payment_name = payment_name;
	}
	public int getPayment_num() {
		return payment_num;
	}
	public void setPayment_num(int payment_num) {
		this.payment_num = payment_num;
	}
	public String getCourse_name() {
		return course_name;
	}
	public void setCourse_name(String course_name) {
		this.course_name = course_name;
	}
	public int getCourse_num() {
		return course_num;
	}
	public void setCourse_num(int course_num) {
		this.course_num = course_num;
	}
	public int getTotalStudent() {
		return totalStudent;
	}
	public void setTotalStudent(int totalStudent) {
		this.totalStudent = totalStudent;
	}
	public int getTotalTeacher() {
		return totalTeacher;
	}
	public void setTotalTeacher(int totalTeacher) {
		this.totalTeacher = totalTeacher;
	}
	public int getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
	public int getTotalCourse() {
		return totalCourse;
	}
	public void setTotalCourse(int totalCourse) {
		this.totalCourse = totalCourse;
	}
	
	
	
}
