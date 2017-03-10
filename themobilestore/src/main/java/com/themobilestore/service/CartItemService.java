package com.themobilestore.service;

import com.themobilestore.model.Cart;
import com.themobilestore.model.CartItem;

public interface CartItemService 
{
void addCartItem(CartItem cartItem);
CartItem getCartItem(int cartItemId);
void removeCartItem(CartItem cartItem);
void removeAllCartItems(Cart cart);
}
