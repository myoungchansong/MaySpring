package com.bizpoll.may.service;

import java.io.IOException;
import java.util.List;

import com.bizpoll.may.dto.ReplyDTO;

public interface IReplyService {

	
	public List<ReplyDTO> replyList(String bno) throws IOException;
	
	
}
