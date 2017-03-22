package com.themobilestore.service;

import java.util.List;

import com.themobilestore.model.Category;
import com.themobilestore.model.Supplier;

public interface CategoryService
{
	public Category saveOrUpdate(Category category);
	public Category get(int id);
	List<Category> getCategories();
	public void delete(int id);
	public Category getByName(String name);
}