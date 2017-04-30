package com.themobilestore.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.themobilestore.dao.CartDao;
import com.themobilestore.dao.CustomerOrderDao;
import com.themobilestore.model.Cart;
import com.themobilestore.model.CartItem;
import com.themobilestore.model.CustomerOrder;
import com.themobilestore.service.CartService;


@Repository
@Transactional
public class CustomerOrderDaoImpl implements CustomerOrderDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Autowired
	private CartDao cartDao;
		
	/*public void addCustomerOrder(Cart cart) {
        
		System.out.println(cart.getId());
		
		Session session = sessionFactory.openSession();
		session.saveOrUpdate(cart);
		session.flush();
		session.close();
		}*/
		

	public void addCustomerOrder(CustomerOrder customerOrder) {
		System.out.println(customerOrder.getOrderId());
		Session session = sessionFactory.openSession();
        session.saveOrUpdate(customerOrder);
        session.flush();
        session.close();
		}
	
	public double getCustomerOrderGrandTotal(int cartId)
	{
		double grandTotal=0;
		
		Cart cart = cartDao.getCart(cartId);
		List<CartItem> cartItems = cart.getCartItems();
		
		for(CartItem item:cartItems )
		{
			grandTotal += item.getTotalPrice();
		}
		return grandTotal;
	}
}
		
		
		
		
		


      /*CustomerOrder customerOrder=new CustomerOrder();
		customerOrder.setCart(cart);
		customerOrder.setCustomer(cart.getCustomer());
		customerOrder.setBillingAddress(cart.getCustomer().getBillingAddress());
		customerOrder.setShippingAddress(cart.getCustomer().getShippingAddress());
		//Insert the data in CustomerOrder table
		Session session=sessionFactory.openSession();
		session.saveOrUpdate(customerOrder);
		session.flush();
		session.close();
		
		//To update grandtotal in Cart table
		List<CartItem> cartItems=cart.getCartItems();
		double grandTotal=0.0;
		for(CartItem cartItem:cartItems){
			grandTotal=grandTotal + cartItem.getTotalPrice();
		}
		cart.setGrandTotal(grandTotal);
		//update cart set grandtotal=? where cartid=?
		session.update(cart);
		session.flush();
		session.close();
	}

	public double getCustomerOrderGrandTotal(int cartId)
	{
		double grandTotal=0;
		Cart cart=cartService.getCart(cartId);
		List<CartItem> cartItems=cart.getCartItems();
		
		for(CartItem item:cartItems){
			grandTotal+=item.getTotalPrice();
		}
		
		cart.setGrandTotal(grandTotal);
		//update cart set grandtotal=? where cartid=?
		Session session=sessionFactory.openSession();
		session.saveOrUpdate(cart);
		session.flush();
		session.close();
		return grandTotal;
		
	}
	}*/


	


