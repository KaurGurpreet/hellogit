package com.themobilestore.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.themobilestore.dao.CustomerOrderDao;
import com.themobilestore.model.Cart;
import com.themobilestore.service.CustomerOrderService;

@Service
public class CustomerOrderServiceImpl implements CustomerOrderService {

	@Autowired
	private CustomerOrderDao customerOrderDao;
		
	public void addCustomerOrder(Cart cart) 
	{
		customerOrderDao.addCustomerOrder(cart);

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
