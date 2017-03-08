package com.themobilestore.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.themobilestore.dao.CartDao;
import com.themobilestore.model.Cart;

@Service
public class CartServiceImpl implements CartService {

@Autowired
private CartDao cartDao;
	
	public Cart getCart(int cart_id) {
		return cartDao.getCart(cart_id);
	}

}
