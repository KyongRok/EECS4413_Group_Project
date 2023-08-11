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
	    if (already_in_cart_flag == 1) {
	        int updatedQty = items.get(index_of_item).getQuantity() + 1;
	        int itemPrice = items.get(index_of_item).getPrice();
	        
	        items.get(index_of_item).setQuantity(updatedQty);
	        total_price += itemPrice;  // Add the price for the new quantity
	    } else {
	        this.items.add(added);
	        total_price += added.getPrice();  // Add the price of the added item
	    }
		
	}
	
	public void removeFromCart(Item item) {
	    for (int i = 0; i < items.size(); i++) {
	        if (items.get(i).getItemId() == item.getItemId()) {
	            int removedQty = items.get(i).getQuantity();
	            int itemPrice = items.get(i).getPrice();
	            
	            total_price -= removedQty * itemPrice;  // Deduct the removed item's price

	            items.remove(i);
	            break;  // Once removed, exit the loop
	        }
	    }
	}
	
	public void updateCart(Item item, int qty) {
	    for (int i = 0; i < items.size(); i++) {
	        if (items.get(i).getItemId() == item.getItemId()) {
	            int oldQty = items.get(i).getQuantity();
	            int itemPrice = items.get(i).getPrice();

	            total_price -= oldQty * itemPrice;  // Deduct the old quantity's price
	            total_price += qty * itemPrice;     // Add the new quantity's price

	            items.get(i).setQuantity(qty);
	            
	            // If quantity becomes 0, remove the item from the cart
	            if (qty == 0) {
	                items.remove(i);
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


