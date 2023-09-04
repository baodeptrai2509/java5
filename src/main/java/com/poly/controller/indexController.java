package com.poly.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.poly.DAO.AccountDAO;
import com.poly.entity.Account;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("Fami")
public class indexController {

	@Autowired
	HttpSession session;
	
	@GetMapping("lienhe")
	public String lienhe() {
		return "lienhe";
	}
	
	@GetMapping("gioithieu")
	public String thoithieu() {
		return "gioithieu";
	}
	
	@GetMapping("thanhtoan")
	public String cardtt() {
		return "cart-tt";
	}
	@GetMapping("doimk")
	public String doimk() {
		return "doimk";
	}
}
