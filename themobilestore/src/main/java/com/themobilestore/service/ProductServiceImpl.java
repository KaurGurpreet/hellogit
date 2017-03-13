package com.themobilestore.service;

import java.util.List;

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
	
	public Product getProductById(int pid) {
		return productDao.getProductById(pid);
	}

	public void deleteProduct(int pid) {
		productDao.deleteProduct(pid);
	}

	public void updateProduct(Product product) {
		productDao.updateProduct(product);
		
	}
	
}
	

