package com.themobilestore.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
		
	 @RequestMapping("/SignUp")
	 public String SignUp()
		 {
		 return "SignUpForm";
	    }
	 
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
		public String login()
		{
			return "login";
		}
	 
	/* @RequestMapping("/Product")
	 public String Product()
		 {
		 return "Product";
	 
	    }*/
	 
	@RequestMapping("/Products")
	 public String Products()
		 {
		 return "Products";
	     }
	}

