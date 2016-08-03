package com.niit.springshopbackend;



	import org.springframework.context.annotation.AnnotationConfigApplicationContext;

	import com.niit.springshop.dao.SupplierDAO;
	import com.niit.springshop.model.Supplier;

	public class SupplierTest {

		
		public static void main (String[]args)
		{
			
			AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
			
			context.scan("com.niit.springshopbackend");
			System.out.println("inside main method");
			context.refresh();
			System.out.println("after refresh method");
			SupplierDAO supplierDAO =(SupplierDAO)context.getBean("supplierDAO");
			System.out.println("after getbean");
			Supplier supplier =(Supplier) context.getBean("supplier");
			
		supplier.setId("s11111")	;
		
		supplier.setName("vetha communications");
		
		supplier.setDescription("60,highroad,mumbai");
		
		supplierDAO.saveOrUpdate(supplier);
		
		
		
		
		
supplier.setId("s11112")	;
		
		supplier.setName("pranav global solutions");
		
		supplier.setDescription("60,highroad,bangalore");
		
		supplierDAO.saveOrUpdate(supplier);
		
supplier.setId("s11113")	;
		
		supplier.setName("sss communications");
		
		supplier.setDescription("60,highroad,chebai");
		
		supplierDAO.saveOrUpdate(supplier);
		
		
		supplierDAO.delete("s11113");
		
		if(supplierDAO.get("s11112")==null)
		{
			
			System.out.println("supplier does not exist");
			
			
		}
		else
		{
			System.out.println("category exist...the details are");
			
			System.out.println();
			
		}
		
		
		
		
		
		
		
		

		}






}
