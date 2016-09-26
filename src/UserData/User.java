package UserData;

public class User {
	String username = "";
	String password = "";
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public boolean isValidUser(){
		boolean validUser = false;
		if(username.equalsIgnoreCase("Dave") && password.equals("dave")){
			validUser = true;
		}
		return validUser;
	}
}
