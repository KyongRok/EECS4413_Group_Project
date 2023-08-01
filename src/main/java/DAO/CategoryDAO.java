package DAO;

import java.util.List;

import model.Category;

public interface CategoryDAO {
	public List<Category> getAllCategories();
	public List<Category> searchByCategorieskeyword(String target);
	public Category searchByCategoriesId(int cate_id);
	public Category searchByCategoriesName(String name);
	public List<Category> searchByMultipleCategoriesName(String[] categories);
	public List<Category> serachByMultipleCategoriesId(int[] category_ids);
	public void insertNewCategory(String categoryName);
}
