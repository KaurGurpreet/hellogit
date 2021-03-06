package com.themobilestore.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.themobilestore.dao.CustomerDao;
import com.themobilestore.model.Authority;
import com.themobilestore.model.Cart;
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
	
	public void saveCustomer(Customer customer) 
	{	
		//Assignment
		String username=customer.getUsers().getUsername();
		String password = customer.getUsers().getPassword();
		String role="ROLE_USER";
		
		Authority authority = new Authority();
		//set the values
		authority.setUsername(username);
		authority.setRole(role);	
		
		Users users =new Users();
		users.setUsersId(customer.getCustId());
		users.setUsername(username);
		customer.getUsers();
		customer.setUsers(users);
		
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		customer.getUsers().setPassword(encoder.encode(password));
		customer.getUsers().setEnabled(true);
		
		Cart cart=new Cart();
		customer.setCart(cart);
		cart.setCustomer(customer);//update cart set customer_id=? , grandtotal=? where cart_id=?
		
		customer.getBillingAddress().setCustomer(customer);
        customer.getShippingAddress().setCustomer(customer);
        
        Session session=sessionFactory.openSession();
        session.saveOrUpdate(customer.getBillingAddress());
        session.saveOrUpdate(customer.getShippingAddress());
		System.out.println("Customer Id is "+customer.getCustId());
		session.saveOrUpdate(users);
		session.saveOrUpdate(authority);
		session.saveOrUpdate(cart);
		session.saveOrUpdate(customer);
		session.flush();
		session.close();
		/*System.out.println(customer.getId());*/
	}

	public Customer getCustomerByUsername(String username)
	{
		System.out.println("username from CustomerDaoImpl =" +username);
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Users where username=?");
		query.setString(0, username);
		Users users=(Users)query.uniqueResult();
		//com.themobilestore.model.Users 
		Customer customer=users.getCustomer();
		session.close();
		return customer;
		
	}

	public Customer getCustomerById(int id) {
	        Session session = sessionFactory.openSession();
	        Customer customer = (Customer)session.get(Customer.class, id);
	        session.close();
	        return customer;
	    }


	public List<Customer> getAllCustomers() {
		Session session = sessionFactory.openSession();
        Query query = session.createQuery("from Customer");
        List<Customer> customerList = query.list();

        return customerList;
	}
	
}
