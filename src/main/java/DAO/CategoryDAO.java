package DAO;

import java.util.List;

import model.Category;

public interface CategoryDAO {
	public List<Category> getAllCategories();
	public List<Category> searchByCategorieskeyword(String target);
	public Category searchByCategories(int cate_id);
	public void insertNewCategory(String categoryName);
}
