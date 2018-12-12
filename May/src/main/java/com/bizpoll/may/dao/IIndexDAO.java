package com.bizpoll.may.dao;

import java.io.IOException;
import java.util.List;

import com.bizpoll.may.dto.ProductDTO;

public interface IIndexDAO {
	
//	베스트 상품 목록조회
	public List<ProductDTO> bestView() throws IOException; 
//	신상품 목록조회
	public List<ProductDTO> newView() throws IOException; 
}
