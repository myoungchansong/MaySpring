package com.bizpoll.may.dao;

import java.io.IOException;
import java.util.List;

import com.bizpoll.may.dto.ReplyDTO;

public interface IReplyDAO {

	
	public List<ReplyDTO> replyList(String bno) throws IOException;
	
}
