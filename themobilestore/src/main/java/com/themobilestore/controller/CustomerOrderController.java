package com.themobilestore.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.themobilestore.model.Cart;
import com.themobilestore.model.Customer;
import com.themobilestore.model.CustomerOrder;
import com.themobilestore.service.CartService;
import com.themobilestore.service.CustomerOrderService;


@Controller
public class CustomerOrderController{
	
	@Autowired
	private CartService cartService;
	
	@Autowired
	private CustomerOrderService customerOrderService;
	
	
	@RequestMapping("/order/{cartId}")
    public String createOrder(@PathVariable("cartId") int cartId){
		System.out.println("Cart id in CustomerOrderController "+ cartId);
        CustomerOrder customerOrder = new CustomerOrder();
        Cart cart = cartService.getCart(cartId);
        customerOrder.setCart(cart);

        Customer customer = cart.getCustomer();
        customerOrder.setCustomer(customer);
        customerOrder.setBillingAddress(customer.getBillingAddress());
        customerOrder.setShippingAddress(customer.getShippingAddress());

        customerOrderService.addCustomerOrder(customerOrder);

        return "redirect:/checkout?cartId=" + cartId;

    }
	
	   /*@RequestMapping("/order/{cartId}")
	   public String createOrder(@PathVariable("cartId") int cartId)
	   {   
		   return "redirect:/checkout?cartId=" + cartId;

       }*/
	   
	/*@RequestMapping("/order/{cartId}")
	   public String createOrder(@PathVariable("cartId") int id){
		
		CustomerOrder customerOrder = new CustomerOrder();
		Cart cart = cartService.getCart(id);
		customerOrder.setCart(cart);
		
		Customer customer = cart.getCustomer();
		customerOrder.setCustomer(customer);
		customerOrder.setBillingAddress(customer.getBillingAddress());
		customerOrder.setShippingAddress(customer.getShippingAddress());
		
		customerOrderService.addCustomerOrder(cart);
		
		return "redirect:/checkout?cartId=" + id;
	}*/
	
}
