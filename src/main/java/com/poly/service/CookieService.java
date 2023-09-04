package com.poly.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Service
public class CookieService {
	@Autowired
	HttpServletRequest req;
	
	@Autowired
	HttpServletResponse resp;
	
	public Cookie get(String name) {
		Cookie[] c = req.getCookies();
		
		if(c != null) {
			for(Cookie cookie: c) {
				if(cookie.getName().equalsIgnoreCase(name)) {
					return cookie;
				}
			}
		}
		
		return null;
	}
	
	public String getValue(String name) {
		Cookie[] c  = req.getCookies();
		if(c != null) {
			for(Cookie cookie: c) {
				if(cookie.getName().equalsIgnoreCase(name)) {
					return cookie.getValue();
				}
			}
		}
		
		return null;
	}
	
	public Cookie add(String name, String value, int hours) {
		Cookie c = new Cookie(name, value);
		c.setMaxAge(hours * 60 * 60);
		c.setPath("/");
		resp.addCookie(c);
		return c;
	}
	
	public void remove(String name) {
		Cookie c = new Cookie(name, "");
		c.setMaxAge(0);
		c.setPath("/");
		resp.addCookie(c);
	}
}
