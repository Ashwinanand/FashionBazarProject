package com.niit.controller;
import java.io.BufferedOutputStream;

import java.io.File;
import java.io.FileOutputStream;
import java.util.LinkedHashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.niit.dao.CategoryDAO;
import com.niit.dao.ProductDAO;
import com.niit.model.Category;
import com.niit.model.Product;

@Controller

public class ProductController {
	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	CategoryDAO categoryDAO;
	
	@RequestMapping(value="/product")
	public String showProductPage(Model m)
	{
		Product product=new Product();
		m.addAttribute(product);
		m.addAttribute("categoryList", this.getCategory());
		m.addAttribute("productlist", productDAO.listProducts());
		
		return "Product";
	}
	
	@RequestMapping(value="/InsertProduct",method=RequestMethod.POST)
	public String addProduct(@ModelAttribute("product") Product product,@RequestParam("pimage") MultipartFile productImage,Model m)
	{
		productDAO.addProduct(product);
		
		Product product1=new Product(); //blank object which will be sent to Product.jsp
		m.addAttribute(product1); //attaching to model object
		
		//==> Image Insertion 
		
		String path="C:\\Users\\anand\\Desktop\\Workspace\\FashionBazar\\src\\main\\webapp\\resources\\images\\";
		path=path+String.valueOf(product.getProductId()+".jpg");
		File filepath=new File(path);
		
		if(!productImage.isEmpty())
		{
			try
			{
				byte[] buffer=productImage.getBytes();
				FileOutputStream fos=new FileOutputStream(filepath);
				BufferedOutputStream bs=new BufferedOutputStream(fos);
				bs.write(buffer);
				bs.close();
			}
			catch(Exception e)
			{
				m.addAttribute("errorInfo", "There is Exception:"+e.getMessage());
			}
		}
		else
		{
			m.addAttribute("errorInfo", "There is System Problem");
		}
		
		
		//=> End of Image Insertion
		
		return "Product";	}
	
	@RequestMapping(value="/productPage",method=RequestMethod.GET)
	public String displayProductPage(Model m)
	{
		List<Product> listProducts=productDAO.listProducts();
		m.addAttribute("listProducts", listProducts);
		
		return "ProductPage";
	}
	
	@RequestMapping(value="/productDesc/{productId}",method=RequestMethod.GET)
	public String displayProductDesc(@PathVariable("productId")int productId,Model m)
	{
		Product product=(Product)productDAO.getProduct(productId);
		m.addAttribute("ProductInfo", product);
		return "ProductDesc";
	}
	
	@RequestMapping(value="/deleteproduct/{productId}")
    public String deleteProduct(@PathVariable("productId")int productId,Model m)	{
		Product product=productDAO.getProduct(productId);
		productDAO.deleteProduct(product);
		Product product1=new Product();
		m.addAttribute(product1);
		m.addAttribute("categorylist", this.getCategory());
		m.addAttribute("productlist", productDAO.listProducts());
		
		return "Product";
	}
	@RequestMapping(value="/editproduct/{productId}")
    public String editProduct(@PathVariable("productId")int productId,Model m)	{
		Product product=productDAO.getProduct(productId);
		m.addAttribute(product);
		m.addAttribute("categorylist", this.getCategory());
		
		return "EditProduct";
	}
	
	@RequestMapping(value="/updateproduct",method=RequestMethod.POST)
    public String updateProduct(@ModelAttribute("product")Product product,Model m)	{
		System.out.println("ProductController");
		productDAO.updateProduct(product);
		/*m.addAttribute("categorylist", this.getCategory());*/
		System.out.println("after Commenting on bind code");
		return "redirect:/product";
		
	}
	public LinkedHashMap<Integer,String> getCategory()
	{
		List<Category> listCategory=categoryDAO.getCategories();
		LinkedHashMap<Integer,String> categoryData= new LinkedHashMap<Integer,String>();
		for(Category category:listCategory)
		{
			categoryData.put(category.getCategoryId(),category.getCategoryName());
		}
		return categoryData;
	}

}
