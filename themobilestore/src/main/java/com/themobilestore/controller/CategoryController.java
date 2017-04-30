package com.themobilestore.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.themobilestore.model.Category;
import com.themobilestore.model.Product;
import com.themobilestore.service.CategoryService;

@Controller
/*@RequestMapping("/admin")*/
public class CategoryController
{   
	   @Autowired
		CategoryService cse;

		public CategoryController()
		{
			System.out.println("CREATING INSTANCE FOR CATEGORYCONTROLLER");
		}
		
		
		@RequestMapping("/addCategory")
		public String getCategory(Model model) 
		{
			
			model.addAttribute("category", new Category());
			model.addAttribute("categoryList", cse.getCategories());
			return "Category";
		}
		
		@ModelAttribute("categorycommand")
		public Category newCategory()
		{
			return new Category();
		}

		
		@RequestMapping("/category/add")
		public String addCategories(@Valid @ModelAttribute("categorycommand") Category category, BindingResult result)
		{

			if (result.hasErrors()) 
			{
				return "addCategory";
			}
			
			System.out.println(category.getCid());
			
			cse.saveOrUpdate(category);

			return "redirect:/addCategory";
		}
		
		@RequestMapping("/category/remove/{cid}")
		public String deleteCategory(@PathVariable("cid") int cid, ModelMap model) throws Exception {

			try {
				cse.delete(cid);
				model.addAttribute("message", "Successfully deleted");
			} catch (Exception e) {
				model.addAttribute("message", e.getMessage());
				e.printStackTrace();
				return "redirect:/error";
			}
			// redirectAttrs.addFlashAttribute(arg0, arg1)
			/*return "redirect:/admin/addCategory";*/
			return "redirect:/addCategory";
		}
		
		/*@RequestMapping("/category/edit/{cid }")
		public String editProduct(@PathVariable("cid") int cid, Model model) {
			System.out.println("editCategory");
			model.addAttribute("categorycommand", cse.get(cid));
			model.addAttribute("categoryList", cse.getCategories());
			return "addCategory";
		}*/
		
		@RequestMapping("/editCategoryForm/{cid}")
		public String editCategoryForm(@PathVariable int cid, Model model) {
			System.out.println("Category Id in Category Controller = " + cid);
					
			model.addAttribute("categorycommand", cse.get(cid));
			System.out.println("Category id in editCategoryForm = " + cid);
			model.addAttribute("categoryList", cse.getCategories());
			return "EditCategoryForm";
		}
		
		@RequestMapping(value="/editCategory/{cid}", method=RequestMethod.POST)
		public String editCategoryDetails(@Valid @ModelAttribute("categorycommand") Category category,  BindingResult result,@PathVariable("cid") int cid, Model model)
		{
			System.out.println("Category Id in edit category method is "+ category.getCid());
			
			if (result.hasErrors())
			{
				System.out.println(result.getFieldError());
				return "EditCategoryForm";
			}	
			cse.editCategory(category);

			return "redirect:/addCategory";
			
		}
}


