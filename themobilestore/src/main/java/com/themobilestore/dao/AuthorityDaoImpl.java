package com.themobilestore.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.themobilestore.model.Authority;

@Repository
@Transactional
public class AuthorityDaoImpl implements AuthorityDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	public Authority saveOrUpdate(Authority authority) {
		Session session=sessionFactory.openSession();
		session.saveOrUpdate(authority);
		session.flush();
		session.close();
		System.out.println(authority.getAuthorityId());
		return authority;
	}

}
