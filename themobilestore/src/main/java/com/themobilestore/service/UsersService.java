package com.themobilestore.service;

import java.util.List;

import com.themobilestore.model.Users;

public interface UsersService
{
public void saveOrUpdate(Users users);
	
	List<Users> getUsers();
}
