package kr.co.lms.admin.VO;

import org.springframework.web.multipart.MultipartFile;

public class StudentInfoVO {
	private int student_no; 
	private String student_id;
	private String student_pw;
	
	private String student_email;
	private String student_email_id;
	private String student_email_domain;
	
	private String student_img;
	private MultipartFile img_file;
	private String student_name_ko;
	private String student_name_eng;
	private String student_gender;
	
	private String student_tel_phone;
	private String student_tel1;
	private String student_tel2;
	
	private String student_tel_house;
	private String student_house1;
	private String student_house2;
	private String student_house3;
	
	private String student_tel_parent;
	private String parent_phone1;
	private String parent_phone2;
	
	private String student_parent_state;
	private int student_addr_no;
	private String student_addr_main;
	private String student_addr_sub;
	private String student_motive;
	private String student_interest;
	private String student_memo;
	private String student_regi_date;
	private String student_lately_course;
	
	private String student_birthday;
	private String student_birthday_year;
	private String student_birthday_month;
	private String student_birthday_day;
	
	private String student_parent_email;
	private String parent_email_id;
	private String parent_email_domain;
	
	private String student_parent_name;
	
	public int getStudent_no() {
		return student_no;
	}
	public void setStudent_no(int student_no) {
		this.student_no = student_no;
	}
	public String getStudent_id() {
		return student_id;
	}
	public void setStudent_id(String student_id) {
		this.student_id = student_id;
	}
	public String getStudent_pw() {
		return student_pw;
	}
	public void setStudent_pw(String student_pw) {
		this.student_pw = student_pw;
	}
	
	public String getStudent_email() {
		return student_email_id+"@"+student_email_domain;
	}
	public void setStudent_email(String student_email) {
		this.student_email = student_email;
		
		String str[] = student_email.split("@");
		student_email_id = str[0];
		student_email_domain = str[1];	
	}
	public String getStudent_email_id() {
		return student_email_id;
	}
	public void setStudent_email_id(String student_email_id) {
		this.student_email_id = student_email_id;
	}
	public String getStudent_email_domain() {
		return student_email_domain;
	}
	public void setStudent_email_domain(String student_email_domain) {
		this.student_email_domain = student_email_domain;
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
	
	public String getStudent_tel_phone() {
		return "010"+"-"+student_tel1+"-"+student_tel2;
	}
	public void setStudent_tel_phone(String student_tel_phone) {
		this.student_tel_phone = student_tel_phone;
		String tel[]= student_tel_phone.split("-");
		student_tel1=tel[1];
		student_tel2=tel[2];
	}
	public String getStudent_tel1() {
		return student_tel1;
	}
	public void setStudent_tel1(String student_tel1) {
		this.student_tel1 = student_tel1;
	}
	public String getStudent_tel2() {
		return student_tel2;
	}
	public void setStudent_tel2(String student_tel2) {
		this.student_tel2 = student_tel2;
	}
	
	
	public String getStudent_tel_house() {
		return student_house1+"-"+student_house2+"-"+student_house3;
	}
	public void setStudent_tel_house(String student_tel_house) {
		this.student_tel_house = student_tel_house;
		String student_house_tel[]=student_tel_house.split("-");
		student_house1=student_house_tel[0];
		student_house2=student_house_tel[1];
		student_house3=student_house_tel[2];
	}
	public String getStudent_house1() {
		return student_house1;
	}
	public void setStudent_house1(String student_house1) {
		this.student_house1 = student_house1;
	}
	public String getStudent_house2() {
		return student_house2;
	}
	public void setStudent_house2(String student_house2) {
		this.student_house2 = student_house2;
	}
	public String getStudent_house3() {
		return student_house3;
	}
	public void setStudent_house3(String student_house3) {
		this.student_house3 = student_house3;
	}
	
	
	public String getStudent_tel_parent() {
		return "010"+"-"+parent_phone1+"-"+parent_phone2;
	}
	public void setStudent_tel_parent(String student_tel_parent) {
		this.student_tel_parent = student_tel_parent;
		String parent_phone[] = student_tel_parent.split("-");
		parent_phone1=parent_phone[1];
		parent_phone2=parent_phone[2];
	}
	public String getParent_phone1() {
		return parent_phone1;
	}
	public void setParent_phone1(String parent_phone1) {
		this.parent_phone1 = parent_phone1;
	}
	public String getParent_phone2() {
		return parent_phone2;
	}
	public void setParent_phone2(String parent_phone2) {
		this.parent_phone2 = parent_phone2;
	}
	
	
	public String getStudent_parent_state() {
		return student_parent_state;
	}
	public void setStudent_parent_state(String student_parent_state) {
		this.student_parent_state = student_parent_state;
	}
	public int getStudent_addr_no() {
		return student_addr_no;
	}
	public void setStudent_addr_no(int student_addr_no) {
		this.student_addr_no = student_addr_no;
	}
	public String getStudent_addr_main() {
		return student_addr_main;
	}
	public void setStudent_addr_main(String student_addr_main) {
		this.student_addr_main = student_addr_main;
	}
	public String getStudent_addr_sub() {
		return student_addr_sub;
	}
	public void setStudent_addr_sub(String student_addr_sub) {
		this.student_addr_sub = student_addr_sub;
	}
	public String getStudent_motive() {
		return student_motive;
	}
	public void setStudent_motive(String student_motive) {
		this.student_motive = student_motive;
	}
	public String getStudent_interest() {
		return student_interest;
	}
	public void setStudent_interest(String student_interest) {
		this.student_interest = student_interest;
	}
	public String getStudent_memo() {
		return student_memo;
	}
	public void setStudent_memo(String student_memo) {
		this.student_memo = student_memo;
	}
	public String getStudent_regi_date() {
		return student_regi_date;
	}
	public void setStudent_regi_date(String student_regi_date) {
		this.student_regi_date = student_regi_date;
	}
	public String getStudent_lately_course() {
		return student_lately_course;
	}
	public void setStudent_lately_course(String student_lately_course) {
		this.student_lately_course = student_lately_course;
	}
	
	public String getStudent_birthday() {
		return student_birthday_year+"-"+student_birthday_month+"-"+student_birthday_day;
	}
	public void setStudent_birthday(String student_birthday) {
		this.student_birthday = student_birthday;
		String student_birthday_info[]= student_birthday.split("-");
		student_birthday_year=student_birthday_info[0];
		student_birthday_month=student_birthday_info[1];
		student_birthday_day=student_birthday_info[2];
	}
	public String getStudent_birthday_year() {
		return student_birthday_year;
	}
	public void setStudent_birthday_year(String student_birthday_year) {
		this.student_birthday_year = student_birthday_year;
	}
	public String getStudent_birthday_month() {
		return student_birthday_month;
	}
	public void setStudent_birthday_month(String student_birthday_month) {
		this.student_birthday_month = student_birthday_month;
	}
	public String getStudent_birthday_day() {
		return student_birthday_day;
	}
	public void setStudent_birthday_day(String student_birthday_day) {
		this.student_birthday_day = student_birthday_day;
	}
	
	public String getStudent_parent_name() {
		return student_parent_name;
	}
	public void setStudent_parent_name(String student_parent_name) {
		this.student_parent_name = student_parent_name;
	}
	public String getStudent_gender() {
		return student_gender;
	}
	public void setStudent_gender(String student_gender) {
		this.student_gender = student_gender;
	}
	
	
	public String getStudent_parent_email() {
		return parent_email_id+"@"+parent_email_domain;
	}
	public void setStudent_parent_email(String student_parent_email) {
		this.student_parent_email = student_parent_email;
		String parent_email_info[] = student_parent_email.split("@");
		parent_email_id=parent_email_info[0];
		parent_email_domain=parent_email_info[1];
	}
	public String getParent_email_id() {
		return parent_email_id;
	}
	public void setParent_email_id(String parent_email_id) {
		this.parent_email_id = parent_email_id;
	}
	public String getParent_email_domain() {
		return parent_email_domain;
	}
	public void setParent_email_domain(String parent_email_domain) {
		this.parent_email_domain = parent_email_domain;
	}
	public MultipartFile getImg_file() {
		return img_file;
	}
	public void setImg_file(MultipartFile img_file) {
		this.img_file = img_file;
	}

	
	
	
}
