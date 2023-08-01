package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

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
	public void insertNewUser(int id, String fn, String ln, String email, String password) {
		Connection con = null;
	       
        try {
            con = getConnection();
            PreparedStatement stm = con.prepareStatement("insert into user_info (user_id,first_name,last_name,"
            		+ "email,password) values (?,?,?,?,?)",
            		Statement.RETURN_GENERATED_KEYS);
            stm.setInt(1, id);
            stm.setString(2, fn);
            stm.setString(3,ln);
            stm.setString(4,email);
            stm.setString(5,password);
            stm.executeQuery();
           
        } catch (Exception e) {
            e.printStackTrace();
        }
        closeConnection(con);
		
	}

	@Override
	public void deleteUser(int id) {
		// TODO Auto-generated method stub
		Connection con = null;
		try {
			con = getConnection();
			PreparedStatement stm = con.prepareStatement("delete from user_info where id = ?");
			stm.setInt(1, id);
			stm.execute();
		}catch(Exception e) {
			e.printStackTrace();
		}
		closeConnection(con);
	}

	@Override
	public User_info get_userInfo(int user_id) {
		Connection con = null;
		User_info u = new User_info();
		String sql = "select * from user_info where user_id = " + user_id;
		try {
			con = getConnection();
			PreparedStatement stm = con.prepareStatement(sql);
			ResultSet rs = stm.executeQuery();
			while(rs.next()) {
				u.setFirst_name(rs.getString("first_name"));
				u.setLast_name(rs.getString("last_name"));
				u.setUser_id(rs.getInt(user_id));
				u.setEmail(rs.getString("email"));
				u.setPassword(rs.getString("password"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		closeConnection(con);
		return u;
	}
}
