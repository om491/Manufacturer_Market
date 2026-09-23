package ccom.nt.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import ccom.nt.Entity.Company;
import ccom.nt.Entity.Manufacturer;
import ccom.nt.Service.CompanyService;
import jakarta.servlet.http.HttpSession;

@Controller
public class CompanyController implements CompanyInterface {

	@Autowired
	private CompanyService companyService;

	@RequestMapping(value = "/companyRegister", method = RequestMethod.GET)
	public String showCompanyRegisterPage(HttpSession session) {
		Integer manufacturerId = (Integer) session.getAttribute("manufacturerId");
		if (manufacturerId == null) {
			return "manufacturerLogin";
		}
		return "companyRegister";
	}

	@Override
	@RequestMapping(value = "/registerCompany", method = RequestMethod.POST)
	public String registerCompany(@ModelAttribute("company") Company company, HttpSession session) {

		Integer manufacturerId = (Integer) session.getAttribute("manufacturerId");
		if (manufacturerId == null) {
			return "manufacturerLogin";
		}

		company.setManufacturerId(manufacturerId);
		boolean result = companyService.registerCompany(company);
		if (result) {
			return "companyLogin";
		}
		return "companyRegister";
	}

	@RequestMapping(value = "/companyLogin", method = RequestMethod.GET)
	public String showCompanyLogin() {
		return "companyLogin";
	}

	@Override
	@RequestMapping(value = "/companyLogin", method = RequestMethod.POST)
	public String companyLogin(@RequestParam("companyEmail") String email, @RequestParam("password") String password,
			Model model, HttpSession session) {
		boolean isLogin = companyService.companyLogin(email, password);
		if (isLogin) {
			Company company = companyService.getCompany(email);

			System.out.println("Login successfull");
			session.setAttribute("companyEmail", email);
			session.setAttribute("companyId", company.getId());
			return "redirect:/companyDashboard";

		} else {

			model.addAttribute("errorMsg", "Invalid email or password");

			return "companyLogin";
		}

	}

	//COMPANY LOGIN
	@RequestMapping(value = "/companyDashboard", method = RequestMethod.GET)
	public String companyDashboard(HttpSession session, Model model) {

		String email = (String) session.getAttribute("companyEmail");

		if (email == null) {
			return "companyLogin";
		}

		Company company = companyService.getCompany(email);
		model.addAttribute("company", company);
		model.addAttribute("companyEmail", email);
		model.addAttribute("sessionId", session.getId());
		Object loginTime = session.getAttribute("loginTime");
		model.addAttribute("loginTime", loginTime);

		model.addAttribute("sessionStatus", "Active");

		int timeout = session.getMaxInactiveInterval() / 60;
		model.addAttribute("sessionTimeout", timeout + " Minutes");
		return "companyDashboard";
	}

}
