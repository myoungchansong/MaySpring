package com.bizpoll.may.dao;

import java.io.IOException;

import com.bizpoll.may.dto.MayMemberDTO;


public interface IMemberDAO {

	
	public MayMemberDTO login(MayMemberDTO mdto) throws IOException; 
	
	
	public String idCheck(String id) throws IOException;
	
	
	public int PlayInsert(MayMemberDTO mdto) throws IOException;
	
	public int mypage(MayMemberDTO dto) throws IOException;
	
	public int pwupdate(MayMemberDTO dto) throws IOException;
	
	public String pwCheck(MayMemberDTO dto) throws IOException;
	
	public int delete(String id) throws IOException;
	
}
