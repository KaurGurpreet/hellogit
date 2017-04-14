package com.themobilestore.dao.impl;

import java.io.IOException;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.themobilestore.dao.CartDao;
import com.themobilestore.model.Cart;
import com.themobilestore.service.CustomerOrderService;

@Repository
@Transactional
public class CartDaoImpl implements CartDao{

	@Autowired
	private SessionFactory sessionFactory;
	
	@Autowired
	private CustomerOrderService customerOrderService;
	
	public Cart getCart(int cartId)
	{
		System.out.println("Cart id in CartDaoImpl "+cartId);
		Session session=sessionFactory.openSession();
		Cart cart=(Cart)session.get(Cart.class, cartId);
		session.close();
		return cart;
	}
	
	public void update(Cart cart) {
		int cartId = cart.getCartId();
		double grandTotal = customerOrderService.getCustomerOrderGrandTotal(cartId);
		cart.setGrandTotal(grandTotal);
		
		Session session = sessionFactory.openSession();
		session.saveOrUpdate(cart);
		session.flush();
		session.close();	
	}

	public Cart validate(int cartId) throws IOException
	{
	Cart cart = getCart(cartId);
	if(cart == null || cart.getCartItems().size()== 0)
	{
		throw new IOException(cartId + "");
	}
	    update(cart);
		return cart;
	}

	

}
