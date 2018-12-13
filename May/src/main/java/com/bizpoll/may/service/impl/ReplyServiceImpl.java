package com.bizpoll.may.service.impl;


import java.io.IOException;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.bizpoll.may.dao.IReplyDAO;
import com.bizpoll.may.dto.ReplyDTO;
import com.bizpoll.may.service.IReplyService;

@Service
public class ReplyServiceImpl implements IReplyService{

	@Inject
	private IReplyDAO dao;
	
	@Override
	public List<ReplyDTO> replyList(String bno) throws IOException {
		
		return dao.replyList(bno);
		
	}

	
	
	
}
