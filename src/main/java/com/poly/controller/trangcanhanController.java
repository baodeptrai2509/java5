package com.poly.controller;

import java.io.File;
import java.io.IOException;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;


import com.poly.DAO.AccountDAO;
import com.poly.entity.Account;
import com.poly.service.SessionService;

import jakarta.servlet.ServletContext;

@Controller
@RequestMapping("Fami")
public class trangcanhanController {
	
	@Autowired
	AccountDAO accountDAO;

	@Autowired
	SessionService session;
	
	@Autowired
	ServletContext app;
	
	@RequestMapping("trangcanhan")
	public String index(Model model,
			@RequestParam("p") Optional<Integer> p) {
		Account item = new Account();
		model.addAttribute("item", item);
		Pageable pageable = PageRequest.of(p.orElse(0), 6);
		Page<Account> page = accountDAO.findAll( pageable);
		model.addAttribute("page", page);
		return "trangcanhan";
	}
	
	@RequestMapping("trangcanhan/update")
	public String update(Model model,Account item, @RequestParam("photo_file") MultipartFile img)
			throws IllegalStateException, IOException {
		String filename = img.getOriginalFilename();
		File file = new File(app.getRealPath("/images/" + filename));
		img.transferTo(file);
		item.setAdmin(false);
		item.setActivated(true);
		item.setImage(filename);
		accountDAO.save(item);
		model.addAttribute("message", "Sửa sản phẩm thành công");
		return "redirect:/Fami/trangcanhan";
	}
}
