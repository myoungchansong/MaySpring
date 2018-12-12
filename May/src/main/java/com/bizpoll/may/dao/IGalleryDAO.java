package com.bizpoll.may.dao;

import java.io.IOException;
import java.util.List;

import com.bizpoll.may.dto.ProductDTO;

public interface IGalleryDAO {

	
	public List<ProductDTO> allView() throws IOException; 
}
