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
public class dogshopController {
	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	CategoryDAO categoryDAO;
	
	@GetMapping("dogshop")
	public String homeform(Model model) {	
		Category dog = categoryDAO.getById("2");
		List<Product> itemdog = productDAO.findByCategory(dog);	
		model.addAttribute("itemdog", itemdog);
		return "dogshop";
	}
}
