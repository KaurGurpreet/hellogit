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

	/*public Supplier get(int id)
	{
		return sdo.get(id);
	}*/

	public Supplier saveOrUpdate(Supplier supplier)
	{
		return sdo.saveOrUpdate(supplier);
		
	}

	/*public void delete(int id) {
		sdo.delete(id);
		
	}

	public Supplier getByName(String name) {
		return sdo.getByName(name);
	}*/

}
