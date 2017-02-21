package com.themobilestore.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

	@Controller
	public class HomeController
	{
		@RequestMapping("/")
		public String homePage()
		{
			return "index";
		}
		
		@RequestMapping("/home")
		public String home()
		{
			return "index";
		}
		
	/* @RequestMapping("/SignUp")
	 public String SignUp()
		 {
		 return "SignUpForm";
	    }*/
	 
	 @RequestMapping("/ContactUs")
	 public String ContactUs()
		 {
		 return "ContactUs";
	    }
	 
	 @RequestMapping("/AboutUs")
	 public String AboutUs()
		 {
		 return "AboutUs";
	    }
	 
	 @RequestMapping("/login")
	 public String login(@RequestParam(value="error", required = false) String error, 
			             @RequestParam(value="logout", required = false) String logout, Model model)
	 { 
		if(error != null)
		 { 
		 model.addAttribute("error", "Invalid username and password"); 
		 }
		if (logout !=null)
		  { 
			model.addAttribute("msg", "You have been logged out successfully"); 
		  } 
			 
			return "login"; 
	 } 
	 
	 /*@RequestMapping(value="/welcome", method = RequestMethod.GET)
		public String printWelcome(ModelMap model, Principal principal)
		{
			String name = principal.getName();
			model.addAttribute("username",name);
			model.addAttribute("message","Hello");
			return "hello";
		}*/
	 
	 @RequestMapping("/Product")
	 public String Product()
		 {
		 return "ProductForm";
	 
	    }
	 
	/*@RequestMapping("/Products")
	 public String Products()
		 {
		 return "Products";
	     }*/
	}

