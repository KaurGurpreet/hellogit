package com.themobilestore.service;

import java.util.List;

import com.themobilestore.model.Category;

public interface CategoryService
{
	public Category saveOrUpdate(Category category);
	List<Category> getCategories();
	/*public Category get(int id);
	public Category getByName(String name);*/
	public void delete(int cid);
}