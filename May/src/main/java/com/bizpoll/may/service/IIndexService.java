package com.bizpoll.may.service;

import java.io.IOException;
import java.util.List;

import com.bizpoll.may.dto.ProductDTO;

public interface IIndexService {
	//	인터페이스 => 추상매서드 생성 

	//	best상품 조회
	
	public List<ProductDTO> bestView() throws IOException;
//	신상품 조회
	
	public List<ProductDTO> newView() throws IOException;

}
