package com.themobilestore.service;

import com.themobilestore.model.Cart;

public interface CustomerOrderService
{
	public void addCustomerOrder(Cart cart);
	
	public double getCustomerOrderGrandTotal(int cartId);
}
