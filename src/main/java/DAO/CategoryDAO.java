package DAO;

import java.util.List;

import model.Category;

public interface CategoryDAO {
	public List<Category> getAllCategories();
	public List<Category> searchByCategories(String target);
	public void insertNewCategory(String categoryName);
}
