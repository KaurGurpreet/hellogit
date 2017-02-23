package com.themobilestore.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.themobilestore.model.Authority;
import com.themobilestore.model.Customer;
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
		//Users newUsers = customer.getUsers();
		users.setUsername(customer.getFirstname());
		users.setPassword(customer.getFirstname());
		users.setEnabled(true);
		
		
		Authority authority = new Authority();
		authority.setUsername(customer.getFirstname());
		authority.setRole("ROLE_USER");
		sessionFactory.getCurrentSession().saveOrUpdate(users);;
		sessionFactory.getCurrentSession().saveOrUpdate(authority);
		
		
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
	
	/*public void addUser(Users user) {
		            System.out.println(user.getBillingAddress().getCity());
		              BillingAddress billingAddress = user.getBillingAddress();
		              ShippingAddress shippingAddress = user.getShippingAddress();
		              user.setBillingAddress(billingAddress);
		              user.setShippingAddress(shippingAddress);
		                  sessionFactory.getCurrentSession().saveOrUpdate(billingAddress);
		                  sessionFactory.getCurrentSession().saveOrUpdate(shippingAddress);
		                  //sessionFactory.getCurrentSession().saveOrUpdate(user);
		                  System.out.println("inside daoimpl"+user.getUserid());
		                  UserLogin newUser = new UserLogin();
		                  newUser.setUsersId(user.getUserid());
		                  newUser.setUsername(user.getUserloginname());
		                  newUser.setPassword(user.getUserloginpassword());
		                  newUser.setEnabled(true);
		                  newUser.setCustomerId(user.getUserid());
		                  
		                  Authority authority = new Authority();
		                  authority.setUsername(newUser.getUsername());
		                  authority.setAuthority("ROLE_USER");
		                  
		                  sessionFactory.getCurrentSession().saveOrUpdate(newUser);
		                  sessionFactory.getCurrentSession().saveOrUpdate(authority);*/
	
	
}
