package com.themobilestore.dao;

import java.util.List;

import com.themobilestore.model.BillingAddress;

public interface BillingDao
{

	List<BillingAddress> getBilling();
	public BillingAddress saveOrUpdate (BillingAddress billing);
	
}
