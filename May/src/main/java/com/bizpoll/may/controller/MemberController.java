package com.bizpoll.may.controller;


import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;
import javax.xml.ws.Service;

import org.aspectj.lang.annotation.AfterReturning;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bizpoll.may.dto.MayMemberDTO;
import com.bizpoll.may.service.IIndexService;
import com.bizpoll.may.service.IMemberService;

@Controller
@RequestMapping("member/*")

public class MemberController {

	private static final Logger Logger = LoggerFactory.getLogger(MemberController.class);
	
	@Inject
	private IMemberService service;
	
	@RequestMapping(value="login", method=RequestMethod.GET)
	public String login(){
		
		Logger.info("=============> 로그인 viewGET");
		return"login";
	}
	
	

	
	@RequestMapping(value="login", method=RequestMethod.POST)
	@ResponseBody
	public String loginAction(MayMemberDTO mdto, HttpSession session) throws IOException{
		
		Logger.info("=============> 로그인 Action POST");
		Logger.info(mdto.toString());
		
		mdto =service.login(mdto);
		Logger.info("=============> return 값 받아옴POST");
		String message = null;
		if(mdto != null) {	//로그인 성공
			Logger.info("=============> 로그인 성공 POST");
			//session 값에 login된 회원정보를 담아야함 
			session.removeAttribute("id");	//혹시 모를  기존의 남아있는 값을 제거
			session.setAttribute("loginUser", mdto);
			message ="1";
			
		} else {
			message ="-1";
			Logger.info("=============> 로그인 실패 POST");
		}
		Logger.info("=============>return값"+message);
		return message;
	}
	
	@RequestMapping("logout")
	public String logout(HttpSession session){
		
		Logger.info("=============> 로그아웃 ");
		
		if(session!=null)	{
			session.invalidate();
	}
	
		return"redirect:/index";
	}

	@RequestMapping("Construct")
	public String construct() {
		Logger.info("=============> 이용약관 동의");
		
		return"construct";
	}
	
/*==========================================================================================*/	
	
	@RequestMapping(value ="Insert",  method=RequestMethod.GET)
	public String memberInsert() {
		Logger.info("=============> 회원가입 GET");
		
		return"member";
	}
	
	
	@RequestMapping(value ="Insert",  method=RequestMethod.POST)
	public String memberPalyInsert(MayMemberDTO mdto) throws IOException {
		Logger.info("=============> 회원가입 POST");
		Logger.info(mdto.toString());

		int result = service.PlayInsert(mdto);
	
		if(result > 0) {
			Logger.info("=============> 회원가입 성공");
			return"member_join";
		} else {
			Logger.info("=============> 회원가입 실패");
			return"redirect:/Insert";
		}
	
	}
	
	
	@RequestMapping("idCheck")
	@ResponseBody
	public String idCheckAction(String id) throws IOException {
		Logger.info("=============> 아이디확인");
		
		String result = service.idCheckAction(id);
		
		String data=null;
		if (result != null) {
			data="-1";
		} else {
			data="1";
		}
		
		System.out.println("===========>"+data);
		return data;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping("update")
	public  String update() {
		Logger.info("=============> 수정할 정보 선택 페이지");
		return"update";
	}
	
	
	
	@RequestMapping(value="mypage", method=RequestMethod.GET)
	public String mapageAction() {
		Logger.info("=============> GET멤버 정보 수정(비밀번호 제외)");
		return"Member_update";
	}
	
	
	@RequestMapping(value="mypage", method=RequestMethod.POST)
	public String mapageplayAction(MayMemberDTO mdto, HttpSession session) throws IOException {
		
		Logger.info("=============> POST멤버 정보 수정(비밀번호 제외)");
		Logger.info(mdto.toString());
		
		int reuslt = service.mypage(mdto);
		if(reuslt>0) {
			session.removeAttribute("id");
			session.setAttribute("loginUser", mdto);
			return"memberupdate_join";
			
		}else {
			
			return"redirect:/mypage";
		}
		
	}
	
	
	
	
	@RequestMapping("pwCheck")
	@ResponseBody
	public String pwCheck(MayMemberDTO mdto) throws IOException{
		
		Logger.info("=============> 비밀번호 체크 ");
		Logger.info(mdto.toString());
		
		String result = service.pwCheck(mdto);
		System.out.println(result);
		String data= null;
		if (result != null) {
			
			data= "1";
			
		} else {
			
			data= "-1";
		}
		
		System.out.println("===========>"+data);
		return data;
	}
		
		
	@RequestMapping(value="pwupdate", method=RequestMethod.GET)
	public String pwupdateAction() {
		
		Logger.info("=============> GET비밀번호 수정 페이지");
		
		return"Memberps_update";
	}
	
	
	@RequestMapping(value="pwupdate", method=RequestMethod.POST)
	public String pwupdateplayAction(MayMemberDTO mdto)throws IOException {
		
		Logger.info("=============> POST비밀번호 수정 페이지");
		
		Logger.info(mdto.toString());
		
		int result = service.pwupdate(mdto);
		System.out.println("============>"+result);
		if(result > 0) {
			
			return"pwudate_join";
					
		} else {
			
			return"redirect:/pwdatae";
		}
		
		
		
		
	}
	
	@RequestMapping(value="delete", method=RequestMethod.GET)
	public String deleteAction() {
		Logger.info("=============> GET회원 삭제 페이지");
		return"Member_Delete";
		
	}
	
	@RequestMapping(value="delete", method=RequestMethod.POST)
	public String deleteplayAction(MayMemberDTO mdto, HttpSession session)throws IOException {
		Logger.info("=============> POST회원 삭제 페이지");
		
		int result = service.delete(mdto);
		
		System.out.println("====================>"+result);
		if(result > 0) {
			System.out.println("회원삭제");
				if(session != null) {
					session.invalidate();
					
				}
				
			return"delete_join";
		} else {
			
			return"redirect:/delete";
		}
	}

	
}
