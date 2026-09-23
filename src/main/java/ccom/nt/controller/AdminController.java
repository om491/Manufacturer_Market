package ccom.nt.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import ccom.nt.Service.AdminService;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	@RequestMapping("/")
	public String home() {
	    return "index";
	}
	
	@RequestMapping("/adminLogin")
	public String adminLogin(@ModelAttribute("email") String email,@ModelAttribute("password")String password) {
		
		boolean isAdmin = adminService.adminLogin(email,password);
		if(isAdmin) {
			return "adminDashboard";
		}else {
			return "adminLogin";
		}
		
	}
	
	
}
