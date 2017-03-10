package com.themobilestore.dao;

import com.themobilestore.model.Cart;
import com.themobilestore.model.CartItem;

public interface CartItemDao
{
	void addCartItem(CartItem cartItem);
	CartItem getCartItem(int cartItemId);
	void removeCartItem(CartItem cartItem);
	void removeAllCartItems(Cart cart);
}

