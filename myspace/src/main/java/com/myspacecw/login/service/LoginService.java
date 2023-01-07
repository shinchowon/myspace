package com.myspacecw.login.service;

import java.util.List;

import com.myspacecw.repository.vo.User;


public interface LoginService {
	// ------------------- 로그인 -------------------
	User login(User user);
	
}
