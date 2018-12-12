package com.bizpoll.may.dto;

import java.sql.Date;

public class ProductDTO {
	private String p_code;
	private String p_name;
	private int p_good;
	private String p_img;
	private Date p_indate;
	
	

	public ProductDTO() {
		super();
	}



	public ProductDTO(String p_code, String p_name, int p_good, String p_img, Date p_indate) {
		super();
		this.p_code = p_code;
		this.p_name = p_name;
		this.p_good = p_good;
		this.p_img = p_img;
		this.p_indate = p_indate;
	}



	public ProductDTO(String p_code, String p_name, int p_good, String p_img) {
		super();
		this.p_code = p_code;
		this.p_name = p_name;
		this.p_good = p_good;
		this.p_img = p_img;
	}



	public String getP_code() {
		return p_code;
	}



	public void setP_code(String p_code) {
		this.p_code = p_code;
	}



	public String getP_name() {
		return p_name;
	}



	public void setP_name(String p_name) {
		this.p_name = p_name;
	}



	public int getP_good() {
		return p_good;
	}



	public void setP_good(int p_good) {
		this.p_good = p_good;
	}



	public String getP_img() {
		return p_img;
	}



	public void setP_img(String p_img) {
		this.p_img = p_img;
	}



	public Date getP_indate() {
		return p_indate;
	}



	public void setP_indate(Date p_indate) {
		this.p_indate = p_indate;
	}



	@Override
	public String toString() {
		return "ProductDTO [p_code=" + p_code + ", p_name=" + p_name + ", p_good=" + p_good + ", p_img=" + p_img
				+ ", p_indate=" + p_indate + "]";
	}
	

	
	
}
