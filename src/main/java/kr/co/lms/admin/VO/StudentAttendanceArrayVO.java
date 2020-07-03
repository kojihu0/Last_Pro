package kr.co.lms.admin.VO;

public class StudentAttendanceArrayVO {
	private int student_no[];
	private int attendance_state[];
	private String attendance_reason[];
	private int course_no[];
	
	public int[] getStudent_no() {
		return student_no;
	}
	public void setStudent_no(int[] student_no) {
		this.student_no = student_no;
	}
	public int[] getAttendance_state() {
		return attendance_state;
	}
	public void setAttendance_state(int[] attendance_state) {
		this.attendance_state = attendance_state;
	}
	public String[] getAttendance_reason() {
		return attendance_reason;
	}
	public void setAttendance_reason(String[] attendance_reason) {
		this.attendance_reason = attendance_reason;
	}
	public int[] getCourse_no() {
		return course_no;
	}
	public void setCourse_no(int[] course_no) {
		this.course_no = course_no;
	}
	
	
}
