package com.themobilestore.dao;

import com.themobilestore.model.Cart;

public interface CustomerOrderDao {
	
	public void addCustomerOrder(Cart cart);
	
	public double getCustomerOrderGrandTotal(int cartId);

}
