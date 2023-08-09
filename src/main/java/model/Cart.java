package model;

import java.util.ArrayList;
import java.util.List;

public class Cart {
	private List<Item> items;
	
	private int total_price;
	
	public Cart() {
		items = new ArrayList<>();
	}
	
	public void addToCart(Item item) {
	//fix this
		Item added = new Item();
		added.setItemId(item.getItemId());
		added.setItemName(item.getItemName());
		added.setBrand(item.getBrand());
		added.setCategoryId(item.getCategoryId());
		added.setDescription(item.getDescription());
		added.setPicture(item.getPicture());
		added.setPrice(item.getPrice());
		added.setQuantity(1);
		//added.setQuantity(qty);
		int already_in_cart_flag = 0;
		int index_of_item=0;
		for(int i =0; i<items.size(); i++) {
			if(items.get(i).getItemId() == added.getItemId()) {
				already_in_cart_flag++;
				index_of_item = i;
			}
		}
		if(already_in_cart_flag == 1) {
			int updated_qty = items.get(index_of_item).getQuantity() + 1;
			items.get(index_of_item).setQuantity(updated_qty);
			this.total_price -= item.getPrice() * (updated_qty -1);
			this.total_price += item.getPrice() * updated_qty;
		}else {
			this.items.add(added);
			this.total_price += item.getPrice();
		}
		
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
	
	public int getTotal() {
		return this.total_price;
	}
	
	public List<Item> getCartItems(){
		return this.items;
	}

}


