package com.poly.controller;
import java.util.List;
import jakarta.servlet.http.HttpSession;
import com.poly.entity.Account;
import com.poly.DAO.AccountDAO;
import com.poly.service.ParamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
@RequestMapping("Fami")
public class register {
	@Autowired
	AccountDAO accountDAO;
	@Autowired
	ParamService paramService;
	@Autowired
	HttpSession session;
	
	@GetMapping("dangki")
	public String sigupn(Model model) {
		Account item = new Account();
	    model.addAttribute("item", item);
	    return "dangki";
	}
	
	@PostMapping("dangki")
	public String register(@ModelAttribute("item") Account item, Model model){
		String un = paramService.getString("username", "");
	    String pw = paramService.getString("password", "");
	    String cf = paramService.getString("confirm", "");
	    String fullname = paramService.getString("fullname", "");
	    int phone = paramService.getInt("Sdt", 0);
	    String address = paramService.getString("address", "");
	    String email = paramService.getString("email", "");
	    Account acc = accountDAO.findById(un).orElse(null);
	    if (acc != null) {
	        model.addAttribute("message", "Tên đăng nhập đã tồn tại, vui lòng chọn tên đăng nhập khác.");
	        return "dangki";
	    }
		if(!pw.equals(cf)) {
			model.addAttribute("message", "Pass và Confirm không khớp !");
			return "dangki";
		}else {
		Account newAccount = new Account();
	    newAccount.setUsername(un);
	    newAccount.setPassword(pw);
	    newAccount.setEmail(email);
	    newAccount.setAdmin(false);
	    newAccount.setFullname(fullname);
	    newAccount.setSdt(phone);
	    newAccount.setAddress(address);
	    newAccount.setActivated(true);
		newAccount.setImage(null);
		accountDAO.save(newAccount);
		model.addAttribute("message", "Tạo thành công !");
		return "dangki";
	}
		
					
}
}
