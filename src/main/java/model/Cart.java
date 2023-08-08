package model;

import java.util.ArrayList;
import java.util.List;

public class Cart {
	private List<Item> items;
	
	private int total_price;
	
	public Cart() {
		items = new ArrayList<>();
	}
	
	public void addToCart(Item item,int qty) {
	
		Item added = new Item();
		added.setItemId(item.getItemId());
		added.setItemName(item.getItemName());
		added.setBrand(item.getBrand());
		added.setCategoryId(item.getCategoryId());
		added.setDescription(item.getDescription());
		added.setPicture(item.getPicture());
		added.setPrice(item.getPrice());
		added.setQuantity(qty);
		
		this.items.add(item);
		this.total_price += item.getPrice();
	}
	
	public void removeFromCart(Item item) {
		for(int i = 0; i<items.size(); i++) {
			if(items.get(i).getItemId() == item.getItemId()) {
				items.remove(i);
			}
		}
	}
	
	public void updateCart(Item item, int qty) {
		for(int i =0; i < items.size(); i++) {
			if(items.get(i).getItemId() == item.getItemId()) {
				if(qty != 0) {
					total_price -= item.getQuantity()*item.getPrice();
					total_price += qty*item.getPrice();
					items.get(i).setQuantity(qty);
				}else {
					removeFromCart(item);
				}
				
			}
		}
	}
	
	public int get_total() {
		return this.total_price;
	}

}


