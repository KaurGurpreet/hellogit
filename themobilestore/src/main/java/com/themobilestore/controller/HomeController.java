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
	}

