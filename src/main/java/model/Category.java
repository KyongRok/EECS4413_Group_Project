package model;

public class Category {
    private int categoryID;
    private String categoryName;

    public Category() {
        
    }

    public int getCategoryID() {
        return categoryID;
    }

    public String getCategoryName() {
        return categoryName;
    }
    
    public void setCategoryID(int id) {
    	this.categoryID = id;
    }
    
    public void setCategoryName(String name) {
    	this.categoryName = name;
    }
}
