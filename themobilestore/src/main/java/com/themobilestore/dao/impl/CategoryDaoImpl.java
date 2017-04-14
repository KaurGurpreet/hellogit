package com.themobilestore.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.themobilestore.dao.CategoryDao;
import com.themobilestore.model.Category;

@Repository
@Transactional
public class CategoryDaoImpl implements CategoryDao
{
	public CategoryDaoImpl()
	{
		System.out.println("CREATING INSTANCE FOR CATEGORYDAOIMPL");
	}
	
	@Autowired
	private SessionFactory sessionFactory;
	
	/*public CategoryDaoImpl(SessionFactory sessionFactory) {

		this.sessionFactory = sessionFactory;

	}*/

	public List<Category> getCategories() {
		Session session=sessionFactory.openSession();
		Query query = session.createQuery("from Category");
		@SuppressWarnings("unchecked")
		List<Category> categories=query.list();
		session.close();
		return categories;
	}

	public Category saveOrUpdate(Category category)
	{
		System.out.println(category.getCid());
		Session session=sessionFactory.openSession();
		session.saveOrUpdate(category);
		session.flush();
		session.close();
		System.out.println(category.getCid());
		return category;
		
	}	
	
	public void delete(int cid) {
		Session session=sessionFactory.openSession();
		//Make the object persistent[read the data from the table and add it to session]
		Category category = (Category)session.get(Category.class, cid);
		session.delete(category);
		session.flush();
		session.close();
	}

}