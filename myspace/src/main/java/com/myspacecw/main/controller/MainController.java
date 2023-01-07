package com.myspacecw.main.controller;


import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.myspacecw.repository.vo.User;

@Controller("com.myspacecw.main.controller.MainController")
public class MainController {
	
	@RequestMapping("/main.do")
	public void Main() {	
		System.out.println("////////////////////////////////");
		System.out.println("///???????");
		System.out.println("////////////////////////////////");
	}
}
