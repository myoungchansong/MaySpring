package com.bizpoll.may.service;

import java.io.IOException;
import java.util.List;

import com.bizpoll.may.dto.ProductDTO;

public interface IGalleryService {
	
	
//	전체 사진 출력
	public List<ProductDTO> allView() throws IOException;
	
}
