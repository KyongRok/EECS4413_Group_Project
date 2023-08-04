package DAO;

import model.User_info;

public interface UserDAO {
	public void insertNewUser(String fn, String ln, String email, String password);
	public void deleteUser(int id);
	public User_info get_userInfo(String email, String password);
	public int user_login(String email,String password);
}
