package com.themobilestore.controller;


import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.themobilestore.model.Customer;
import com.themobilestore.model.Product;
import com.themobilestore.service.CustomerService;

@Controller
public class CustomerController
{  
	@Autowired
	private CustomerService customerService;
	
	public CustomerController()
	{
		System.out.println("CREATING INSTANCE FOR CUSTOMERCONTROLLER");
	}
	
	 @RequestMapping("/SignUp")
		public String getSignUpForm(Model model)
		{
		   model.addAttribute("customer",new Customer());
			return "SignUpForm";
		}
    
	@RequestMapping("/addCustomer")	
	public String saveCustomer(@Valid @ModelAttribute("customer") Customer customer,BindingResult result,Model model)
		{
		model.addAttribute("customer",customerService.getAllCustomer());
		if(result.hasErrors())
			return "SignUpForm";
		customerService.saveCustomer(customer);
		return "index";
		}
	
}
