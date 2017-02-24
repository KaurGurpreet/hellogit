/*package com.themobilestore.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.themobilestore.dao.BillingDao;
import com.themobilestore.model.BillingAddress;

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
*/