package model;

public class sale {
	private int id;
	private int qty;
	private String name;
	
	public sale() {
		
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public void setQty(int qty) {
		this.qty = qty;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public int getId() {
		return this.id;
	}
	
	public int getQty() {
		return this.qty;
	}
	
	public String getName() {
		return this.name;
	}
}
