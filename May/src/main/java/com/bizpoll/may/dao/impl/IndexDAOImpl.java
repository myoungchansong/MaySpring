package com.bizpoll.may.dao.impl;

import java.io.IOException;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.bizpoll.may.dao.IIndexDAO;
import com.bizpoll.may.dto.ProductDTO;

@Repository
public class IndexDAOImpl implements IIndexDAO{

	@Inject
	private SqlSession session;
	
	// mybatis mapper의 경로
	private static String namespace="com.bizpoll.may.mapper.indexMapper";
	
	@Override
	public List<ProductDTO> bestView() throws IOException {
		
		return session.selectList(namespace+".bestView");
		
	}

	@Override
	public List<ProductDTO> newView() throws IOException {
		
		return session.selectList(namespace+".newView");
		
	}

}
