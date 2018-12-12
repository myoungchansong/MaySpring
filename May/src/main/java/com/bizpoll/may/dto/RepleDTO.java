package com.bizpoll.may.dto;

import java.util.Date;

public class RepleDTO {
	private int rno;
	private String content;
	private String writer;
	private Date regdate;
	private int bno;
	public RepleDTO() {
		super();
	}
	public RepleDTO(int rno, String content, String writer, Date regdate, int bno) {
		super();
		this.rno = rno;
		this.content = content;
		this.writer = writer;
		this.regdate = regdate;
		this.bno = bno;
	}
	
	
	
	public RepleDTO(int rno, String content) {
		super();
		this.rno = rno;
		this.content = content;
	}
	public RepleDTO(String content, String writer, int bno) {
		super();
		this.content = content;
		this.writer = writer;
		this.bno = bno;
	}
	
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	@Override
	public String toString() {
		return "ReplyDTO [rno=" + rno + ", content=" + content + ", writer=" + writer + ", regdate=" + regdate
				+ ", bno=" + bno + "]";
	}
	
	
}
