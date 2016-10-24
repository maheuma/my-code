
package com.niit.springshop.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.springshop.dao.BuyDAO;
import com.niit.springshop.dao.ProductDAO;
import com.niit.springshop.dao.UserDAO;
import com.niit.springshop.model.Buy;
import com.niit.springshop.model.Product;
import com.niit.springshop.model.User;

@Controller
public class BuyController {
	
	@Autowired
	private BuyDAO buyDAO;
	@Autowired
	private Buy buy;
	@Autowired
	private User user;
	@Autowired
	private Product product;
	@Autowired
	private ProductDAO productDAO;
	@Autowired
	private UserDAO userDAO;
	@RequestMapping("/buy")
	public String buy(Model model){
		model.addAttribute("buy", buy); 
		model.addAttribute("isbuyClickedRegisterHere", "true"); 
		return "/buy";
	}
	/*@RequestMapping(value="/cart{id}")
	  public String addbuy(@PathVariable("id") int id,HttpServletRequest request,Model model,HttpSession session){ 
		Product product=productDAO.get(id);
		 Buy buy=new Buy();
		 buy.setProduct_description(product.getDescription());
			System.out.println("description");
			buy.setProductname(product.getName());
			System.out.println("name");
			buy.setProduct_price(product.getPrice());
			System.out.println("price");
			String loggedInUser =(String) session.getAttribute("loggedInUser");
	User user=userDAO.get(loggedInUser);
	buy.setAddress(user.getAddress());
	buy.setUser(user);
	buyDAO.saveOrUpdate(buy);
	if(loggedInUser!=null){
		 System.out.println("enter");
		buy.setUsername(loggedInUser);
		return "redirect:/order";
	}
	else{
		model.addAttribute("cartlogin", "first please login and continue your shopping");
		return "/login";
		}

}*/
	

	@RequestMapping(value = "/buy", method = RequestMethod.POST)
	public ModelAndView buypost(@ModelAttribute("buy") Buy buy,HttpSession session) {
		String loggedInUser=(String) session.getAttribute("loggedInUser");
		buy.setUsername(loggedInUser);
		buyDAO.saveOrUpdate(buy);
		ModelAndView mv = new ModelAndView("/Makepayment");
		mv.addObject("successbuy", "You are successfully purchased");
		return mv;
	}
	
	
}