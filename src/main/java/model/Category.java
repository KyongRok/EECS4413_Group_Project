package model;

public class Category {
    private int categoryID;
    private String categoryName;
    private String gender;
    private String parts;
    public Category() {
        
    }

    public int getCategoryID() {
        return categoryID;
    }

    public String getCategoryName() {
        return categoryName;
    }
    
    public String getParts() {
    	return this.parts;
    }
    
    public String getGender() {
    	return this.gender;
    }
    
    public void setGender(String gender) {
    	this.gender = gender;
    }
    
    public void setParts(String parts) {
    	this.parts = parts;
    }
    
    public void setCategoryID(int id) {
    	this.categoryID = id;
    }
    
    public void setCategoryName(String name) {
    	this.categoryName = name;
    }
}
