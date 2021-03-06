package com.themobilestore.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.themobilestore.dao.SupplierDao;
import com.themobilestore.model.Supplier;
import com.themobilestore.service.SupplierService;

@Service
public class SupplierServiceImpl implements SupplierService
{
	@Autowired
	SupplierDao sdo;
	
	public List<Supplier> getSuppliers()
	{
		return sdo.getSuppliers();
	}

	public Supplier saveOrUpdate(Supplier supplier)
	{
		return sdo.saveOrUpdate(supplier);
		
	}

	public Supplier get(int id) {
		return sdo.get(id);
	}


	public void delete(int id)
	{
		sdo.delete(id);
		
	}

	public Supplier editSupplier(Supplier supplier) {
		return sdo.editSupplier(supplier);
	}
}
