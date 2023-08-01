package DAO;

import model.User_info;

public interface UserDAO {
	public void insertNewUser(int id, String fn, String ln, String email, String password);
	public void deleteUser(int id);
	public User_info get_userInfo(int user_id);
}
