package kr.co.lms.admin.VO;

public class AdminMainHomeVO {
	
	
	//�ȸ� ���� �Ǹ� ����
	private String  employee_name;
	private int 	payment_num;
	
	//�ȸ� ���� ����
	private String  course_name;
	private int 	course_num;
	
	
	//��ü �л� ��
	private String totalStudent;
	//��ü ���� ��
	private String totalTeacher;
	//�� �Ǹž�
	private String totalPrice;
	//��ü ���� ��
	private String totalCourse;
	
	
	public String getEmployee_name() {
		return employee_name;
	}
	public void setEmployee_name(String employee_name) {
		this.employee_name = employee_name;
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
	public String getTotalStudent() {
		return totalStudent;
	}
	public void setTotalStudent(String totalStudent) {
		this.totalStudent = totalStudent;
	}
	public String getTotalTeacher() {
		return totalTeacher;
	}
	public void setTotalTeacher(String totalTeacher) {
		this.totalTeacher = totalTeacher;
	}
	public String getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(String totalPrice) {
		this.totalPrice = totalPrice;
	}
	public String getTotalCourse() {
		return totalCourse;
	}
	public void setTotalCourse(String totalCourse) {
		this.totalCourse = totalCourse;
	}
	
	
	
	
	
	
	
	
}
