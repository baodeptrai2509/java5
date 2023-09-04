package com.poly.DAO;

import org.springframework.data.jpa.repository.JpaRepository;

import com.poly.entity.OrderDetail;

public interface OrderDetailsDAO extends JpaRepository <OrderDetail,Integer> {

}
