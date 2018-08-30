package com.niit.controller;
import java.util.Collection;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.dao.UserDetailDAO;
import com.niit.model.UserDetail;

@Controller

public class UserController {
	@Autowired
	UserDetailDAO userDetailDAO;
	@RequestMapping(value="login_success")
	public String loginSuccess(HttpSession session,Model m,@RequestParam(value="username") String name,@RequestParam(value="password") String password)
	{
		String page="";
		
		boolean loggedIn=false;
		
		SecurityContext securityContext=SecurityContextHolder.getContext();
		Authentication authentication=securityContext.getAuthentication();
		
		String username=authentication.getName();
		
		Collection<GrantedAuthority> roles=(Collection<GrantedAuthority>)authentication.getAuthorities();
		
		for(GrantedAuthority role:roles)
		{
			session.setAttribute("role", role.getAuthority());
			
			if(role.getAuthority().equals("ROLE_ADMIN"))
			{
				loggedIn=true;
				page="redirect:http://localhost:8085/FashionBazar/";
				session.setAttribute("loggedIn", loggedIn);
				session.setAttribute("username", username);
			}
			else
			{
				loggedIn=true;
				page="redirect:";
				session.setAttribute("loggedIn", loggedIn);
				session.setAttribute("username", username);
			}
			
		}
		
		return page;
	}
	
	@RequestMapping(value="/login")
	public String showLoginPage()
	{
		return "Login";
	}
	@RequestMapping(value="/register")
	public String showRegisterPage(Model m)
	{
		UserDetail user=new UserDetail();
		m.addAttribute("user",user);
		return "Register";
	}
	
	@RequestMapping(value="/contactus")
	public String showContactUsPage()
	{
		return "ContactUs";
	}
	
	@RequestMapping(value="reg")
	public String insertUserDetail(@ModelAttribute("user")UserDetail user,Model m)
	{
		userDetailDAO.registerUser(user);
		return "Login";
	}
	@RequestMapping(value="/roleuser")
	public String showroleuser()
	{
		return "Roleuser";
	}
	@RequestMapping(value="/roleadmin")
	public String showroleadmin()
	{
		return "Roleadmin";
	}
	@RequestMapping(value="/aboutus")
	public String showAboutUsPage()
	{
		return "AboutUs";
	}
		

}
