package com.themobilestore.service;

import java.util.List;

import com.themobilestore.model.Supplier;

public interface SupplierService
{
	public List<Supplier> list();
	public Supplier get(String id);
	public void saveOrUpdate(Supplier supplier);

}
