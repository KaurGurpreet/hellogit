package com.themobilestore.service;

import java.io.IOException;

import com.themobilestore.model.Cart;

public interface CartService
{
Cart getCart(int cart_id);
public void update(Cart cart);
Cart validate(int cartId) throws IOException;
}
