package com.themobilestore.service.impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.themobilestore.dao.BillingDao;
import com.themobilestore.model.BillingAddress;
import com.themobilestore.service.BillingService;

@Service
public class BillingServiceImpl implements BillingService
{
	@Autowired
	private BillingDao billingDao;

	public List<BillingAddress> getBilling() 
	{
		return billingDao.getBilling();
	}

	public BillingAddress saveOrUpdate(BillingAddress billing) {
		return billingDao.saveOrUpdate(billing);	
	}

}
