/*package com.themobilestore.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.themobilestore.dao.ShippingDao;
import com.themobilestore.model.ShippingAddress;

@Service
public class ShippingServiceImpl implements ShippingService {

	@Autowired
	private ShippingDao shippingDao;

	public List<ShippingAddress> getShipping() {
		return shippingDao.getShipping();
	}

	public ShippingAddress saveOrUpdate(ShippingAddress shipping) {
		return shippingDao.saveOrUpdate(shipping);
	}

}
*/