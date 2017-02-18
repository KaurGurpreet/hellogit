package com.themobilestore.dao;

import java.util.List;

import com.themobilestore.model.Category;

public interface CategoryDao
{
	public Category saveOrUpdate(Category category);
	
	List<Category> getCategories();
}
