package com.themobilestore.service;

import java.util.List;

import com.themobilestore.model.ShippingAddress;


public interface ShippingService
{

	List<ShippingAddress> getShipping();
	public ShippingAddress saveOrUpdate (ShippingAddress shipping);
	
}
