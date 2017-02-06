package com.themobilestore.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.themobilestore.dao.ProductDao;
import com.themobilestore.model.Product;

@Service
public class ProductServiceImpl implements ProductService
{
    @Autowired
	private ProductDao productDao;
	
	public Product saveProduct(Product product)
	  {
      return productDao.saveProduct(product);
      }
	
}
	

