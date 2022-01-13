package org.cc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/product/*")
public class ProductController {
	
	@GetMapping("/custom")
	public void viewCustom() {
		log.info("custom");
	}
	
	@GetMapping("/detail")
	public void viewDetail() {
		log.info("detail");
	}
}