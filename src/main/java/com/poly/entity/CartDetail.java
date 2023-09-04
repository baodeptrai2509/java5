package com.poly.entity;

import java.util.Date;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import lombok.Data;

@Data
@Entity
@Table(name = "Cartdetails")
public class CartDetail {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	long id;
	Integer quantity;
	@Temporal(TemporalType.DATE)
	@Column(name = "Createdate")
	Date createDate = new Date();
	
	@ManyToOne
	@JoinColumn(name = "Productid")
	Product product;
	
	@ManyToOne
	@JoinColumn(name = "Cartid")
	Cart cart;
}
