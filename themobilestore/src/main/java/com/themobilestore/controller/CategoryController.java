package com.themobilestore.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.themobilestore.model.Category;
import com.themobilestore.service.CategoryService;

@Controller
public class CategoryController
{   
	   @Autowired
		CategoryService cse;

		public CategoryController()
		{
			System.out.println("CREATING INSTANCE FOR CATEGORYCONTROLLER");
		}
		
		/*@RequestMapping(value = "/addSupplier", method = RequestMethod.GET)
		public ModelAndView list() {
			List<Supplier> list = sse.list();
			return new ModelAndView("supplier", "Supplier", list);
		}*/
		
		@RequestMapping("/addCategory")
		public String list(Model model) {
			List<Category> list = cse.getCategories();
			model.addAttribute("category",list);
			/*return new ModelAndView("supplier", "Supplier", list);*/
			return "Category";
		}
		
		@ModelAttribute("categorycommand")
		public Category newCategory()
		{
			return new Category();
		}

		@RequestMapping(value = "/category/add", method = RequestMethod.POST)
		public String addProduct(@ModelAttribute("categorycommand") Category c, BindingResult result) {

			if (result.hasErrors()) 
			{
				return "addCategory";
			}
			
			System.out.println(c.getCid());
			
			cse.saveOrUpdate(c);

			return "redirect:/addCategory";
		}

}

