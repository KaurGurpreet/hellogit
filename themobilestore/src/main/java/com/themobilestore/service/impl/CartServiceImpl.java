package com.themobilestore.service.impl;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.themobilestore.dao.CartDao;
import com.themobilestore.model.Cart;
import com.themobilestore.service.CartService;

@Service
public class CartServiceImpl implements CartService {

@Autowired
private CartDao cartDao;
	
	public Cart getCart(int cartId) {
		return cartDao.getCart(cartId);
	}

	public void update(Cart cart) {
		cartDao.update(cart);
	}

	/*public Cart validate(int cartId) throws IOException {
		return cartDao.validate(cartId);
	}*/

}
