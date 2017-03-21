package com.themobilestore.dao;

import java.io.IOException;

import com.themobilestore.model.Cart;

public interface CartDao
{
Cart getCart(int cartId);
public void update(Cart cart);
Cart validate(int cartId) throws IOException;
}
