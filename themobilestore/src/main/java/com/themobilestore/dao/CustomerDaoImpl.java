package com.themobilestore.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.themobilestore.model.Authority;
import com.themobilestore.model.BillingAddress;
import com.themobilestore.model.Customer;
import com.themobilestore.model.ShippingAddress;
import com.themobilestore.model.Users;

@Repository
@Transactional
public class CustomerDaoImpl implements CustomerDao
{
    
	@Autowired
	private SessionFactory sessionFactory;
	
	public CustomerDaoImpl()
    {
		System.out.println("CREATING INSTANCE FOR CUSTOMERDAOIMPL");
	}
	
	public Customer saveCustomer(Customer customer) 
	{
		
		Users users = new Users();
		users.setUserid(customer.getId());
		users.setUsername(customer.getUsername());
		users.setPassword(customer.getPassword());
		users.setEnabled(true);
		
		Authority authority = new Authority();
		authority.setUsername(customer.getUsername());
		authority.setRole("Role_USER");
		
		//customer.getAuthority().setRole("ROLE_USER");
	   /*customer.getAuthority().setUsername(users.getUsername());*/
		
	   //customer.getUsers().setEnabled(true);
	   //customer.getAuthority().setRole("ROLE_USER");
		Session session=sessionFactory.openSession();
		System.out.println(customer.getId());
		session.save(customer);
		session.saveOrUpdate(users);
		session.saveOrUpdate(authority);
		session.flush();
		session.close();
		System.out.println(customer.getId());
		return customer;
	}

	
}
