package com.themobilestore.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.themobilestore.dao.CategoryDao;
import com.themobilestore.model.Category;

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

	public void saveOrUpdate(Category category)
	{
		categoryDao.saveOrUpdate(category);
		
	}
	
	
}
