package com.niit.controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.dao.CategoryDAO;
import com.niit.model.Category;

	@Controller
	public class CategoryController {
		@Autowired
		CategoryDAO categoryDAO;
		
		@RequestMapping(value="category")
		public String getCategoryPage(Model m)
		{
			Category category= new Category();
			m.addAttribute(category);
			List<Category> listCategory=categoryDAO.getCategories();
			m.addAttribute("categorylist",listCategory);
			
			return "Category";

		}
		@RequestMapping(value="/InsertCategory",method=RequestMethod.POST)
		public String insertCategory(@ModelAttribute("category")Category category,Model m)
		{
			
			
			categoryDAO.addCategory(category);
			Category category1= new Category();
			m.addAttribute(category1);
			List<Category> listCategory=categoryDAO.getCategories();
			m.addAttribute("categorylist",listCategory);
			
			return "Category";
		}
		@RequestMapping(value="/deletecategory/{categoryid}")
		public String deleteCategory(@PathVariable("categoryid")int categoryid,Model m)
		{
			
			Category category= categoryDAO.getCategory(categoryid);
			categoryDAO.deleteCategory(category);
			Category category1= new Category();
			m.addAttribute(category1);
			List<Category> listCategory=categoryDAO.getCategories();
			m.addAttribute("categorylist",listCategory);
			
			return "Category";
		}
		@RequestMapping(value="/editcategory/{categoryid}")
		public String editCategory(@PathVariable("categoryid")int categoryid,Model m)
		{
		
			Category category=categoryDAO.getCategory(categoryid);
			List<Category> listCategory=categoryDAO.getCategories();
			m.addAttribute("categorylist",listCategory);
			m.addAttribute(category);
			return "EditCategory";
			
		}	
		@RequestMapping(value="/updatecategory", method=RequestMethod.POST)
		public String updatecategory(@ModelAttribute("category")Category category,Model m)
		{
		
			categoryDAO.updateCategory(category);
			/*List<Category> listCategory=categoryDAO.listcategory();
			m.addAttribute("categorylist",listCategory);*/
			return "redirect:/category";
		}
	}

