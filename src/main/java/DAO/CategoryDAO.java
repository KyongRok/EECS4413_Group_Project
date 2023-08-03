package DAO;

import java.util.List;

import model.Category;
import model.Item;

public interface CategoryDAO {
	public List<Item> getAllCategories();
	public List<Item> searchByCategorieskeyword(String target);
	public List<Item> searchByCategoryNameAndGender(String category,String gender);
	public List<Item> searchByBrandAndGender(String brand, String gender);
	public List<Item> sortPriceHighToLow(List<Item> items);
	public List<Item> sortPriceLowToHigh(List<Item> items);
	public List<Item> sortAlpAToZ(List<Item> items);
	public List<Item> sortAlpZToA(List<Item> items);
}
