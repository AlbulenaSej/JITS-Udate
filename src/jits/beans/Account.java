package jits.beans;

public class Account {
	
	String userid;
	String password;
	String active;
	String admin;
	String username;
	String email;
	
// Klasse Account ist keine Bean
	
	public Account( String username, String email, String userid) {
		super();
		
		
		this.username = username;
		this.email = email;
	}
	
	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
}
