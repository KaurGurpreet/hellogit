package com.themobilestore.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.themobilestore.dao.SupplierDao;
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
		
		/*public Supplier get(int id)
		{
			String hql = "from Supplier where sid=?";
			Query query = sessionFactory.openSession().createQuery(hql);
			query.setInteger(0, id);
			@SuppressWarnings("unchecked")
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
		
		/*public void delete(int id) {
			Supplier SupplierToDelete = new Supplier();
			SupplierToDelete.setSid(id);
			sessionFactory.openSession().delete(SupplierToDelete);
			
		}*/
		
		/*public Supplier getByName(String name) {
			String hql="from Supplier where supname=?";
			Query query=sessionFactory.openSession().createQuery(hql);
			query.setString(0, name);
			
			@SuppressWarnings("unchecked")
			List<Supplier> listSupplier=(List<Supplier>) query.list();
			if(listSupplier!=null && !listSupplier.isEmpty()){
				
				return listSupplier.get(0);
			}
			else{
				
				return null;
			}
			
		}*/

}
