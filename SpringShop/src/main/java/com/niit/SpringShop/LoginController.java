package com.niit.SpringShop;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {
	@RequestMapping("/")
	public String gotoHome()
	{
		return "Home";
	}
	@RequestMapping("/Home")
	public String gotoHome1()
	{
		return "Home";
	}
	
@RequestMapping("/index")
public String gotoIndex()
{
	return "index";
}
@RequestMapping("/TestLogin")
public String gotoTestLogin()
{
	return "TestLogin";
}

@RequestMapping("/Registration")
public String gotoRegistration()
{
	return "Registration";
}

@RequestMapping("/#")
public String gotoCategory()
{
	return "Category";
}
}


