package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import model.Category;
import model.Item;
import model.sale;

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
	public List<Item> getAllCategories() {
		//lists all categories item
		init();
        List<Item> items = new ArrayList<>();
        String sql = "select * from item "
        		+ "inner join category on item.category_id = category.category_id";
        try {
            PreparedStatement stmt = con.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
            	Item item = new Item();
            	item.setItemId(rs.getInt("item_id"));
                item.setItemName(rs.getString("item_name"));
                item.setDescription(rs.getString("description"));
                item.setCategoryId(rs.getInt("category_id"));
                item.setBrand(rs.getString("brand"));
          
                item.setPicture(rs.getString("picture"));
                item.setPrice(rs.getInt("price"));
                items.add(item);
            	
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        connection.closeConnection(con);
        return items;
    }
	
	@Override
	public List<Item> searchByCategorieskeyword(String target) {
		//searches items by target string
		init();
		List<Item> items = new ArrayList<>();
     
        String sql = "select * from item inner join category "
        		+ "on item.category_id = category.category_id "
        		+ "where category_name like '%" + target.trim() +"%'"
        		+ " or item_name like '%" + target.trim() + "%'"
        		+ " or brand like '%" + target.trim() + "%'"
        		+ " or gender like '%" + target.trim() + "%'"
        		+ " or description like '%" + target.trim() + "%'"
        		+ " or parts like '%" + target.trim() + "%'";
       
        try {
        	PreparedStatement statement =  con.prepareStatement(sql);
			ResultSet rs =  statement.executeQuery();
            while (rs.next()) {
            	Item item = new Item();
            	item.setItemId(rs.getInt("item_id"));
                item.setItemName(rs.getString("item_name"));
                item.setDescription(rs.getString("description"));
                item.setCategoryId(rs.getInt("category_id"));
                item.setBrand(rs.getString("brand"));
               
                item.setPicture(rs.getString("picture"));
                item.setPrice(rs.getInt("price"));
                items.add(item);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        connection.closeConnection(con);
        return items;
	}
	

	@Override
	public List<Item> searchByCategoryNameAndGender(String categoryname, String gender) {
		init();
		List<Item> items = new ArrayList<>();
        try {
            PreparedStatement stmt = con.prepareStatement("select * from item inner join category "
            		+ "on item.category_id = category.category_id"
            		+ " where category_name=? and gender=?");
            stmt.setString(1, categoryname);
            stmt.setString(2, gender);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
            	Item item = new Item();
            	item.setItemId(rs.getInt("item_id"));
                item.setItemName(rs.getString("item_name"));
                item.setDescription(rs.getString("description"));
                item.setCategoryId(rs.getInt("category_id"));
                item.setBrand(rs.getString("brand"));
                
                item.setPicture(rs.getString("picture"));
                item.setPrice(rs.getInt("price"));
                items.add(item);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        connection.closeConnection(con);
        return items;
	}

	@Override
	public List<Item> searchByBrandAndGender(String brand, String gender) {
		init();
		List<Item> items = new ArrayList<>();
        try {
            PreparedStatement stmt = con.prepareStatement("select * from item inner join category "
            		+ "on item.category_id = category.category_id"
            		+ " where brand=? and gender=?");
            stmt.setString(1, brand);
            stmt.setString(2, gender);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
            	Item item = new Item();
            	item.setItemId(rs.getInt("item_id"));
                item.setItemName(rs.getString("item_name"));
                item.setDescription(rs.getString("description"));
                item.setCategoryId(rs.getInt("category_id"));
                item.setBrand(rs.getString("brand"));
               
                item.setPicture(rs.getString("picture"));
                item.setPrice(rs.getInt("price"));
                items.add(item);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        connection.closeConnection(con);
        return items;
	}

	@Override
	public List<Item> sortPriceHighToLow(List<Item> items) {
		Collections.sort(items, new Comparator<Item>()
		{
			public int compare(Item first, Item second) {
				if(first.getPrice() >= second.getPrice()) {
					return -1;
				}else {
					return 1;
				}
			}
		});
		return items;
	}

	@Override
	public List<Item> sortPriceLowToHigh(List<Item> items) {
		
		Collections.sort(items, new Comparator<Item>()
				{
			
					public int compare(Item first, Item second) {
						if(first.getPrice() >= second.getPrice()) {
							return 1;
						}else {
							return -1;
						}
					}
				});
		return items;
	}

	@Override
	public List<Item> sortAlpAToZ(List<Item> items) {
		
		Collections.sort(items, new Comparator<Item>()
		{
			public int compare(Item first, Item second) {
				if((first.getItemName().toLowerCase()).compareTo(second.getItemName().toLowerCase()) >= 0) {
					return 1;
				}else {
					return -1;
				}
			}
		});
		return items;
	}

	@Override
	public List<Item> sortAlpZToA(List<Item> items) {
		Collections.sort(items, new Comparator<Item>()
		{
			
			public int compare(Item first, Item second) {
				if((first.getItemName().toLowerCase()).compareTo(second.getItemName().toLowerCase()) >= 0) {
					return -1;
				}else {
					return 1;
				}
			}
		});
		return items;
	}
	@Override
	public List<Item> getItemsByBrand(String brand) {
	    init();
	    List<Item> items = new ArrayList<>();
	    String sql = "SELECT * FROM item INNER JOIN category ON item.category_id = category.category_id WHERE brand = ?";
	    try {
	        PreparedStatement stmt = con.prepareStatement(sql);
	        stmt.setString(1, brand);
	        ResultSet rs = stmt.executeQuery();
	        while (rs.next()) {
	            Item item = new Item();
	            item.setItemId(rs.getInt("item_id"));
	            item.setItemName(rs.getString("item_name"));
	            item.setDescription(rs.getString("description"));
	            item.setCategoryId(rs.getInt("category_id"));
	            item.setBrand(rs.getString("brand"));
	          
	            item.setPicture(rs.getString("picture"));
	            item.setPrice(rs.getInt("price"));
	            items.add(item);
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    connection.closeConnection(con);
	    return items;
	}
	
	@Override
	public Item getItemById(int id) {
		init();
		
		Item item = new Item();
		String sql = "SELECT * FROM item WHERE item_id = ?";
	    try {
	        PreparedStatement stmt = con.prepareStatement(sql);
	        stmt.setInt(1, id);
	        ResultSet rs = stmt.executeQuery();
	        while (rs.next()) {
	            
	            item.setItemId(rs.getInt("item_id"));
	            item.setItemName(rs.getString("item_name"));
	            item.setDescription(rs.getString("description"));
	            item.setCategoryId(rs.getInt("category_id"));
	            item.setBrand(rs.getString("brand"));
	           
	            item.setPicture(rs.getString("picture"));
	            item.setPrice(rs.getInt("price"));
	            
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    connection.closeConnection(con);
	    return item;
	}
	@Override
	public List<sale> getsales(){
		 init();
		    List<sale> items = new ArrayList<>();
		    String sql = "SELECT * FROM sales";
		    try {
		        PreparedStatement stmt = con.prepareStatement(sql);
		        ResultSet rs = stmt.executeQuery();
		        while (rs.next()) {
		            sale s = new sale();
		           s.setId(rs.getInt("item_id"));
		           s.setQty(rs.getInt("sale_qty"));
		           s.setName(rs.getString("item_name"));
		            items.add(s);
		        }
		    } catch (Exception e) {
		        e.printStackTrace();
		    }
		    connection.closeConnection(con);
		    return items;
	}
	@Override
	public void insertIntoSales(List<Item> item) {
		init();
		  
		for(int i =0; i< item.size(); i++) {
			int qty = item.get(i).getQuantity();
			int id = item.get(i).getItemId();
			 String sql = "UPDATE SALES "
			 		+ "SET sale_qty = sale_qty + " + qty + " where item_id = " + id;
		try {
			 PreparedStatement stmt = con.prepareStatement(sql);
			  stmt.execute();	  
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
		}
	    connection.closeConnection(con);	
		
	}
	
}
