package com.niit.springshopbackend;


	

	import org.springframework.context.annotation.AnnotationConfigApplicationContext;

	import com.niit.springshop.dao.UserDAO;
	import com.niit.springshop.model.User;

	public class UserTest {

		
		public static void main (String[]args)
		{
			
			AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
			
			context.scan("com.niit.springshopbackend");
			System.out.println("inside main method");
			context.refresh();
			System.out.println("after refresh method");
			UserDAO userDAO =(UserDAO)context.getBean("userDAO");
			System.out.println("after getbean");
			User user =(User) context.getBean("user");
			
		user.setId("u110")	;
		
		user.setName("prabhu");
		
		user.setPassword("prabhupranav");
		
		user.setMobilenumber("9578122344");
		
		user.setMailid("love.prabhu.82@gmail.com");
		
		user.setAddress("60,pandian nagar,"
				+ "4th street,"
				+ "thiruthangal-626130");
		
		
		
		userDAO.saveOrUpdate(user);
		


}


}
