package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.Category;

public class CategoryDAOImp implements CategoryDAO {
    
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
	public List<Category> getAllCategories() {
		//lists all categories
        List<Category> categories = new ArrayList<>();
        Connection con = null;
        String sql = "select * from category";
        try {
            con = getConnection();
            PreparedStatement stmt = con.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
            	Category category = new Category();
                category.setCategoryID(rs.getInt("category_id"));
                category.setCategoryName(rs.getString("category_name"));
                categories.add(category);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        closeConnection(con);
        return categories;
    }
	
	@Override
	public List<Category> searchByCategories(String target) {
		//searches category by target string
		List<Category> categories = new ArrayList<>();
        Connection con = null;
        String sql = "select * from category where category_name like '%" + target.trim() + "%'";
        try {
            con = getConnection();
            PreparedStatement stmt = con.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
            	Category category = new Category();
                category.setCategoryID(rs.getInt("category_id"));
                category.setCategoryName(rs.getString("category_name"));
                categories.add(category);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        closeConnection(con);
        return categories;
	}
	
	@Override
	public void insertNewCategory(String categoryName) {
		//for admin use
		Connection con = null;
       
    
        try {
            con = getConnection();
            PreparedStatement stm = con.prepareStatement("insert into category (category_name) values (?)",
            		Statement.RETURN_GENERATED_KEYS);
            stm.setString(1, categoryName);
            ResultSet rs = stm.executeQuery();
            ResultSet generatedKeys = stm.getGeneratedKeys();
			if (generatedKeys.next()) {
				
			}
        } catch (Exception e) {
            e.printStackTrace();
        }
        closeConnection(con);
	}

}
