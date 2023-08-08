package model;

public class Item {
	private int item_id;
	private String item_name;
	private String description;
	private int category_id;
	private String brand;
	private int quantity;
	private int price;
	private String picture;
	
	public Item() {
		
	}
	
	public int getItemId() {
		return this.item_id;
	}
	
	public String getItemName() {
		return this.item_name;
	}
	
	public String getDescription() {
		return this.description;
	}
	
	public int getCategoryId() {
		return this.category_id;
	}
	
	public String getBrand() {
		return this.brand;
	}
	
	public int getQuantity() {
		return this.quantity;
	}
	
	public int getPrice() {
		return this.price;
	}
	
	public String getPicture() {
		return this.picture;
	}
	
	public void setItemId(int id) {
		this.item_id = id;
	}
	
	public void setItemName(String name) {
		this.item_name = name;
	}
	
	public void setDescription(String des) {
		this.description = des;
	}
	
	public void setCategoryId(int id) {
		this.category_id = id;
	}
	
	public void setBrand(String brand) {
		this.brand = brand;
	}
	
	public void setPrice(int price) {
		this.price = price;
	}
	
	public void setPicture(String url) {
		this.picture = url;
	}
	
	public void setQuantity(int qty) {
		this.quantity = qty;
	}
	
}
