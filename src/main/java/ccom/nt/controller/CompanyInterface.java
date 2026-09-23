package ccom.nt.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;

import ccom.nt.Entity.Company;
import jakarta.servlet.http.HttpSession;

public interface CompanyInterface {
public String registerCompany(@ModelAttribute Company company ,HttpSession session);
public String companyLogin(@ModelAttribute("companyEmail")String companyEmail,@ModelAttribute("password")String password,Model model,HttpSession session);
}
