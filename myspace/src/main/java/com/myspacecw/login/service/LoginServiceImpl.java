package com.myspacecw.login.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myspacecw.repository.dao.UserDAO;
import com.myspacecw.repository.vo.User;


@Service
public class LoginServiceImpl implements LoginService {
	@Autowired
	private UserDAO dao; 
	
	// ------------------- 로그인 -------------------
	@Override
	public User login(User user) {
		return dao.login(user);
	}

}








