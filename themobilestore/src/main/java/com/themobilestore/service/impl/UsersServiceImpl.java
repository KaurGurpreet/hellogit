package com.themobilestore.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.themobilestore.dao.UsersDao;
import com.themobilestore.model.Users;
import com.themobilestore.service.UsersService;

@Service
public class UsersServiceImpl implements UsersService
{
    @Autowired
	private UsersDao usersDao;
	
	public void saveOrUpdate(Users users)
	{
		
		usersDao.saveOrUpdate(users);	

	}

	/*public List<Users> getUsers()
	{
		return usersDao.getUsers();
	}*/

}
