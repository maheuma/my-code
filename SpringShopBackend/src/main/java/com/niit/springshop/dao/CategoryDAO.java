package com.niit.springshop.dao;

import java.util.List;

import com.niit.springshop.model.Category;

public interface CategoryDAO {

	
	public List <Category>list();
	public Category get(int id);
	public void saveOrUpdate (Category category);
	public void delete (int id);
	public Category getByName(String name);
	
	
	
}
