package com.themobilestore.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.themobilestore.dao.CustomerOrderDao;
import com.themobilestore.model.CustomerOrder;
import com.themobilestore.service.CustomerOrderService;

@Service
public class CustomerOrderServiceImpl implements CustomerOrderService {

	@Autowired
	private CustomerOrderDao customerOrderDao;
	
	/*@Autowired
	private CartService cartService;*/
		
	public void addCustomerOrder(CustomerOrder customerOrder) 
	{
		customerOrderDao.addCustomerOrder(customerOrder);

	}

	public double getCustomerOrderGrandTotal(int cartId) {
		return customerOrderDao.getCustomerOrderGrandTotal(cartId);
	}

	/*public double getCustomerOrderGrandTotal(int cartId) {
		double grandTotal=0;
		Cart cart=cartService.getCart(cartId);
		List<CartItem> cartItems=cart.getCartItems();
		
		for(CartItem item:cartItems){
			grandTotal+=item.getTotalPrice();
		}
		return grandTotal;
	}*/
	

}
