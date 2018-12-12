package com.bizpoll.may.controller;

import java.io.IOException;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bizpoll.may.service.IIndexService;

@Controller
public class indexController {
	
	private static final Logger logger = LoggerFactory.getLogger(indexController.class);
	
	@Inject
	private IIndexService service;
	
	@RequestMapping("/index")
	public String indexView(Model model) throws IOException{
		logger.info("====> index 페이지 출력");
		
//		베스트 사진
		model.addAttribute("bestlist", service.bestView());
		
		
//		새로운 사진
		model.addAttribute("newView", service.newView());
		
		
		return"index";
	}
	
}
