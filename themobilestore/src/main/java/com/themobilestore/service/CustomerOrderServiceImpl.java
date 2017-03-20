package com.themobilestore.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.themobilestore.dao.CustomerOrderDao;
import com.themobilestore.model.Cart;
import com.themobilestore.model.CartItem;
import com.themobilestore.model.CustomerOrder;

@Service
public class CustomerOrderServiceImpl implements CustomerOrderService {

	@Autowired
	private CustomerOrderDao customerOrderDao;
	
	@Autowired
	private CartService cartService;
	
	public void addCustomerOrder(CustomerOrder customerOrder) 
	{
		customerOrderDao.addCustomerOrder(customerOrder);

	}

	public double getCustomerOrderGrandTotal(int cartId) {
		double grandTotal=0;
		Cart cart=cartService.getCart(cartId);
		List<CartItem> cartItems=cart.getCartItems();
		
		for(CartItem item:cartItems){
			grandTotal+=item.getTotalPrice();
		}
		return grandTotal;
	}

}
