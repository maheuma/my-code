package com.niit.springshop.dao;

import java.util.List;

import com.niit.springshop.model.Buy;





public interface BuyDAO {
	
	public List<Buy> list(String loggedInUser);

	public Buy get(int id);

	public void saveOrUpdate(Buy buy);

	public void delete(int id);
	
}

