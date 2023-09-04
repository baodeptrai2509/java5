
package com.poly.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.DAO.CategoryDAO;
import com.poly.DAO.ProductDAO;
import com.poly.entity.Category;
import com.poly.entity.Product;

@Controller
@RequestMapping("Fami")
public class adminController {
	
	@GetMapping("quanli")
	public String quanli() {
		return "quanli";
	}
	
}
