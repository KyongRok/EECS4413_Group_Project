package DAO;

import java.util.List;

import model.Item;

public interface ItemDAO {
	public List<Item> ShowAllItem();
	public List<Item> SearchByCategory(int cate_id);
	public List<Item> SearchByKeyWord(String target);
	public void InsertItem(int id,String name, String description, int cate_id,String brand, int quantity, int pice, String url);
	public void DeleteItem(int id);
}
