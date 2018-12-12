package com.bizpoll.may.service;

import java.io.IOException;
import java.util.List;

import com.bizpoll.may.dto.CriteriaDTO;
import com.bizpoll.may.dto.blogDTO;

public interface IBlogService {
	
//	게시글 목록 조회
	
	public List<blogDTO> listAll(CriteriaDTO criDto) throws IOException;
	
// 게시글 총갯수 구하기
	
	public int listCount(CriteriaDTO criDto) throws IOException;
	
//	게시글 상세보기
	public blogDTO viewblog(int bno) throws IOException;
	
//	게시글 등록
	public void registerBlog(blogDTO bDTO) throws IOException;
	
//	게시글 수정
	
	public void modifyBlog(blogDTO bDTO) throws IOException;
	
//	게시글 삭제
	
	public void removeBlog(int bno) throws IOException;
	
}
