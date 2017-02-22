package com.themobilestore.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import com.themobilestore.model.BillingAddress;
import com.themobilestore.model.Customer;
import com.themobilestore.model.Users;
import com.themobilestore.service.BillingService;
import com.themobilestore.service.CustomerService;
import com.themobilestore.service.UsersService;

@Controller
public class CustomerController
{  
	@Autowired
	private CustomerService customerService;
	
	@Autowired
	  private UsersService use;
	
	@Autowired
	  private BillingService bse;
	
	
	
	public CustomerController()
	{
		System.out.println("CREATING INSTANCE FOR CUSTOMERCONTROLLER");
	}
	
	 @RequestMapping("/SignUp")
		public String getSignUpForm(Model model)
		{
		   model.addAttribute("customer",new Customer());
		   model.addAttribute("users",use.getUsers());
		   model.addAttribute("billing",bse.getBilling());
		   
			return "SignUpForm";
		}
    
	/*@RequestMapping("/addCustomer")	
	public String saveCustomer(@Valid @ModelAttribute("customer") Customer customer, BindingResult result,Model model)
		{
		model.addAttribute("customer",customerService.getAllCustomer());
		if(result.hasErrors())
			return "SignUpForm";
		customerService.saveCustomer(customer);
		return "redirect:/SignUp";
		}*/
	 
	 @ModelAttribute("customer")
		public Customer newCustomer()
		{
			return new Customer();
		}
	
	@RequestMapping("/addCustomer")	
	public String saveCustomer(@Valid @ModelAttribute("customer") Customer customer, BindingResult result,Model model)
		{
		customerService.saveCustomer(customer);
		/*use.saveOrUpdate(users);
		bse.saveOrUpdate(billing);*/
		return "redirect:/SignUp";
		}
}
