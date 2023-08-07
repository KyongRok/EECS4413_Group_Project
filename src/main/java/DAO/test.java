package DAO;

import java.util.ArrayList;
import java.util.List;

import model.Item;

public class test {
	public static void main(String[] args){

		CategoryDAO d = new CategoryDAOImp();
				List<Item> items = new ArrayList<>();
		items = d.getAllCategories();
		UserDAO u = new UserDAOImp();
		items = d.sortAlpAToZ(items);
		//u.insertNewUser("admin", "admin", "admin@gmail.com", "1234");
		for(int i = 0; i < items.size(); i++) {
			System.out.println(items.get(i).getItemName());
		}
		//u.insertNewUser(1, "admin", "admin", "admin@gmail.com", "1234");
		//u.deleteUser(1);
			
	}
}
