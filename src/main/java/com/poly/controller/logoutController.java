package com.poly.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.service.SessionService;

@Controller
@RequestMapping("Fami")
public class logoutController {
	@Autowired
	SessionService sessionService;
	@RequestMapping("logout")
	public String logout() {
		sessionService.remove("user");
		
		return "redirect:home";
	}
}
