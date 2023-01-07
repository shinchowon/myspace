package com.myspacecw.repository.vo;

import java.util.Date;

import lombok.Data;


@Data
public class Comment {
	private int no;
	private int commentNo;
	private String writer;
	private String content;
	private Date regDate;
}
