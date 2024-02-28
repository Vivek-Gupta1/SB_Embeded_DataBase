package com.vivek.Repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.vivek.entity.ProductEntity;

public interface ProductRepo extends JpaRepository<ProductEntity, Integer> {
	
	

}
