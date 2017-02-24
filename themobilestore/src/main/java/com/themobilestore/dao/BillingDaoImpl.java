/*package com.themobilestore.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.themobilestore.model.BillingAddress;


@Repository
@Transactional
public class BillingDaoImpl implements BillingDao
{

	public BillingDaoImpl()
	{
		System.out.println("CREATING INSTANCE FOR BILLINGDAOIMPL");
	}
	
	@Autowired
	private SessionFactory sessionFactory;

	public List<BillingAddress> getBilling()
	{
		Session session=sessionFactory.openSession();
		Query query = session.createQuery("from BillingAddress");
		List<BillingAddress> billing=query.list();
		session.close();
		return billing;	
	}

	public BillingAddress saveOrUpdate(BillingAddress billing)
	{
		System.out.println(billing.getBid());
		Session session=sessionFactory.openSession();
		session.saveOrUpdate(billing);
		session.flush();
		session.close();
		System.out.println(billing.getBid());
		return billing;
	}
	
	
	
}
*/