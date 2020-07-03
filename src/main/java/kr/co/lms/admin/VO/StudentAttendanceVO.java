package kr.co.lms.admin.VO;

public class StudentAttendanceVO {
	private int student_no;
	private int payment_no;
	private String course_name;
	private String course_day;
	private String course_start_date;
	private String course_time;
	private int state;
	private String attendance_date;
	private int attendance_state;//1.출석 2.지각 3.결석
	
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
	public String getCourse_day() {
		return course_day;
	}
	public void setCourse_day(String course_day) {
		this.course_day = course_day;
	}
	public String getCourse_start_date() {
		return course_start_date;
	}
	public void setCourse_start_date(String course_start_date) {
		this.course_start_date = course_start_date;
	}
	public String getCourse_time() {
		return course_time;
	}
	public void setCourse_time(String course_time) {
		this.course_time = course_time;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public String getAttendance_date() {
		return attendance_date;
	}
	public void setAttendance_date(String attendance_date) {
		this.attendance_date = attendance_date;
	}
	public int getAttendance_state() {
		return attendance_state;
	}
	public void setAttendance_state(int attendance_state) {
		this.attendance_state = attendance_state;
	}
	
	
}
