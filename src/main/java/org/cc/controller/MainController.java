package org.cc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/includes/*")
public class MainController {
	
	 @GetMapping("/header") 
	 public void viewHeader(){
	  log.info("header");
	  }
	 @GetMapping("/footer") 
	 public void viewFooter(){
	  log.info("footer");
	  }
	 
	 
}
