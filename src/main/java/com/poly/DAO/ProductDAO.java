package com.poly.DAO;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.entity.Category;
import com.poly.entity.Product;
import com.poly.entity.ReportCountProduct;
import com.poly.entity.CartDetail;


public interface ProductDAO extends JpaRepository <Product,Integer>{

	List<Product> findByCategory(Category category);
	
	Page<Product> findAllByNameLike(String keywords, Pageable pageable);
	
	Page<Product> findAllByCategory(Category caterogy, Pageable pageable);
	
	
}
