package com.themobilestore.service;

import java.util.List;

import com.themobilestore.model.Product;

public interface ProductService
{
	Product saveProduct(Product product);
	List<Product> getAllProducts();
}
