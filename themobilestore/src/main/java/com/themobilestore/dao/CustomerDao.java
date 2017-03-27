package com.themobilestore.dao;

import java.util.List;

import com.themobilestore.model.Customer;

public interface CustomerDao
{
	void saveCustomer(Customer customer);
	Customer getCustomerByUsername(String username);
	
	Customer getCustomerById(int id);

    List<Customer> getAllCustomers();
}
