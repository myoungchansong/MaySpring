package com.bizpoll.may.controller;

import java.io.IOException;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bizpoll.may.service.IReplyService;

@RequestMapping("/reply/*")
@Controller
public class ReplyController {
	private static final Logger logger = LoggerFactory.getLogger(ReplyController.class);
	
	@Inject
	private IReplyService Service;
	
	
	@RequestMapping("commentlist")
	@ResponseBody
	public String commentlist(String bno, Model model) throws IOException {

		logger.info("=============> 댓글 리스트 출력");
		System.out.println(bno);
		
		model.addAttribute("replyList", Service.replyList(bno));
		
		return "blog/commentlist";
	}
	
}
