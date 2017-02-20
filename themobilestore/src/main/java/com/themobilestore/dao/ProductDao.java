package com.themobilestore.dao;

import java.util.List;

import com.themobilestore.model.Product;

public interface ProductDao 
{
  
  Product saveProduct(Product product);
  List<Product> getAllProducts();
  /*Product getProductById(int pid);*/
  Product getProductById(int pid);
  void deleteProduct(int pid);
  void updateProduct(Product product);
	
}
