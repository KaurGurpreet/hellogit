package com.themobilestore.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.themobilestore.model.Users;

@Repository
@Transactional
public class UsersDaoImpl implements UsersDao
{

	public UsersDaoImpl()
	{
		System.out.println("CREATING INSTANCE FOR USERSDAOIMPL");
	}
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public List<Users> getUsers()
	{
		Session session=sessionFactory.openSession();
		Query query = session.createQuery("from Users");
		List<Users> users=query.list();
		session.close();
		return users;
	}

	public Users saveOrUpdate(Users users) {
		System.out.println(users.getUserid());
		Session session=sessionFactory.openSession();
		session.saveOrUpdate(users);
		session.flush();
		session.close();
		System.out.println(users.getUserid());
		return users;
	}

}
