package com.poly.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.poly.DAO.CategoryDAO;
import com.poly.DAO.ProductDAO;
import com.poly.entity.CartDetail;
import com.poly.entity.Product;
import com.poly.service.SessionService;
import jakarta.servlet.ServletContext;
import jakarta.servlet.http.HttpServletRequest;


@Controller
@RequestMapping("Fami")
public class SpDetailsController {
	@Autowired
	ProductDAO productDAO;
	@Autowired
	CategoryDAO categoryDAO;

	@Autowired
	SessionService session;

	@Autowired
	ServletContext app;
	
	@GetMapping("sanpham/edit/{id}")
	public String edit (Model model, @PathVariable("id")Integer id) {
	Product item = productDAO.findById(id).get();
	model.addAttribute("item", item);
	return "sp-detail";
	}
	
	@RequestMapping("sanpham")
	public String index(Model model) {
		Product item = new Product();
		model.addAttribute("item", item);
		model.addAttribute("check", false);
		return "sp-detail";
	}
	@PostMapping("sanpham/edit/{id}")
	public String add(@PathVariable("id") int id, Model model) {
//		//String quality = req.getParameter("quality");
//		Product product = productDAO.getById(id);			
//		CartDetail entity = new CartDetail ();
//		entity.setId(id);
//		entity.set(product.getImage());
//		entity.setName(product.getName());
//		entity.setPrice(product.getPrice());
//		entity.setQuantity(product.getQuantity());		
//		cart.add(id, entity);		
//		session.set("countProduct", cart.getCount());
		model.addAttribute("alert", "Thông báo!");
		model.addAttribute("content", "Sản phẩm đã được thêm vào giỏ hàng!");
		model.addAttribute("check", true);
		return "sp-detail";
	}
}
