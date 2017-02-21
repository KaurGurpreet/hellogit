package com.themobilestore.dao;

import java.util.List;

import com.themobilestore.model.Customer;


public interface CustomerDao
{
	Customer saveCustomer(Customer customer);
	List<Customer> getAllCustomer();
}
