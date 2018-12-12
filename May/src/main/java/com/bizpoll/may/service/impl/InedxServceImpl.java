package com.bizpoll.may.service.impl;

import java.io.IOException;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.bizpoll.may.dao.IIndexDAO;
import com.bizpoll.may.dto.ProductDTO;
import com.bizpoll.may.service.IIndexService;

@Service	//스프링 빈으로 인식되기 위해 @SERVICE 적용
public class InedxServceImpl implements IIndexService{

	@Inject
	private IIndexDAO iDao;
//	Inject 의존주입
//	Inject 자동으로 IIndexDAO의 구현체들을 모두 autowired해줌
//	그러기 위해서 영속계층 즉 IndexDAOImpl에는 @Repository가 있어야함 없으면 인식 불가
	@Override
	public List<ProductDTO> bestView() throws IOException {
		
		return iDao.bestView();
		
		
	}

	@Override
	public List<ProductDTO> newView() throws IOException {
		
		
		return iDao.newView();
	}
	
	
	
	
	
	
	
	
	
	
	
}
