package com.themobilestore.service;

import java.util.List;

import com.themobilestore.model.Supplier;

public interface SupplierService
{
	public List<Supplier> getSuppliers();
	
	public Supplier get(int id);
	
	public Supplier saveOrUpdate(Supplier supplier);
	
	public void delete(int id);
	
	public Supplier getByName(String name);
}
