package com.themobilestore.dao;

import com.themobilestore.model.Customer;

public interface CustomerDao
{
	void saveCustomer(Customer customer);
	Customer getCustomerByUsername(String username);
}
