package com.themobilestore.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.themobilestore.model.Cart;

@Repository
public class CartDaoImpl implements CartDao{

	@Autowired
	private SessionFactory sessionFactory;
	
	public Cart getCart(int cart_id)
	{
		Session session= sessionFactory.openSession();
		Cart cart=(Cart)session.get(Cart.class, cart_id);
		session.close();
		return cart;
	}

}
