package kr.co.lms.main.VO;

import java.text.NumberFormat;

public class CourseVO {
	private int course_no; 
	private String course_name; //���¸�
	private int employee_no; //�����ȣ
	private String employee_name; //�����
	private String employee_img;
	private String employee_overview;
	private String admin_id; //������̵�(�̸���)
	private int course_price; //���±ݾ�
	private String course_reception_start;
	private String course_reception_end;
	private String course_start_date;
	private String course_end_date;
	private String course_overview;
	private String course_content;
	private String course_textbook;
	private String course_day;
	private String course_time;
	private String course_stage;
	private String course_img; //�����
	private String course_price_format; //���±ݾ�(����)
	private String search_string = "";
	
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
	public String getEmployee_img() {
		return employee_img;
	}
	public void setEmployee_img(String employee_img) {
		this.employee_img = employee_img;
	}
	public String getEmployee_overview() {
		return employee_overview;
	}
	public void setEmployee_overview(String employee_overview) {
		this.employee_overview = employee_overview;
	}
	public String getAdmin_id() {
		return admin_id;
	}
	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}
	public int getCourse_price() {
		return course_price;
	}
	public void setCourse_price(int course_price) {
		course_price_format = NumberFormat.getInstance().format(course_price); //���� õ ���� �޸�
		this.course_price = course_price;
	}
	public String getCourse_reception_start() {
		return course_reception_start;
	}
	public void setCourse_reception_start(String course_reception_start) {
		this.course_reception_start = course_reception_start;
	}
	public String getCourse_reception_end() {
		return course_reception_end;
	}
	public void setCourse_reception_end(String course_reception_end) {
		this.course_reception_end = course_reception_end;
	}
	public String getCourse_start_date() {
		return course_start_date;
	}
	public void setCourse_start_date(String course_start_date) {
		this.course_start_date = course_start_date;
	}
	public String getCourse_end_date() {
		return course_end_date;
	}
	public void setCourse_end_date(String course_end_date) {
		this.course_end_date = course_end_date;
	}
	public String getCourse_overview() {
		return course_overview;
	}
	public void setCourse_overview(String course_overview) {
		this.course_overview = course_overview;
	}
	public String getCourse_content() {
		return course_content;
	}
	public void setCourse_content(String course_content) {
		this.course_content = course_content;
	}
	public String getCourse_textbook() {
		return course_textbook;
	}
	public void setCourse_textbook(String course_textbook) {
		this.course_textbook = course_textbook;
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
	public String getCourse_stage() {
		return course_stage;
	}
	public void setCourse_stage(String course_stage) {
		this.course_stage = course_stage;
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
	public String getSearch_string() {
		return search_string;
	}
	public void setSearch_string(String search_string) {
		this.search_string = search_string;
	}
}
