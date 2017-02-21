package com.themobilestore.service;

import java.util.List;
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
   
	public Customer saveCustomer(Customer customer)
	{
		return customerDao.saveCustomer(customer);
	}

	public List<Customer> getAllCustomer()
	{
		
		return customerDao.getAllCustomer();
	}

}
