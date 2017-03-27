package com.themobilestore.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.themobilestore.dao.CustomerDao;
import com.themobilestore.model.Customer;
import com.themobilestore.service.CustomerService;

@Service
public class CustomerServiceImpl implements CustomerService 
{
   @Autowired
   private CustomerDao customerDao;
	
   public CustomerServiceImpl()
   {
		System.out.println("CREATING INSTANCE FOR CUSTOMERSERVICEIMPL");
	}
   
	public void saveCustomer(Customer customer)
	{
		 customerDao.saveCustomer(customer);
	}
	
	public Customer getCustomerByUsername(String username)
	{
		return customerDao.getCustomerByUsername(username);
	}

	public List<Customer> getAllCustomers() {
		
		return customerDao.getAllCustomers();
	}

	public Customer getCustomerById(int id) {
		return customerDao.getCustomerById(id);
	}

}
