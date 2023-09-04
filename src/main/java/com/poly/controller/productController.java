package com.poly.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.poly.DAO.CategoryDAO;
import com.poly.DAO.ProductDAO;
import com.poly.entity.Category;
import com.poly.entity.Product;
import com.poly.service.SessionService;

import jakarta.servlet.ServletContext;

@Controller
@RequestMapping("Fami")
public class productController {
	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	CategoryDAO categoryDAO;
	
	@Autowired
	SessionService session;
	
	@Autowired
	ServletContext app;
	
	@RequestMapping("product")
	public String index(Model model, @RequestParam("keywords") Optional<String> kw,
			@RequestParam("p") Optional<Integer> p) {
		Product item = new Product();
		model.addAttribute("item", item);
		String kwords = kw.orElse(session.get("keywords"));
		session.set("keywords", kwords);
		Pageable pageable = PageRequest.of(p.orElse(0), 6);
		Page<Product> page = productDAO.findAllByNameLike("%" + kwords + "%", pageable);
		model.addAttribute("page", page);
		return "productadmin";
	}
//	
//	@RequestMapping("product/search")
//	public String searchAndPage(Model model, @RequestParam("keywords") Optional<String> kw,
//			@RequestParam("p") Optional<Integer> p) {
//		String kwords = kw.orElse(session.get("keywords"));
//		session.set("keywords", kwords);
//		Pageable pageable = PageRequest.of(p.orElse(0), 6);
//		Page<Product> page = productDAO.findAllByNameLike("%" + kwords + "%", pageable);
//		model.addAttribute("page", page);
//		return "productdetails";
//	}
	
	@RequestMapping("product/create")
	public String create(Model model,Product item, @RequestParam("photo_file") MultipartFile img)
			throws IllegalStateException, IOException {
		String filename = img.getOriginalFilename();
		File file = new File(app.getRealPath("/images/" + filename));
		img.transferTo(file);
		item.setImage(filename);
		productDAO.save(item);
		model.addAttribute("message", "Thêm sản phẩm thành công");
		return "redirect:/Fami/product";
	}
	
	@RequestMapping("product/edit/{id}")
	public String edit(Model model, @PathVariable("id") Integer id, @RequestParam("keywords") Optional<String> kw,
			@RequestParam("p") Optional<Integer> p) {
		Product item = productDAO.findById(id).get();
		model.addAttribute("item", item);
		String kwords = kw.orElse(session.get("keywords"));
		session.set("keywords", kwords);
		Pageable pageable = PageRequest.of(p.orElse(0), 6);
		Page<Product> page = productDAO.findAllByNameLike("%" + kwords + "%", pageable);
		model.addAttribute("page", page);
		return "productadmin";
	}
	
	@RequestMapping("product/update")
	public String update(Model model,Product item, @RequestParam("photo_file") MultipartFile img)
			throws IllegalStateException, IOException {
		String filename = img.getOriginalFilename();
		File file = new File(app.getRealPath("/images/" + filename));
		img.transferTo(file);
		item.setImage(filename);
		productDAO.save(item);
		model.addAttribute("message", "Sửa sản phẩm thành công");
		return "redirect:/Fami/product";
	}
	
	@RequestMapping("product/delete/{id}")
	public String delete(@PathVariable("id") Integer id) {
		productDAO.deleteById(id);
		return "redirect:/Fami/product";
	}
	
	@ModelAttribute("list_category")
	public Map<String, String> getCategory() {
		Map<String, String> map = new HashMap<>();

		List<Category> categoryitems = categoryDAO.findAll();
		for (Category item : categoryitems) {
			map.put(item.getId(), item.getName());
		}
		
		return map;
	}
}
