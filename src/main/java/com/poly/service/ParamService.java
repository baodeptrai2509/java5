package com.poly.service;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.management.RuntimeErrorException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import jakarta.servlet.http.HttpServletRequest;

@Service
public class ParamService {
	@Autowired
	HttpServletRequest req;

	/**
	 * * Đọc chuỗi giá trị của tham số 
	 * * @param name tên tham số 
	 * * @param defaultValue giá trị mặc định 
	 * * @return giá trị tham số hoặc giá trị mặc định nếu không tồn tại
	 */
	public String getString(String name, String defaultValue) {
		if(name != null) {
			return req.getParameter(name);
		}
		return defaultValue;
				
	}

	/**
	 * * Đọc số nguyên giá trị của tham số 
	 * * @param name tên tham số 
	 * * @param defaultValue giá trị mặc định 
	 * * @return giá trị tham số hoặc giá trị mặc định nếu không tồn tại
	 */
	public int getInt(String name, int defaultValue) {
		if(name != null) {
			return Integer.parseInt(req.getParameter(name));
		}
		return defaultValue;
	}

	/**
	 * * Đọc số thực giá trị của tham số 
	 * * @param name tên tham số 
	 * * @param defaultValue giá trị mặc định 
	 * * @return giá trị tham số hoặc giá trị mặc định nếu không tồn tại
	 */
	public double getDouble(String name, double defaultValue) {
		if(name != null) {
			return Double.parseDouble(req.getParameter(name));
		}
		return defaultValue;
	}

	/**
	 * * Đọc giá trị boolean của tham số 
	 * * @param name tên tham số 
	 * * @param defaultValue giá trị mặc định 
	 * * @return giá trị tham số hoặc giá trị mặc định nếu không tồn tại
	 */
	public boolean getBoolean(String name, boolean defaultValue) {
		if(name != null) {
			return Boolean.parseBoolean(req.getParameter(name));
		}
		return defaultValue;
	}

	/**
	 * Đọc giá trị thời gian của tham số
	 * 
	 * @param name    tên tham số
	 * @param pattern là định dạng thời gian
	 * @return giá trị tham số hoặc null nếu không tồn tại
	 * @throws RuntimeException lỗi sai định dạng
	 */
	public Date getDate(String name, String pattern) {
		try {
			SimpleDateFormat formatter = new SimpleDateFormat();
			String temp = req.getParameter(name);
			Date date = formatter.parse(temp);
			return date;
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}

	/**
	 * Lưu file upload vào thư mục
	 * 
	 * @param file chứa file upload từ client
	 * @param path đường dẫn tính từ webroot
	 * @return đối tượng chứa file đã lưu hoặc null nếu không có file upload
	 * @throws RuntimeException lỗi lưu file
	 */
	public File save(MultipartFile file, String path) {
		File dir = new File(req.getServletContext().getRealPath(path));
		if(!dir.exists()) {
			dir.mkdir();
		}
		
		try {
			File saveFile = new File(dir, file.getOriginalFilename());
			file.transferTo(saveFile);
			return saveFile;
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
}
