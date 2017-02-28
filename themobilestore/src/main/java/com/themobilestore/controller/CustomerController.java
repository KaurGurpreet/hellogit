package com.themobilestore.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.themobilestore.model.Authority;
import com.themobilestore.model.BillingAddress;
import com.themobilestore.model.Customer;
import com.themobilestore.model.ShippingAddress;
import com.themobilestore.model.Users;
import com.themobilestore.service.CustomerService;


@Controller
public class CustomerController {
	@Autowired
	private CustomerService custService;

	public CustomerController() {
		System.out.println("CREATING INSTANCE FOR CUSTOMERCONTROLLER");
	}

	/*@RequestMapping("/SignUp")
	public String signUp() {
		return "SignUpForm";
	}*/

	@ModelAttribute("customerCommand")
	public Customer createCustomer() {
		Customer customer = new Customer();
		/*BillingAddress billing = new BillingAddress();
		ShippingAddress shipping = new ShippingAddress();
		Users users = new Users();
		Authority authority = new Authority();
		customer.setUsers(users);
		customer.setAuthority(authority);
		customer.setBillingAddress(billing);
		customer.setShippingAddress(shipping);*/
		return customer;
	}

	@RequestMapping("/SignUp")
	public String getCustomers(Model model)
	{
		Customer customer = new Customer();
		/*BillingAddress billing = new BillingAddress();
		ShippingAddress shipping = new ShippingAddress();*/
		/*Users users = new Users();
		Authority authority = new Authority();
		customer.setUsers(users);
		customer.setAuthority(authority);*/
		/*customer.setBillingAddress(billing);
		customer.setShippingAddress(shipping);*/
		model.addAttribute("customers", new Customer());
		return "SignUpForm";
	}

	@RequestMapping("/addCustomer")
	public String saveCustomer(@Valid @ModelAttribute("customerCommand") Customer customer, BindingResult result,
			Model model) {
		/*model.addAttribute("customer", custService.getAllCustomer());*/
		if (result.hasErrors())
			return "SignUpForm";
		//String unm=principal.getName();
		//customer.getUsers().setUsername(unm);
		//customer.getUsers().setEnabled(true);
		//customer.getAuthority().setRole("ROLE_USER");
		//customer.getAuthority().setUsername(unm);
		try{
		custService.saveCustomer(customer);
		}
		catch(Exception e)
		{
        model.addAttribute("duplicateUsername", "Username already exists. Please enter different username");
        System.out.println("Exception is " + e.getMessage());
        return "SignUpForm";
		}

		
		return "redirect:/login";
	}
}
