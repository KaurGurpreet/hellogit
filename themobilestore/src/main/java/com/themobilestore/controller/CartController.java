package com.themobilestore.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.themobilestore.model.Cart;
import com.themobilestore.model.Customer;
import com.themobilestore.service.CartService;
import com.themobilestore.service.CustomerService;

@Controller
public class CartController
{
	@Autowired
	private CustomerService custService;
    @Autowired
    private CartService cartService;
    
	@RequestMapping("/cart/getCartId")
    public String getCartId(Model model){
	User user=(User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
	String username=user.getUsername();
	Customer customer=custService.getCustomerByUsername(username);
	Cart cart=customer.getCart();
	int cart_Id=cart.getCart_id();
	model.addAttribute("cart_Id",cart_Id);
	return "cart";
}
	@RequestMapping("/cart/getCart/{cartId}")
	public @ResponseBody Cart getCart(@PathVariable int cartId){
		Cart cart=cartService.getCart(cartId);
		return cart;
	}	
}
