package com.themobilestore.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.themobilestore.dao.AuthorityDao;
import com.themobilestore.model.Authority;


@Service
public class AuthorityServiceImpl implements AuthorityService
{
	@Autowired
	private AuthorityDao authorityDao;
	 
	public void saveOrUpdate(Authority authority) {
	   authorityDao.saveOrUpdate(authority);	


	}

}
