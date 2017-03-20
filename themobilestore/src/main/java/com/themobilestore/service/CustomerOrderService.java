package com.themobilestore.service;

import com.themobilestore.model.CustomerOrder;

public interface CustomerOrderService
{
	public void addCustomerOrder(CustomerOrder customerOrder);
	
	double getCustomerOrderGrandTotal(int cartId);
}
