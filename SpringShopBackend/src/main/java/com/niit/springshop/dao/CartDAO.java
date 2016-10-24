package com.niit.springshop.dao;

import java.util.List;

import com.niit.springshop.model.Cart;

public interface CartDAO {
	public List<Cart> list(String loggedInUser);
	public Cart get(int id);
	public void saveOrUpdate(Cart cart);
	public void delete(int id);
	public Long getTotalAmount(String loggedInUser);
	

}
