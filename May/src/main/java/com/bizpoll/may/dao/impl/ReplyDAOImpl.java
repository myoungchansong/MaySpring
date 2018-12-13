package com.bizpoll.may.dao.impl;

import java.io.IOException;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.bizpoll.may.dao.IReplyDAO;
import com.bizpoll.may.dto.ReplyDTO;

@Repository
public class ReplyDAOImpl implements IReplyDAO{

	@Inject
	private SqlSession session;
	
	private static String namespace="com.bizpoll.may.mapper.replyMapper";
	
	@Override
	public List<ReplyDTO> replyList(String bno) throws IOException {
		
		
		return session.selectList(namespace+".replyList", bno);
	}

}
