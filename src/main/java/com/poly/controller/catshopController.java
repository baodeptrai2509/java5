package com.poly.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.DAO.CategoryDAO;
import com.poly.DAO.ProductDAO;
import com.poly.entity.Category;
import com.poly.entity.Product;

@Controller
@RequestMapping("Fami")
public class catshopController {
	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	CategoryDAO categoryDAO;
	
	@GetMapping("catshop")
	public String homeform(Model model) {	
		Category cat = categoryDAO.getById("1");
		List<Product> itemcat = productDAO.findByCategory(cat);	
		model.addAttribute("itemcat", itemcat);
		return "catshop";
	}
}
