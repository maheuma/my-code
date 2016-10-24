package com.niit.springshop.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.springshop.dao.CategoryDAO;
import com.niit.springshop.dao.SupplierDAO;
import com.niit.springshop.model.Category;
import com.niit.springshop.model.Product;
import com.niit.springshop.model.Supplier;
import com.niit.springshop.model.User;

@Controller
public class LoginController {
	@Autowired
	private CategoryDAO categoryDAO;
	@Autowired
	private SupplierDAO supplierDAO;
	@Autowired
	private Product product;
@RequestMapping("/")
public String gotoHome()
{
	return "Home";
}
@RequestMapping("/index")
public String gotoindex()
{
	return "index";
}

@RequestMapping("/Login")
public String gotoLogin()
{
	return "Login";
}


@RequestMapping("/Home")
public String gotoHome1()
{
	return "Home";
}


@RequestMapping("/Registration")
public String gotoRegistration(Map<String,Object>model)
{
 User user=new User();
 model.put("user",user);
	return "Registration";
}
@RequestMapping("/Admin")
public String gotoAdmin()
{
	return "Admin";
}

@RequestMapping("/Category")
public String gotoCategory()
{
	return "Category";
}
@RequestMapping("/Product")
public String gotoProduct()
{
	return "Product";
}
@RequestMapping("/Supplier")
public String gotoSupplier()
{
	return "Supplier";
}
@RequestMapping("/AddCategory")
public String gotoAddCategory(Map<String,Object>model)
{
 Category category=new Category();
 model.put("category",category);
	return "AddCategory";
}
@RequestMapping("/AddSupplier")
public String gotoAddSupplier(Map<String,Object>model)
{
 Supplier supplier=new Supplier();
 model.put("supplier",supplier);
	return "AddSupplier";
}
/*@RequestMapping("/AddProduct")
public String gotoAddProduct(Map<String,Object>model)
		//,Model mod)
{
 Product product=new Product();
 model.put("product",product);
// mod.addAttribute("categoryList",categoryDAO.list());
	return "AddProduct";
}
*/


}




