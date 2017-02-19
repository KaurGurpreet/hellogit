package com.themobilestore.service;

import java.util.List;

import com.themobilestore.model.Product;

public interface ProductService
{
	Product saveProduct(Product product);
	List<Product> getAllProducts();
	/*Product getProductById(int id);*/
	Product getProductById(int id);
	void deleteProduct(int id);
	void updateProduct(Product product);
}
