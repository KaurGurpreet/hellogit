package com.themobilestore.service;

import com.themobilestore.model.Customer;

public interface CustomerService
{
	void saveCustomer(Customer customer);
	Customer getCustomerByUsername(String username);
}
