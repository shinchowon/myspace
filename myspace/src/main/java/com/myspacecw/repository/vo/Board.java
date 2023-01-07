package com.myspacecw.repository.vo;

import java.util.Date;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class Board {
	private int no;
	private String writer;
	private String title;
	private String content;
	private int viewCnt;
	private Date regDate;
	private int boardRePnum;
	private int boardReOnum;
	private int boardReDepth;
	private String stringDate;
	private List<MultipartFile> boardfile;
}
