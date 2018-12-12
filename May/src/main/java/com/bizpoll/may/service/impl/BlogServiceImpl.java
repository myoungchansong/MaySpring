package com.bizpoll.may.service.impl;

import java.io.IOException;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.bizpoll.may.dao.IBlogDAO;
import com.bizpoll.may.dto.CriteriaDTO;
import com.bizpoll.may.dto.blogDTO;
import com.bizpoll.may.service.IBlogService;

@Service
public class BlogServiceImpl implements IBlogService{
	
	@Inject
	private IBlogDAO bDao;
	
	@Override
	public List<blogDTO> listAll(CriteriaDTO criDto) throws IOException {
		
		return bDao.listAll(criDto);
		
	}

	@Override
	public int listCount(CriteriaDTO criDto) throws IOException {
		
		return bDao.listCount(criDto);
		
	}

	@Override
	public blogDTO viewblog(int bno) throws IOException {
		// TODO Auto-generated method stub
		return bDao.viewblog(bno);
	}

	@Override
	public void registerBlog(blogDTO bDTO) throws IOException {
		
		bDao.registerBlog(bDTO);
	}

	@Override
	public void modifyBlog(blogDTO bDTO) throws IOException {

		bDao.modifyBlog(bDTO);
		
	}

	@Override
	public void removeBlog(int bno) throws IOException {
		
		bDao.removeBlog(bno);
		
	}

}
