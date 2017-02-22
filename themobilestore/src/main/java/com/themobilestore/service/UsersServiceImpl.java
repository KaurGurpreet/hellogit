package com.themobilestore.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.themobilestore.dao.UsersDao;
import com.themobilestore.model.Users;

@Service
public class UsersServiceImpl implements UsersService
{
    @Autowired
	private UsersDao usersDao;
	
	public void saveOrUpdate(Users users)
	{
		
		usersDao.saveOrUpdate(users);	

	}

	public List<Users> getUsers()
	{
		return usersDao.getUsers();
	}

}
