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
    Connection con;
    DatabaseConnection connection;
	public void init() {
		connection = new DatabaseConnection();
		try {
			this.con = connection.getConnection();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Override
	public List<Category> getAllCategories() {
		//lists all categories
		init();
        List<Category> categories = new ArrayList<>();
        String sql = "select * from category";
        try {
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
        connection.closeConnection(con);
        return categories;
    }
	
	@Override
	public List<Category> searchByCategorieskeyword(String target) {
		//searches category by target string
		init();
		List<Category> categories = new ArrayList<>();
       
        String sql = "select * from category where category_name like '%" + target.trim() + "%'";
        try {
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
        connection.closeConnection(con);
        return categories;
	}
	
	@Override
	public void insertNewCategory(String categoryName) {
		//for admin use
		init();
        try {
            PreparedStatement stm = con.prepareStatement("insert into category (category_name) values (?)",
            		Statement.RETURN_GENERATED_KEYS);
            stm.setString(1, categoryName);
            stm.executeQuery();
//            ResultSet generatedKeys = stm.getGeneratedKeys();
//			if (generatedKeys.next()) {
//				
//			}
        } catch (Exception e) {
            e.printStackTrace();
        }
       connection.closeConnection(con);
	}

	@Override
	public Category searchByCategoriesId(int cate_id) {
		//searches items with categoryid of cate_id
		init();
        String sql = "select * from category where category_id = '" + cate_id +"'";
        Category category = new Category();
        try {
            
            PreparedStatement stmt = con.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
            	
                category.setCategoryID(rs.getInt("category_id"));
                category.setCategoryName(rs.getString("category_name"));
                
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        connection.closeConnection(con);
        return category;
	}

	@Override
	public Category searchByCategoriesName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Category> searchByMultipleCategoriesName(String[] categories) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Category> serachByMultipleCategoriesId(int[] category_ids) {
		// TODO Auto-generated method stub
		return null;
	}


}
