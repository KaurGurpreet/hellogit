package com.themobilestore.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.themobilestore.dao.ProductDao;
import com.themobilestore.model.Product;

@Repository
@Transactional
public class ProductDaoImpl implements ProductDao {
	
  @Autowired
  private SessionFactory sessionFactory;
	
  public ProductDaoImpl()
    {
		System.out.println("CREATING INSTANCE FOR PRODUCTDAOIMPL");
	}
  
  public Product getProductById(int pid)
  {
  	Session session=sessionFactory.openSession();
  	//select * from product where pid=34
  	Product product=(Product)session.get(Product.class, pid);
  	session.close();
  	return product;

  }
  
  public Product saveProduct(Product product)
  {
		System.out.println(product.getPid());
		Session session=sessionFactory.openSession();
		session.saveOrUpdate(product);
		session.flush();
		session.close();
		System.out.println(product.getPid());
		return product;
	}
  
  /*public void saveProduct(Product product)
  {
		System.out.println(product.getPid());
		Session session=sessionFactory.openSession();
		session.saveOrUpdate(product);
		session.flush();
		session.close();
		System.out.println(product.getPid());
	
	}*/
  
  public List<Product> getAllProducts()
  {
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Product");
		List<Product> products=query.list();
		session.close();
		return products;
	}



public void deleteProduct(int pid) {
	Session session=sessionFactory.openSession();
	//Make the object persistent[read the data from the table and add it to session]
	Product product=(Product)session.get(Product.class, pid);
	session.delete(product);
	session.flush();
	session.close();
	
}

    /*public void updateProduct(Product product) {
	Session session=sessionFactory.openSession();
	System.out.println("Id of the product in dao is " + product.getPid());
	session.saveOrUpdate(product);
	session.flush();
	session.close();
	
}*/

    public void updateProduct(Product product){
    System.out.println("Id of the product in dao update method is " + product.getPid());
    Session session = sessionFactory.openSession();
    System.out.println("Id of the product in dao after opensession () of update method is " + product.getPid());
    session.update(product);
    //session.flush();
    session.close();
    System.out.println("Id of the product in dao end of update method is " + product.getPid());
}

}