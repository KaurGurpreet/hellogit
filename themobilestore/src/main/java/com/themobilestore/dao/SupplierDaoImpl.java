package com.themobilestore.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

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
		
		public SupplierDaoImpl(SessionFactory sessionFactory)
		{

			this.sessionFactory = sessionFactory;

		}
		public List<Supplier> list()
		{
			@SuppressWarnings("unchecked")
			List<Supplier> listSupplier  = (List<Supplier>) sessionFactory.getCurrentSession().createQuery("from Supplier").list();
			return listSupplier;
	    }
		
		public Supplier get(String id)
		{
			String hql = "from Supplier where sid=?";
			Query query = sessionFactory.getCurrentSession().createQuery(hql);
			query.setString(0, id);
			
			List<Supplier> listSupplier = (List<Supplier>) query.list();
			if (listSupplier != null && !listSupplier.isEmpty()) {
				return listSupplier.get(0);
			}
			else
			{
				return null;			
			}

		}
		
		public void saveOrUpdate(Supplier supplier)
		{
			sessionFactory.openSession().saveOrUpdate(supplier);
			
		}

}
