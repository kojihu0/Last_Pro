package kr.co.lms.admin.VO;

public class StudentByCourseVO {
	private int course_no;//코스번호
	private String course_start_date;//강좌시작일
	private String course_name;//강좌명
	private String course_overview;//강좌개요
	private String course_stage;//반
	private int course_student_count;//반별 인원수
	private String course_day;
	private String course_time;
	
	private int student_no;
	private String student_img;
	private String student_name_ko;
	private String student_name_eng;
	private String student_gender;
	private String student_tel_parent;
	private String student_tel_phone;
	
	private String student_course_state_date;
	private int state;
	
	private int attendance_no;
	private int attendance_state;
	private String attendance_reason;
	private String attendance_date;
	private String deleteRecord;
	private int student_cnt;
	private int student_cnt2;
	private int attendance_cnt;
	
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public int getCourse_no() {
		return course_no;
	}
	public void setCourse_no(int course_no) {
		this.course_no = course_no;
	}
	public String getCourse_start_date() {
		return course_start_date;
	}
	public void setCourse_start_date(String course_start_date) {
		this.course_start_date = course_start_date;
	}
	public String getCourse_name() {
		return course_name;
	}
	public void setCourse_name(String course_name) {
		this.course_name = course_name;
	}
	public String getCourse_overview() {
		return course_overview;
	}
	public void setCourse_overview(String course_overview) {
		this.course_overview = course_overview;
	}
	public String getCourse_stage() {
		return course_stage;
	}
	public void setCourse_stage(String course_stage) {
		this.course_stage = course_stage;
	}
	public int getCourse_student_count() {
		return course_student_count;
	}
	public void setCourse_student_count(int course_student_count) {
		this.course_student_count = course_student_count;
	}
	public String getCourse_day() {
		return course_day;
	}
	public void setCourse_day(String course_day) {
		this.course_day = course_day;
	}
	public String getCourse_time() {
		return course_time;
	}
	public void setCourse_time(String course_time) {
		this.course_time = course_time;
	}
	public int getStudent_no() {
		return student_no;
	}
	public void setStudent_no(int student_no) {
		this.student_no = student_no;
	}
	public String getStudent_img() {
		return student_img;
	}
	public void setStudent_img(String student_img) {
		this.student_img = student_img;
	}
	public String getStudent_name_ko() {
		return student_name_ko;
	}
	public void setStudent_name_ko(String student_name_ko) {
		this.student_name_ko = student_name_ko;
	}
	public String getStudent_name_eng() {
		return student_name_eng;
	}
	public void setStudent_name_eng(String student_name_eng) {
		this.student_name_eng = student_name_eng;
	}
	public String getStudent_gender() {
		return student_gender;
	}
	public void setStudent_gender(String student_gender) {
		this.student_gender = student_gender;
	}
	public String getStudent_tel_parent() {
		return student_tel_parent;
	}
	public void setStudent_tel_parent(String student_tel_parent) {
		this.student_tel_parent = student_tel_parent;
	}
	public String getStudent_tel_phone() {
		return student_tel_phone;
	}
	public void setStudent_tel_phone(String student_tel_phone) {
		this.student_tel_phone = student_tel_phone;
	}
	public String getStudent_course_state_date() {
		return student_course_state_date;
	}
	public void setStudent_course_state_date(String student_course_state_date) {
		this.student_course_state_date = student_course_state_date;
	}
	public int getAttendance_state() {
		return attendance_state;
	}
	public void setAttendance_state(int attendance_state) {
		this.attendance_state = attendance_state;
	}
	public String getAttendance_reason() {
		return attendance_reason;
	}
	public void setAttendance_reason(String attendance_reason) {
		this.attendance_reason = attendance_reason;
	}
	public String getAttendance_date() {
		return attendance_date;
	}
	public void setAttendance_date(String attendance_date) {
		this.attendance_date = attendance_date;
	}
	public String getDeleteRecord() {
		return deleteRecord;
	}
	public void setDeleteRecord(String deleteRecord) {
		this.deleteRecord = deleteRecord;
	}
	public int getStudent_cnt() {
		return student_cnt;
	}
	public void setStudent_cnt(int student_cnt) {
		this.student_cnt = student_cnt;
	}
	public int getAttendance_no() {
		return attendance_no;
	}
	public void setAttendance_no(int attendance_no) {
		this.attendance_no = attendance_no;
	}
	public int getStudent_cnt2() {
		return student_cnt2;
	}
	public void setStudent_cnt2(int student_cnt2) {
		this.student_cnt2 = student_cnt2;
	}
	public int getAttendance_cnt() {
		return attendance_cnt;
	}
	public void setAttendance_cnt(int attendance_cnt) {
		this.attendance_cnt = attendance_cnt;
	}
	
	
}
