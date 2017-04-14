package com.themobilestore.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.themobilestore.dao.ShippingDao;
import com.themobilestore.model.ShippingAddress;

@Repository
@Transactional
public class ShippingDaoImpl implements ShippingDao {
	
	public ShippingDaoImpl()
	{
		System.out.println("CREATING INSTANCE FOR SHIPPINGDAOIMPL");
	}
  
	@Autowired
	private SessionFactory sessionFactory;
	
	public List<ShippingAddress> getShipping() {
		Session session=sessionFactory.openSession();
		Query query = session.createQuery("from ShippingAddress");
		List<ShippingAddress> shipping=query.list();
		session.close();
		return shipping;
	}

	public ShippingAddress saveOrUpdate(ShippingAddress shipping) {
		System.out.println(shipping.getShippingAddressId());
		Session session=sessionFactory.openSession();
		session.saveOrUpdate(shipping);
		session.flush();
		session.close();
		System.out.println(shipping.getShippingAddressId());
		return shipping;
	}

}
