package com.themobilestore.dao;

import java.util.List;
import com.themobilestore.model.Supplier;

public interface SupplierDao
{

public List<Supplier> getSuppliers();
/*public Supplier get(String id);*/
public Supplier saveOrUpdate(Supplier supplier);

public void delete(int id);

public Supplier get(int id);

Supplier editSupplier(Supplier supplier);

/*public Supplier getByName(String name);*/
	
}
