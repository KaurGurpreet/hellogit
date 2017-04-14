package com.themobilestore.dao;

import java.util.List;

import com.themobilestore.model.ShippingAddress;

public interface ShippingDao
{

	List<ShippingAddress> getShipping();
	public ShippingAddress saveOrUpdate (ShippingAddress shipping);
	
}
