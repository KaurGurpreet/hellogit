package com.themobilestore.dao;

import java.util.List;

import com.themobilestore.model.Supplier;

public interface SupplierDao
{

public List<Supplier> list();
public Supplier get(String id);
public void saveOrUpdate(Supplier supplier);
	
}
