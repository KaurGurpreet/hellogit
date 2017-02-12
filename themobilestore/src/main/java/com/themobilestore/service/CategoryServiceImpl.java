package com.themobilestore.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.themobilestore.dao.CategoryDao;
import com.themobilestore.model.Category;

public class CategoryServiceImpl implements CategoryService {
	
	@Autowired
	private CategoryDao categoryDao;

	public List<Category> getCategories()
	{
		
		return categoryDao.getCategories();
	}

}
