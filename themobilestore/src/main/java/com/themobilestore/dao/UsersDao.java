package com.themobilestore.dao;

import java.util.List;

import com.themobilestore.model.Users;

public interface UsersDao
{

	/*List<Users> getUsers();*/
	public Users saveOrUpdate(Users users);
	
}
