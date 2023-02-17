package com.myspacecw.login.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.myspacecw.login.service.LoginService;
import com.myspacecw.repository.vo.User;

@Controller("com.myspacecw.main.controller.LoginController")

public class LoginController {
	
	@Autowired
	private LoginService service;
	
	
	@RequestMapping("/login/loginform.do")
	public void LoginForm() {	
		System.out.println("////////////////////////////////");
		System.out.println("로그인페이지");
		System.out.println("////////////////////////////////");
	}
	
	@RequestMapping("/login/login.do")
	@ResponseBody 
	 public String login(User user, HttpSession session) {
		User users = service.login(user);
		System.out.println("////////////////////////////////");
		System.out.println(users);
		System.out.println(users.getName());
		System.out.println(users.getAuth());
		System.out.println("////////////////////////////////");
		if(users == null) {
			return "redirect:/main.do";
		}
		
		//else if(users.getAuth() == "99") {
		//}
		//session.setAttribute("users", users);
		return "s";
	}


}
