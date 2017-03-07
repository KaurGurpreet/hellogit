package com.themobilestore.service;

import java.util.List;

import com.themobilestore.model.Customer;

public interface CustomerService
{
	Customer saveCustomer(Customer customer);
	 /* List<Customer> getAllCustomer();*/
	public Customer getCustomerByUsername(String username);
}
