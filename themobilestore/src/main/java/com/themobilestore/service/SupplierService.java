package com.themobilestore.service;

import java.util.List;

import com.themobilestore.model.Supplier;

public interface SupplierService
{
	public List<Supplier> getSuppliers();
	/*public Supplier get(String id);*/
	public Supplier saveOrUpdate(Supplier supplier);

}
