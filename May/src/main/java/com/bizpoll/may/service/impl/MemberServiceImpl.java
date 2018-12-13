package com.bizpoll.may.service.impl;

import java.io.IOException;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.bizpoll.may.dao.IMemberDAO;
import com.bizpoll.may.dto.MayMemberDTO;
import com.bizpoll.may.service.IMemberService;

@Service
public class MemberServiceImpl implements IMemberService{
	
	@Inject
	private IMemberDAO mDao;

	@Override
	public MayMemberDTO login(MayMemberDTO dto) throws IOException {
		
		return mDao.login(dto);
	}
	@Override 
	public String idCheckAction(String id) throws IOException{
		
		return mDao.idCheck(id);
	}
	
	@Override 
	public int PlayInsert(MayMemberDTO dto) throws IOException{
		
		return mDao.PlayInsert(dto);
		
	}
	@Override
	public int mypage(MayMemberDTO dto) throws IOException{
		
		return mDao.mypage(dto);
		
	}
	@Override
	public int pwupdate(MayMemberDTO dto) throws IOException{
		
		return mDao.pwupdate(dto);
	}
	
	@Override
	public String pwCheck(MayMemberDTO dto) throws IOException{
		
		return mDao.pwCheck(dto);
		
	}
	
	public int delete(MayMemberDTO mdto) throws IOException{
		
		return mDao.delete(mdto);
	}
	
}
