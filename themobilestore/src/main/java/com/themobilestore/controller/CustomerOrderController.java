package com.themobilestore.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.themobilestore.service.CustomerOrderService;


@Controller
public class CustomerOrderController{
	
	private CustomerOrderService customerOrderService;
	
	   @RequestMapping("/order/{cartId}")
	   public String createOrder(@PathVariable("cartId") int cartId)
	   {   
		   return "redirect:/checkout?cartId=" + cartId;

       }
	   
	/*@RequestMapping("/order/{cartId}")
	   public String createOrder(@PathVariable("cartId") int cartId, Model model){
		
		CustomerOrder customerOrder = customerOrderService.addCustomerOrder(cart);
		model.addAttribute();
		
		return "redirect:/checkout?cartId=" + cartId;
	}*/
	
}
