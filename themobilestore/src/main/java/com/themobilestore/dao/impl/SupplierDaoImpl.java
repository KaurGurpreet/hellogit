package com.themobilestore.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.themobilestore.dao.SupplierDao;
import com.themobilestore.model.Product;
import com.themobilestore.model.Supplier;

@Repository
@Transactional
public class SupplierDaoImpl implements SupplierDao
{
	public SupplierDaoImpl()
	{
		System.out.println("CREATING INSTANCE FOR SUPPLIERDAOIMPL");
	}
		
		@Autowired
		private SessionFactory sessionFactory;
		
		/*public SupplierDaoImpl(SessionFactory sessionFactory)
		{

			this.sessionFactory = sessionFactory;

		}*/
		
		@SuppressWarnings("unchecked")
		public List<Supplier> getSuppliers()
		{
			/*@SuppressWarnings("unchecked")
			List<Supplier> listSupplier  = (List<Supplier>) sessionFactory.openSession().createQuery("from Supplier").list();
			return listSupplier;*/
			
			Session session=sessionFactory.openSession();
			Query query=session.createQuery("from Supplier");
			List<Supplier> suppliers=query.list();
			session.close();
			return suppliers;
	    }
		
		/*public Supplier get(String id)
		{
			String hql = "from Supplier where sid=?";
			Query query = sessionFactory.openSession().createQuery(hql);
			query.setString(0, id);
			
			List<Supplier> listSupplier = (List<Supplier>) query.list();
			if (listSupplier != null && !listSupplier.isEmpty()) {
				return listSupplier.get(0);
			}
			else
			{
				return null;			
			}

		}*/
		
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

}
