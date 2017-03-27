package com.themobilestore.service;

import java.util.List;

import com.themobilestore.model.Category;
import com.themobilestore.model.Supplier;

public interface CategoryService
{
	public Category saveOrUpdate(Category category);
	List<Category> getCategories();
	public Category get(int id);
	public void delete(int cid);
	public Category getByName(String name);
}