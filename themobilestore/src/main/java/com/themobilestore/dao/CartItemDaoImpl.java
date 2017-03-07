package com.themobilestore.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.themobilestore.model.CartItem;

@Repository
public class CartItemDaoImpl implements CartItemDao
{
    @Autowired
	private SessionFactory sessionFactory;
	
	public void addCartItem(CartItem cartItem)
	{
		Session session = sessionFactory.openSession();
		session.saveOrUpdate(cartItem);
		session.flush();
		session.close();

	}

}
