package com.niit.springshop.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.springshop.dao.CartDAO;
import com.niit.springshop.dao.ProductDAO;
import com.niit.springshop.model.Cart;
import com.niit.springshop.model.Product;
import com.niit.springshop.model.User;

@Controller
public class CartController {
	@Autowired
	private CartDAO cartDAO;
	@Autowired
	private Product product;
	@Autowired
	private Cart cart;
	@Autowired
	private User user;
	@Autowired
	private ProductDAO productDAO;
			
	@RequestMapping("/cart{id}")
	public String  cart(@PathVariable("id") int id,HttpSession session,Model model) {
	   Product product = productDAO.get(id); 
	   	Cart cart=new Cart();
		cart.setPrice(product.getPrice());
		cart.setPname(product.getName());
		cart.setQuantity("1");
		String loggedInUser=(String) session.getAttribute("loggedInUser");
		cart.setUsername(loggedInUser);
		cartDAO.saveOrUpdate(cart);
		return "redirect:/view";
	}
	
	@RequestMapping(value="view")
	public String viewcart(Model model,HttpSession session){
		
		model.addAttribute("cart",new Cart());
		String loggedInUser= (String) session.getAttribute("loggedInUser");
        model.addAttribute("cartList", cartDAO.list(loggedInUser));
        model.addAttribute("totalAmount",cartDAO.getTotalAmount(loggedInUser));
	//	List <Cart> cartlist=cartDAO.list(loggedInUser);
		//model.addAttribute("CartSize", cartlist.size());

		model.addAttribute("CartList", "CART LIST");
		return "viewcart";
	}
	
	@RequestMapping(value="/del{id}")
	public String deletecart(@PathVariable("id")int id) {
		cartDAO.delete(id);
		return "redirect:/view";
	}
	 
	 
	}