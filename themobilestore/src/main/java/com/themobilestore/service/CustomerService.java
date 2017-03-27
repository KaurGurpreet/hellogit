package com.themobilestore.service;

import java.util.List;

import com.themobilestore.model.Customer;

public interface CustomerService
{
	void saveCustomer(Customer customer);
	Customer getCustomerByUsername(String username);
	List<Customer> getAllCustomers();
	Customer getCustomerById(int id);

}
