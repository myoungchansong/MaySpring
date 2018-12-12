package com.bizpoll.may.dao.impl;

import java.io.IOException;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.bizpoll.may.dao.IGalleryDAO;
import com.bizpoll.may.dto.ProductDTO;

@Repository
public class GalleryDAOImpl implements IGalleryDAO{

	
	@Inject
	private SqlSession session;
	
	
	private static String namespace="com.bizpoll.may.mapper.galleryMapper";
	
	@Override
	public List<ProductDTO> allView() throws IOException {

		return session.selectList(namespace+".allView");
	}

}
