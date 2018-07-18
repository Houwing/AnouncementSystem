package top.houwing.bean;

public class StudentInfo {
	String StudentNumber;
	String Name;
	String Password;
	public StudentInfo(String studentNumber, String name, String password) {
		StudentNumber = studentNumber;
		Name = name;
		Password = password;
	}
	public String getStudentNumber() {
		return StudentNumber;
	}
	public void setStudentNumber(String studentNumber) {
		StudentNumber = studentNumber;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	
}
