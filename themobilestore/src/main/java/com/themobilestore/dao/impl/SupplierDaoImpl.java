package com.themobilestore.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.themobilestore.dao.SupplierDao;
import com.themobilestore.model.Category;
import com.themobilestore.model.Supplier;

@Repository
@Transactional
public class SupplierDaoImpl implements SupplierDao
{
	@Autowired
	private SessionFactory sessionFactory;
	
	public SupplierDaoImpl()
	{
		System.out.println("CREATING INSTANCE FOR SUPPLIERDAOIMPL");
	}
		
		/*public SupplierDaoImpl(SessionFactory sessionFactory) {

			this.sessionFactory = sessionFactory;

		}*/
				
		
		public List<Supplier> getSuppliers()
		{
			/*@SuppressWarnings("unchecked")
			List<Supplier> listSupplier  = (List<Supplier>) sessionFactory.openSession().createQuery("from Supplier").list();
			return listSupplier;*/
			
			Session session=sessionFactory.openSession();
			Query query=session.createQuery("from Supplier");
			@SuppressWarnings("unchecked")
			List<Supplier> suppliers=query.list();
			session.close();
			return suppliers;
	    }
		
		
		public Supplier saveOrUpdate(Supplier supplier)
		{
			System.out.println(supplier.getSid());
			Session session=sessionFactory.openSession();
			session.saveOrUpdate(supplier);
			session.flush();
			session.close();
			System.out.println(supplier.getSid());
			return supplier;	
		}

		public void delete(int id) {
			Session session=sessionFactory.openSession();
			//Make the object persistent[read the data from the table and add it to session]
			Supplier supplier = (Supplier)session.get(Supplier.class,id);
			session.delete(supplier);
			session.flush();
			session.close();
			
		}

		public Supplier get(int id) {
			Session session=sessionFactory.openSession();
			Supplier supplier=(Supplier)session.get(Supplier.class, id);
		  	session.close();
		  	return supplier;
		}

		public Supplier editSupplier(Supplier supplier) {
			System.out.println("Id of the supplier in dao is " + supplier.getSid());
			Session session=sessionFactory.openSession();
			
			session.update(supplier);//update(product);
			session.flush();
			session.close();
			return supplier;
		}
		

}
