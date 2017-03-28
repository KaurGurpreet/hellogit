package com.themobilestore.service;

import java.util.List;

import com.themobilestore.model.Product;

public interface ProductService
{
	Product saveProduct(Product product);
	/*void saveProduct(Product product);*/
	List<Product> getAllProducts();
	Product getProductById(int pid);
	void deleteProduct(int pid);
	Product editProduct(Product product);
}
