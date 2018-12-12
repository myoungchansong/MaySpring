package com.bizpoll.may.service;

import java.io.IOException;

import com.bizpoll.may.dto.MayMemberDTO;


public interface IMemberService {
	
	public MayMemberDTO login(MayMemberDTO dto) throws IOException;
	
	public String idCheckAction(String id) throws IOException;
	
	public int PlayInsert(MayMemberDTO dto) throws IOException;
	
	public int mypage(MayMemberDTO dto) throws IOException;
	
	public int pwupdate(MayMemberDTO dto) throws IOException;
	
	public String pwCheck(MayMemberDTO dto) throws IOException;
	
	public int delete(String id) throws IOException;
}
