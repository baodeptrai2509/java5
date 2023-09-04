package com.poly.DAO;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.poly.entity.Account;
import com.poly.entity.Product;

public interface AccountDAO extends JpaRepository<Account, String> {

	Account findByUsernameAndPassword(String username, String password);

}
