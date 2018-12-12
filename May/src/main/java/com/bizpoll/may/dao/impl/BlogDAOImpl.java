package com.bizpoll.may.dao.impl;

import java.io.IOException;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.bizpoll.may.dao.IBlogDAO;
import com.bizpoll.may.dto.CriteriaDTO;
import com.bizpoll.may.dto.blogDTO;

@Repository
public class BlogDAOImpl implements IBlogDAO{

	@Inject
	private SqlSession session;
	
	private static String namespace="com.bizpoll.may.mapper.blogMapper";
	
	@Override
	public List<blogDTO> listAll(CriteriaDTO criDto) throws IOException {

		return session.selectList(namespace +".blogList", criDto);
		
		
	}

	@Override
	public int listCount(CriteriaDTO criDto) throws IOException {
		
		return session.selectOne(namespace + ".countPaging", criDto);
		
	}

	@Override
	public blogDTO viewblog(int bno) throws IOException {
		
		return session.selectOne(namespace +".blogDetailView", bno);
	}

	
	
	@Override
	public void registerBlog(blogDTO bDTO) throws IOException {
		
		session.insert(namespace+".registerBlog", bDTO);
		
	}

	@Override
	public void modifyBlog(blogDTO bDTO) throws IOException {
		
		session.update(namespace+".blogupdate", bDTO);
	}

	@Override
	public void removeBlog(int bno) throws IOException {
		
		
		session.delete(namespace+".blogdelete", bno);
	}

}
