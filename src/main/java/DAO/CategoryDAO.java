package DAO;

import java.util.List;

import model.Category;
import model.Item;

public interface CategoryDAO {
	public List<Item> getAllCategories();
	public List<Item> searchByCategorieskeyword(String target);
	public List<Item> searchByCategoryNameAndGender(String category,String gender);
}
