package com.niit.springshop.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.maven.model.Model;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.niit.springshop.dao.CategoryDAO;
import com.niit.springshop.dao.ProductDAO;
import com.niit.springshop.dao.SupplierDAO;
import com.niit.springshop.model.Category;
import com.niit.springshop.model.FileUtil;
import com.niit.springshop.model.Product;
import com.niit.springshop.model.Supplier;

@Controller
public class ProductController {
	//String path = "C:/Workspace/SpringShop/src/main/webapp/resources/images/";
	
	String path="C:/Users/ELCOT-Lenovo/Desktop/SpringShop/src/main/webapp/resources/images/";
	@Autowired
	private ProductDAO productDAO;
	@Autowired
	private Product product;
	@Autowired
		private CategoryDAO categoryDAO;
	@Autowired
	private Category category;
	@Autowired
		private SupplierDAO supplierDAO;
		@Autowired
		private Supplier supplier;
	@RequestMapping(value="/AddProduct",method=RequestMethod.GET)
	public ModelAndView product()
	{
		ModelAndView mv= new ModelAndView("AddProduct");
		mv.addObject("product",new Product());
		mv.addObject("categoryList", categoryDAO.list());
		mv.addObject("supplierList", supplierDAO.list());
		
		return mv;
		
	}
	
	
	/*@RequestMapping(value="/product")
	public String product(Model model){
		model.addAttribute("product", product);  
		
		model.addAttribute("categoryList",this.CategoryDAO.list());
		
		return "product";
	}*/
	@RequestMapping(value = "/added", method = RequestMethod.POST)
	public ModelAndView addproduct( @ModelAttribute("product") Product product,BindingResult result) {
		ModelAndView mv = new ModelAndView("redirect:/ViewProduct");
		/*if (result.hasErrors()) {
			mv.addObject("addproduct", "AddProduct");
			mv.addObject("catagoryList",this.categoryDAO.list());
			
			mv.setViewName("/product");
		} 
		else {*/
			Category category = categoryDAO.getByName(product.getProductcategory().getName());
			product.setProductcategory(category);
			Supplier supplier = supplierDAO.getByName(product.getProductsupplier().getName());
			product.setProductsupplier(supplier);
			productDAO.saveOrUpdate(product);
			mv.addObject("ProductList", "PRODUCT LIST");
			MultipartFile file=product.getFile();
			FileUtil.upload(path, file, product.getId()+".jpg");
			//mv.setViewName("redirect:/ViewProduct");
		return mv;
		
	}
		
		
	
	

	/*@RequestMapping(value="added",method=RequestMethod.POST)
	public ModelAndView AddProductpost(@ModelAttribute ("product") Product product,BindingResult result,Model model,HttpServletRequest request)
	{
		//path=request.getContextPath();
		//path=path+"src/main/webapp/resources/images/";
		System.out.println(path);
		ModelAndView mv=new ModelAndView("redirect:/ViewProduct");
	    productDAO.saveOrUpdate(product);
		
		MultipartFile file=product.getFile();
		System.out.println(file+"    inside controller add product");
		FileUtil.upload(path, file, product.getId()+".jpg");
		mv.addObject("product",product);
		mv.addObject("isuserclickednewuser","true");
		return mv;
		}*/
	
	
	@RequestMapping("/ViewProduct")
	public ModelAndView gotoViewProduct()
	{
		
		
	ModelAndView mv=new ModelAndView("ViewProduct");
	Gson gson =new Gson();
	List<Product> c=productDAO.list();
	String prolis = gson.toJson(c);
	System.out.println("prolis"+prolis);
	mv.addObject("prolis",prolis);
	
	return mv;
	}
	@RequestMapping("/productinfo")
	public ModelAndView productinfo(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView("productinfo");
		String pdid=request.getParameter("pdid");
		Product product=productDAO.get(Integer.parseInt(pdid));
		List<Product> c=productDAO.getByProduct(product.getId());
    mv.addObject("cview",c);
	
	return mv;
	}

	@RequestMapping("/ViewProduct1")
	public ModelAndView ViewProd1(HttpServletRequest request){
	
		String viewname=request.getParameter("viewname");
		Category category=categoryDAO.getByName(viewname);
		
	ModelAndView mv=new ModelAndView("ViewProduct1");
	
	List<Product> c=productDAO.getByCategory(category.getId());
	Gson gson =new Gson();
	String prolis = gson.toJson(c);
	System.out.println("prolis"+prolis);
	mv.addObject("prolis",prolis);
	
	return mv;
	}
	
	
	

	@RequestMapping(value ="/editpro{id}")
	  public String edit(@PathVariable("id")int id,ModelMap model){
		 product=productDAO.get(id);
		  model.addAttribute("product",product);
		  model.addAttribute("categoryList",categoryDAO.list());
		  model.addAttribute("supplierList",supplierDAO.list());
	  return "/AddProduct";
	  }
	  @RequestMapping(value="/removepro{id}")
	  public String deletepro(@PathVariable("id")int id){
		  
		  productDAO.delete(id);
		 return "redirect:/ViewProduct";
	  }
	  
	 
		
}
	
	
	  
	  
	
	  
	
	
	/*@RequestMapping(value="/added",method=RequestMethod.POST)
	public ModelAndView AddProductpost(@ModelAttribute("product") Product product,BindingResult result,Model model)
	{
	
		productDAO.saveOrUpdate(product);
	
	
	MultipartFile file=product.getFile();
	FileUtil.upload(path,file,product.getId()+".jpg");
	
	ModelAndView mv=new ModelAndView("redirect:/ViewProduct");
	
	return mv;
	}
}*/


