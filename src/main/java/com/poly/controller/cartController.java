package com.poly.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.DAO.CartDAO;
import com.poly.DAO.CartDetailsDAO;
import com.poly.DAO.ProductDAO;
import com.poly.entity.Account;
import com.poly.entity.Cart;
import com.poly.entity.CartDetail;
import com.poly.entity.Product;
import com.poly.service.ParamService;
import com.poly.service.SessionService;

@Controller
@RequestMapping("Fami")
public class cartController {

	@Autowired
	SessionService sessionService;

	@Autowired
	CartDetailsDAO cartDetailsDAO;

	@Autowired
	CartDAO cartDAO;

	@Autowired
	ProductDAO productDAO;

	@Autowired
	ParamService paramService;

	@RequestMapping("cart")
	public String index(Model model) {
		Account acc = sessionService.get("user");

		if (acc == null) {
			return "cart";
		} else {
			Cart cart = cartDAO.findByAccountUsername(acc.getUsername());
			List<CartDetail> cartdetails = cartDetailsDAO.findByCartId(cart.getId());
			model.addAttribute("items", cartdetails);

			return "cart";
		}
	}

//	public void update(long id, Integer qty,CartDetail cartdetail) {
//		cartdetail.setQuantity(qty);
//		cartDetailsDAO.save(cartdetail);
//	}

	@RequestMapping("cart/update/{id}")
	public String update(@PathVariable("id") Integer id, @RequestParam("quantity") Integer quantity) {
		CartDetail cartdetail = cartDetailsDAO.findById(id).get();
		cartdetail.setQuantity(quantity);
		cartDetailsDAO.save(cartdetail);
		return "redirect:/Fami/cart";
	}

	@RequestMapping("cart/add/{productid}")
	public String add(Model model, CartDetail cartdetail, @PathVariable("productid") Integer productid) {
		Account acc = sessionService.get("user");
		Cart cart = cartDAO.findByAccountUsername(acc.getUsername());
		Product product = productDAO.findById(productid).get();
		int idcart = cart.getId();
		CartDetail cartcheck = cartDetailsDAO.findByProduct(product);
		if (cartcheck != null) {
			update(idcart, cartcheck.getQuantity()+1);
		} else {
			cartdetail.setCart(cart);
			cartdetail.setProduct(product);
			cartdetail.setQuantity(1);
			cartDetailsDAO.save(cartdetail);
		}

		return "redirect:/Fami/cart";
	}

	@RequestMapping("cart/remove/{id}")
	public String remove(@PathVariable("id") Integer id) {
		cartDetailsDAO.deleteById(id);
		return "redirect:/Fami/cart";
	}
}
