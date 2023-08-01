package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import model.User_info;

public class UserDAOImp implements UserDAO {
	
	static {
		try {
			Class.forName("org.sqlite.JDBC");
		} catch (ClassNotFoundException ex) {
		}
	}

	private Connection getConnection() throws SQLException {
		
		 return DriverManager.getConnection("jdbc:sqlite:C:\\Users\\kyong\\git\\EECS4413_Group_Project\\src\\main\\webapp\\database.db");
	}

	private void closeConnection(Connection connection) {
		if (connection == null)
			return;
		try {
			connection.close();
		} catch (SQLException ex) {
		}
	}
	
	@Override
	public void insertNewUser() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteUser() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public User_info get_userInfo(int user_id) {
		// TODO Auto-generated method stub
		return null;
	}

}
