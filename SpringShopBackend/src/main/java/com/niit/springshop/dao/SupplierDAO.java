package com.niit.springshop.dao;

import java.util.List;

import com.niit.springshop.model.Supplier;

public interface SupplierDAO {
	
		
		public List <Supplier>list();
		public Supplier get(int id);
		public void saveOrUpdate (Supplier supplier);
		public void delete (int id);
		public Supplier getByName(String name);

}
