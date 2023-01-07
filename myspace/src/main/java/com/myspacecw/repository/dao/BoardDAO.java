package com.myspacecw.repository.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.myspacecw.repository.vo.Board;

public interface BoardDAO {
	
	void insertBoard(Board board);
	int selectBoardCount();
	Board selectOneBoard(int no);
	void updateViewCnt(int no);
	void updateBoard(Board board);
	int deleteBoard(int no);

	void commentaire(Board board);
	void commentaire2(Board board);
	
}
