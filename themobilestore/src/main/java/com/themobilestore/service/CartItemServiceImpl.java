package com.themobilestore.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.themobilestore.dao.CartItemDao;
import com.themobilestore.model.CartItem;

@Service
public class CartItemServiceImpl implements CartItemService

{
    @Autowired
    private CartItemDao cartItemDao;
    
	public void addCartItem(CartItem cartItem)
	{
		cartItemDao.addCartItem(cartItem);

	}

}
