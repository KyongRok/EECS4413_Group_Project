package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import model.User_info;

public class UserDAOImp implements UserDAO {
Connection con;
DatabaseConnection connection;
	public void init() {
		connection = new DatabaseConnection();
		try {
			this.con = connection.getConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	@Override
	public void insertNewUser(String fn, String ln, String email, String password) {
		init();
        try {
            
            PreparedStatement stm = con.prepareStatement("insert into user_info (user_id,first_name,last_name,"
            		+ "email,password) values (?,?,?,?,?)");
            stm.setString(2, fn);
            stm.setString(3,ln);
            stm.setString(4,email);
            stm.setString(5,password);
            stm.execute();
           
        } catch (Exception e) {
            e.printStackTrace();
        }
       connection.closeConnection(con);
		
	}

	@Override
	public void deleteUser(int id) {
		init();
		try {
			
			PreparedStatement stm = con.prepareStatement("delete from user_info where user_id = ?");
			stm.setInt(1, id);
			stm.execute();
		}catch(Exception e) {
			e.printStackTrace();
		}
		connection.closeConnection(con);
	}

	@Override
	public User_info get_userInfo(String email,String password) {
		init();
		User_info u = new User_info();
		
		try {
			
			PreparedStatement stm = con.prepareStatement ("select * from user_info where email = ? and password = ?");
			stm.setString(1, email);
			stm.setString(2 ,password);
			ResultSet rs = stm.executeQuery();
			while(rs.next()) {
				u.setFirst_name(rs.getString("first_name"));
				u.setLast_name(rs.getString("last_name"));
				u.setUser_id(rs.getInt("user_id"));
				u.setEmail(rs.getString("email"));
				u.setPassword(rs.getString("password"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		connection.closeConnection(con);
		return u;
	}

	@Override
	public int user_login(String email, String password) {
		init();
		int login_flag = 0;
		try {
			
			PreparedStatement stm = con.prepareStatement ("select * from user_info where email = ? and password = ?");
			stm.setString(1, email);
			stm.setString(2 ,password);
			ResultSet rs = stm.executeQuery();
			while(rs.next()) {
				login_flag++;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		connection.closeConnection(con);
		return login_flag;
	}
}
