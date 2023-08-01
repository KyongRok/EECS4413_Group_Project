package model;

public class User_info {
	private int user_id;
	private String first_name;
	private String last_name;
	private String email;
	private String password;
	
	public User_info() {
		
	}
	
	public void setUser_id(int id) {
		this.user_id = id;
	}
	
	public void setFirst_name(String fn) {
		this.first_name = fn;
	}
	
	public void setLast_name(String ln) {
		this.last_name = ln;
	}
	
	public int getUserId() {
		return this.user_id;
	}
	
	public String getFirstName() {
		return this.first_name;
	}
	
	public String getLastName() {
		return this.last_name;
	}
	
	public String getEmail() {
		return this.email;
	}
	
	public String getPassword() {
		return this.password;
	}
}
