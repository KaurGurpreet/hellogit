package com.themobilestore.service;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.themobilestore.dao.ProductDao;
import com.themobilestore.model.Product;

@Service
public class ProductServiceImpl implements ProductService
{
    @Autowired
	private ProductDao productDao;
    
    public ProductServiceImpl()
    {
		System.out.println("CREATING INSTANCE FOR PRODUCTSERVICEIMPL");
	}
	
	public Product saveProduct(Product product)
	  {
      return productDao.saveProduct(product);
      }

	public List<Product> getAllProducts()
	{
		return productDao.getAllProducts();
	}

	/*public Product getProductById(int id) 
	{
		return productDao.getProductById(id);
		
	}*/
	
	public Product getProductById(int id) {
		return productDao.getProductById(id);
	}

	public void deleteProduct(int id) {
		productDao.deleteProduct(id);
	}

	public void updateProduct(Product product) {
		productDao.updateProduct(product);
		
	}
	
}
	

