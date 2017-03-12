package com.themobilestore.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.themobilestore.dao.CustomerDao;
import com.themobilestore.model.Customer;

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

}
