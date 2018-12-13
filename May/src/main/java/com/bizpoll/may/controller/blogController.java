package com.bizpoll.may.controller;

import java.io.IOException;
import java.util.Date;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bizpoll.may.dto.CriteriaDTO;
import com.bizpoll.may.dto.PageMakerDTO;
import com.bizpoll.may.dto.blogDTO;
import com.bizpoll.may.service.IBlogService;

@RequestMapping("/blog/*")
@Controller
public class blogController {
	private static final Logger logger = LoggerFactory.getLogger(blogController.class);
	
	@Inject
	private IBlogService Service;
	
	@RequestMapping("list")
	public String blogList(CriteriaDTO criDto, PageMakerDTO pageMaker, Model model) throws IOException{
//		게시판 목록 조회
		logger.info("=============> 게시글 목록 출력");
		logger.info(criDto.toString());
		model.addAttribute("code", criDto.getCode());
		
		
		
		if(criDto.getKeyword() !=null) {
			
			
			model.addAttribute("flag", criDto.getFlag());
			model.addAttribute("keyword", criDto.getKeyword());
			
			
		}
//		servlet : dao
//		spring : service -> dao
		
		model.addAttribute("blogList", Service.listAll(criDto));
		
//		현재 날짜 계산
		Date today = new Date();
		model.addAttribute("today", today);
		
//		페이지 네이션 생성
		
		pageMaker.setCriDto(criDto);
		pageMaker.setTotalCount(Service.listCount(criDto));
		model.addAttribute("pageMaker", pageMaker.getTotalCount());
		model.addAttribute("pageMaker", pageMaker);
		
		
		return "blog/blog";
	}
	
	
	
	
	
	
	
//	게시글 등록
	@RequestMapping(value="register", method=RequestMethod.GET)
	public String blogRegisterView() throws IOException{
		logger.info("=============> 게시글 등록 View");
		
		
		return "blog/mg";
	}
	
//	Action
	@RequestMapping(value="register",  method=RequestMethod.POST)
	public String blogRegisterAction(blogDTO bDto) throws IOException{
//		name명  ==  dto클래스의  변수명
		logger.info("=============> 게시글 등록 액션");
		bDto.setFilename("-");
		bDto.setFilesize(0);
		logger.info(bDto.toString());
		Service.registerBlog(bDto);
		
		return "redirect:/blog/list";
//		redirect o = > controller
//		redirect x = > servlet-context.xml에있는 viewresolver
	}
	
	
	
	@RequestMapping("view")
	public String blogView(int bno, Model model) throws IOException{
		logger.info("========>상세게시글 출력");
		logger.info("BNO=============>"+bno);
		
	
		model.addAttribute("blogview", Service.viewblog(bno));
		
		
		return"/blog/ig";
	}
	
	
	

	
	
//	게시글 수정 VIEW
	@RequestMapping(value="modify", method=RequestMethod.GET)
	public String blogModifyView(int bno, Model model) throws IOException{
			logger.info("==============> 게시글 수정 view");
			
			model.addAttribute("blogview", Service.viewblog(bno));
			
			return "/blog/updateblog";
			
		}
	
	
//	게시글 수정 ACTION
	@RequestMapping(value="modify", method=RequestMethod.POST)
	public String blogModifyAction(blogDTO bDto) throws IOException{
			logger.info("==============> 게시글 수정 viewAction");
			logger.info(bDto.toString());
			
			Service.modifyBlog(bDto);
			
			return "redirect:/blog/list";
			
		}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
//	게시글 삭제
	@RequestMapping("remove")
	public String blogRemove(int bno) throws IOException{
		
		logger.info("=============>게시글 삭제");
//		댓글삭제  / 첨부 파일삭제 
		
		Service.removeBlog(bno);
		
		return "redirect:/blog/list";
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}
}
