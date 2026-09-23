package ccom.nt.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import ccom.nt.Entity.Product;
import ccom.nt.Service.ProductService;
import jakarta.servlet.http.HttpSession;

@Controller
public class ProductController {
	@Autowired
	private ProductService productService;

	@RequestMapping(value = "/addProduct", method = RequestMethod.GET)
	public String addProduct() {

		return "addProduct";
	}

	@RequestMapping(value = "/saveProduct", method = RequestMethod.POST)
	public String saveProduct(@ModelAttribute("product") Product product, HttpSession session, Model model) {

		Integer companyId = (Integer) session.getAttribute("companyId");
		   System.out.println("Company ID = " + companyId);

		    System.out.println("Product Name = " + product.getName());
		    System.out.println("Product Price = " + product.getPrice());
		    System.out.println("Product Quantity = " + product.getQuantity());

		if (companyId == null) {

			return "companyLogin";
		}

		product.setCompany_id(companyId);

		boolean result = productService.addProduct(product);

		if (result) {
			model.addAttribute("successMsg", "Product added successfully!");
		} else {
			model.addAttribute("errorMsg", "Unable to add product.");
		}

		return "addProduct";
	}

	@RequestMapping(value = "/viewProducts", method = RequestMethod.GET)
	public String viewProducts(HttpSession session, Model model) {
		Integer companyId = (Integer) session.getAttribute("companyId");

	    System.out.println("Company ID from Session = " + companyId);
		if (companyId == null) {
			  System.out.println("Company ID not found in session");
			return "companyLogin";
		}

		List<Product> products = productService.getAllProducts(companyId);
		model.addAttribute("products", products);

		return "allProducts";
	}
	@RequestMapping(value="/deleteProduct",method=RequestMethod.GET)
	public String deleteProduct(@RequestParam("id")int id,Model model) {
		boolean deleted=productService.deleteProduct(id);
		if(deleted) {
		model.addAttribute("successMsg", "Deleted Successfully");
		
	}else {
		model.addAttribute("error","Failed deletion");
	}
		return "redirect:/viewProducts";
}
	
}
