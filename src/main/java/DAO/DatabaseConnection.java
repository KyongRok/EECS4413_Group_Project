package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
	public DatabaseConnection() {
		
	}
	public Connection getConnection() throws SQLException {
		
		try {
			Class.forName("org.sqlite.JDBC");
		} catch (ClassNotFoundException ex) {
		}
		 return DriverManager.getConnection("jdbc:sqlite:C:\\Users\\kyong\\git\\EECS4413_Group_Project\\src\\main\\webapp\\database.db");
	}

	public void closeConnection(Connection connection) {
		if (connection == null)
			return;
		try {
			connection.close();
		} catch (SQLException ex) {
		}
	}
}
