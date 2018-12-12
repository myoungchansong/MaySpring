package com.bizpoll.may.service.impl;

import java.io.IOException;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.bizpoll.may.dao.IGalleryDAO;
import com.bizpoll.may.dto.ProductDTO;
import com.bizpoll.may.service.IGalleryService;
@Service
public class GalleryServiceImpl implements IGalleryService{

	@Inject
	private IGalleryDAO dao;
	
	@Override
	
	public List<ProductDTO> allView() throws IOException {
		// TODO Auto-generated method stub
		return dao.allView();
	}

}
