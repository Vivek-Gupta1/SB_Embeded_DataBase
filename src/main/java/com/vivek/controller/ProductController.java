package com.vivek.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.vivek.Repo.ProductRepo;
import com.vivek.entity.ProductEntity;

@Controller
public class ProductController {
	
	@Autowired
	private ProductRepo repo;
	
	@GetMapping("/record")
	public String getAlldata(Model model) {
//		List<ProductEntity> all = repo.findAll();
		model.addAttribute("products", repo.findAll());
		return "data";
		
	}
	
	@GetMapping("/")
  public String showForm(Model model) {
	  model.addAttribute("pr", new ProductEntity());
	  return "index";
  }
	
	@PostMapping("/products")
	public String handForm( @ModelAttribute("pr") ProductEntity pr,Model model) {
		repo.save(pr);
		  if(pr.getId() != null) {
			  model.addAttribute("msg", "Data Saved..");
			  
		  }
		return "index";
	}
	
	

}
