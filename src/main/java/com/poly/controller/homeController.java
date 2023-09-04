package com.poly.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.DAO.CartDAO;
import com.poly.DAO.CartDetailsDAO;
import com.poly.DAO.CategoryDAO;
import com.poly.DAO.ProductDAO;
import com.poly.entity.Account;
import com.poly.entity.Cart;
import com.poly.entity.Category;
import com.poly.entity.Product;
import com.poly.entity.ReportCountProduct;
import com.poly.service.SessionService;

@Controller
@RequestMapping("Fami")
public class homeController {
	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	CategoryDAO categoryDAO;
	
	@Autowired
	CartDAO cartDAO;
	
	@Autowired
	CartDetailsDAO cartDetailsDAO;
	
	@Autowired
	SessionService sessionService;
	
	@GetMapping("home")
	public String homeform(Model model, @RequestParam("keywords") Optional<String> kw,
			@RequestParam("p") Optional<Integer> p) {
			
		Category cat = categoryDAO.getById("1");
		List<Product> itemcat = productDAO.findByCategory(cat);	
		model.addAttribute("itemcat", itemcat);
		
		Category dog = categoryDAO.getById("2");
		List<Product> itemdog = productDAO.findByCategory(dog);	
		model.addAttribute("itemdog", itemdog);
		return "index";
	}
}
