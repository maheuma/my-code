package com.niit.springshop.dao;

import java.util.List;

import com.niit.springshop.model.Product;

public interface ProductDAO {
	
	
	
		
		public List <Product>list();
		public Product get(int id);
		public void saveOrUpdate (Product product);
		public void delete (int id);
		
		public List<Product> getByCategory(int id);
		public List <Product> getByProduct(int id);

}
