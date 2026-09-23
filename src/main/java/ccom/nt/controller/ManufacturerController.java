package ccom.nt.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import ccom.nt.Entity.Manufacturer;
import ccom.nt.Service.EmailService;
import ccom.nt.Service.ManufacturerService;

import jakarta.servlet.http.HttpSession;

@Controller
public class ManufacturerController implements ManufactureInterfaceController {

	@Autowired
	private ManufacturerService manufacturerService;
	@Autowired
	private EmailService emailService;
	// ================= REGISTER PAGE =================

	@RequestMapping(value = "/manufacturerRegister", method = RequestMethod.GET)
	public String showRegisterPage() {

		return "manufacturerRegister";
	}

	// ================= REGISTER =================

	@RequestMapping(value = "/registerManufacturer", method = RequestMethod.POST)
	public String registerManufacturer(@ModelAttribute("manufacturer") Manufacturer manufacturer) {

		boolean result = manufacturerService.registerManufacturer(manufacturer);

		if (result) {
			emailService.sendRegistrationMail(manufacturer.getEmail(), manufacturer.getName());

			return "changePassword";
		}

		return "manufacturerRegister";
	}

	// =======CHANGE PASSWORD======

	@RequestMapping(value = "/changePassword", method = RequestMethod.POST)
	public String changePassword(@RequestParam("currentPassword") String currentPassword,
			@RequestParam("newPassword") String newPassword, @RequestParam("confirmPassword") String confirmPassword,
			HttpSession session, Model model) {

		String email = (String) session.getAttribute("email");
		String pass = manufacturerService.getPassword(email, currentPassword, newPassword);
		emailService.generateOtp();
		
		if (email == null) {
			return "manufacturerLogin";
		}

		if (!newPassword.equals(confirmPassword)) {

			model.addAttribute("error", "New password and confirm password do not match.");

			return "changePassword";
		}

		if (pass.equals(newPassword)) {

			boolean result = manufacturerService.changePassword(email, currentPassword, newPassword);
			if (result) {

				model.addAttribute("success", "Password changed successfully.");

			} else {

				model.addAttribute("error", "Current password is incorrect.");
			}
			return "changePassword";
		}

		return "changePassword";
	}

	// ================= LOGIN =================

	@RequestMapping(value = "/manufacturerLogin", method = RequestMethod.GET)
	public String showManufacturerLogin() {
		return "manufacturerLogin";
	}

	@Override
	@RequestMapping(value = "/manufacturerLogin", method = RequestMethod.POST)
	public String manufactureLogin(@RequestParam("email") String email, @RequestParam("password") String password,
			Model model, HttpSession session) {

		boolean isLogin = manufacturerService.manufactureLogin(email, password);

		if (isLogin) {
			Manufacturer manufacturer = manufacturerService.getManufacturer(email);
			session.setAttribute("email", email);
			session.setAttribute("manufacturerId", manufacturer.getId());
			session.setAttribute("loginTime", new java.util.Date());
			return "redirect:/manufacturerDashboard";

		} else {

			model.addAttribute("errorMsg", "Invalid email or password");

			return "manufacturerLogin";
		}
	}

	// ================= DASHBOARD =================

	@RequestMapping(value = "/manufacturerDashboard", method = RequestMethod.GET)
	public String manufacturerDashboard(HttpSession session, Model model) {

		String email = (String) session.getAttribute("email");

		if (email == null) {
			return "manufacturerLogin";
		}

		Manufacturer manufacturer = manufacturerService.getManufacturer(email);

		model.addAttribute("manufacturer", manufacturer);
		model.addAttribute("email", email);

		model.addAttribute("sessionId", session.getId());

		Object loginTime = session.getAttribute("loginTime");
		model.addAttribute("loginTime", loginTime);

		model.addAttribute("sessionStatus", "Active");

		int timeout = session.getMaxInactiveInterval() / 60;
		model.addAttribute("sessionTimeout", timeout + " Minutes");

		return "manufacturerDashboard";
	}

}