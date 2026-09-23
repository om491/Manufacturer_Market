package ccom.nt.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;

import ccom.nt.Entity.Manufacturer;
import jakarta.servlet.http.HttpSession;

public interface ManufactureInterfaceController {
	
	public String registerManufacturer(@ModelAttribute Manufacturer manufacturer);
	public String manufactureLogin(@ModelAttribute("email")String email,@ModelAttribute("password")String password,Model model,HttpSession session);
}
