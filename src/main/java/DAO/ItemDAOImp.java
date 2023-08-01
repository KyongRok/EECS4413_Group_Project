package DAO;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import model.Item;

public class ItemDAOImp implements ItemDAO {
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
	public List<Item> ShowAllItem() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Item> SearchByKeyWord(String target) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void InsertItem(int id, String name, String description, int cate_id, String brand, int quantity, int pice,
			String url) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void DeleteItem(int id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Item> SearchByCategoryId(int cate_id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Item> SearchByCategoryName(String cate_id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Item> SearchByMultipleCategoriesName(String[] categories) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Item> SearchByMultipleCategoriesId(int[] category_ids) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	
}
