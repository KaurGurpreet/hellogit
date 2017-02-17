package com.themobilestore.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.themobilestore.model.Customer;

@Controller
public class CustomerController
{

	@RequestMapping("/SignUp")
	public String getSignUpForm(Model model)
	{
	   model.addAttribute("customer",new Customer());
		return "SignUpForm";
	}
}
