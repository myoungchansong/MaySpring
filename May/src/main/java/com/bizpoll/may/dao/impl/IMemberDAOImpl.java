package com.bizpoll.may.dao.impl;

import java.io.IOException;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.bizpoll.may.dao.IMemberDAO;
import com.bizpoll.may.dto.MayMemberDTO;

@Repository
public class IMemberDAOImpl implements IMemberDAO{
	
	@Inject
	private SqlSession session;

	private static String namespace="com.bizpoll.may.mapper.memberMapper";
	
	@Override
	public MayMemberDTO login(MayMemberDTO mdto) throws IOException {
		// TODO Auto-generated method stub
		
		return session.selectOne(namespace+".login", mdto);
		
	}
	
	public String idCheck(String id) throws IOException{
		
		return session.selectOne(namespace+".idCheck", id);
		
	}
	
	public int PlayInsert(MayMemberDTO mdto) throws IOException{
		
		return session.insert(namespace+".PlayInsert", mdto);
	}

	public int mypage(MayMemberDTO dto) throws IOException{
		
		return session.update(namespace+".mypage", dto);
	}
	
	public int pwupdate(MayMemberDTO dto) throws IOException{
		return session.update(namespace+".pwupdate",dto);
	}
	
	
	
	public String pwCheck(MayMemberDTO dto) throws IOException{
		
		return session.selectOne(namespace+".pwCheck", dto);
		
	}
	

	public int delete(String id) throws IOException{
		
		return session.delete(namespace+".delete", id);
	}
	
}
