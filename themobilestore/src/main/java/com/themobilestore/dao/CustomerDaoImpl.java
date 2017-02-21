package com.themobilestore.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.themobilestore.model.Customer;

@Repository
public class CustomerDaoImpl implements CustomerDao {
    
	@Autowired
	private SessionFactory sessionFactory;
	public CustomerDaoImpl()
    {
		System.out.println("CREATING INSTANCE FOR CUSTOMERDAOIMPL");
	}
	
	public Customer saveCustomer(Customer customer) {
		System.out.println(customer.getId());
		Session session=sessionFactory.openSession();
		session.save(customer);
		session.flush();
		session.close();
		System.out.println(customer.getId());
		return customer;
	}

	public List<Customer> getAllCustomer()
	{
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Customer");
		List<Customer> customers=query.list();
		session.close();
		return customers;
	}
}
