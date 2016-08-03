package com.niit.springshopbackend;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.springshop.dao.CategoryDAO;
import com.niit.springshop.model.Category;

public class CategoryTest {
	
	public static void main (String[]args)
	{
		
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		
		context.scan("com.niit.springshopbackend");
		System.out.println("inside main method");
		context.refresh();
		System.out.println("after refresh method");
		CategoryDAO categoryDAO =(CategoryDAO)context.getBean("categoryDAO");
		System.out.println("after getbean");
		Category category =(Category) context.getBean("category");
		
	category.setId("C232")	;
	
	category.setName("ddjd");
	
	category.setDescription("hvhhsj");
	
	categoryDAO.saveOrUpdate(category);
	
	}
	
	

	}


