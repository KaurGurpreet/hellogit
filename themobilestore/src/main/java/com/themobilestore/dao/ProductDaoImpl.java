package com.themobilestore.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.themobilestore.model.Product;

@Repository
public class ProductDaoImpl implements ProductDao {
  @Autowired
  private SessionFactory sessionFactory;
	
  public ProductDaoImpl()
    {
		System.out.println("CREATING INSTANCE FOR PRODUCTDAOIMPL");
	}
  
  public Product saveProduct(Product product)
  {
		System.out.println(product.getPid());
		Session session=sessionFactory.openSession();
		session.save(product);
		session.flush();
		session.close();
		System.out.println(product.getPid());
		return product;
	}

}
