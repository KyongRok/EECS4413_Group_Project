package DAO;

import model.User_info;

public interface UserDAO {
	public void insertNewUser();
	public void deleteUser();
	public User_info get_userInfo(int user_id);
}
