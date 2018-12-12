package com.bizpoll.may.controller;

import java.io.IOException;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bizpoll.may.service.IGalleryService;

@Controller
public class galleryController {
	
	private static final Logger Logger = LoggerFactory.getLogger(galleryController.class);

	@Inject
	private IGalleryService service;

	@RequestMapping("gallery")
	public String galleryView(Model model) throws IOException{
		Logger.info("====> gallery 페이지 출력");
		
//		전체 사진 출력
		
		model.addAttribute("allView", service.allView());
		
		return"gallery";
	}
}
