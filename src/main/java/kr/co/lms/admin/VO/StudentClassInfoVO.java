package kr.co.lms.admin.VO;

public class StudentClassInfoVO {
	private int student_no;//
	private int payment_no;
	private String course_name;
	private String course_time;
	private String student_course_state_date;
	private int state;
	
	private String course_day;
	private String course_stage;
	
	
	public int getStudent_no() {
		return student_no;
	}
	public void setStudent_no(int student_no) {
		this.student_no = student_no;
	}
	public int getPayment_no() {
		return payment_no;
	}
	public void setPayment_no(int payment_no) {
		this.payment_no = payment_no;
	}
	public String getCourse_name() {
		return course_name;
	}
	public void setCourse_name(String course_name) {
		this.course_name = course_name;
	}
	public String getCourse_time() {
		return course_time;
	}
	public void setCourse_time(String course_time) {
		this.course_time = course_time;
	}
	public String getStudent_course_state_date() {
		return student_course_state_date;
	}
	public void setStudent_course_state_date(String student_course_state_date) {
		this.student_course_state_date = student_course_state_date;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public String getCourse_day() {
		return course_day;
	}
	public void setCourse_day(String course_day) {
		this.course_day = course_day;
	}
	public String getCourse_stage() {
		return course_stage;
	}
	public void setCourse_stage(String course_stage) {
		this.course_stage = course_stage;
	}
	
}
