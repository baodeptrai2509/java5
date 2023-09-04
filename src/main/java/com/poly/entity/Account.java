package com.poly.entity;

import java.util.List;


import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.Data;

@Data
@Entity
@Table(name = "Accounts")
public class Account {
	@Id
	String username;
	String password;
	String email;
	Boolean admin;
	String fullname;
	int Sdt;
	String address;
	Boolean activated;
	String image;
	@OneToMany(mappedBy = "account")
	List<Order> orders;
	
	@OneToMany(mappedBy = "account")
	List<Cart> carts;
}
