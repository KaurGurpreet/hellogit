package com.themobilestore.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.themobilestore.dao.CategoryDao;
import com.themobilestore.model.Category;
import com.themobilestore.service.CategoryService;

@Service
public class CategoryServiceImpl implements CategoryService
{
	
	@Autowired
	private CategoryDao categoryDao;

	public List<Category> getCategories()
	{
		
		return categoryDao.getCategories();
	}


	/*public Supplier get(String id)
	{
		return sdo.get(id);
	}*/

	public Category saveOrUpdate(Category category)
	{
		return categoryDao.saveOrUpdate(category);
		
	}
	
	
}
