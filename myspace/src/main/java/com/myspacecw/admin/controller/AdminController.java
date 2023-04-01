package com.myspacecw.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("com.myspacecw.admin.controller.AdminController")
public class AdminController {
	@RequestMapping("/admin/adminMain.do")
	public void adminMain() {
		System.out.println("관리자페이지 진입//////////////");
	}
	@RequestMapping("/admin/upload.do")
	public void upload() {
		System.out.println("업로드 테스트//////////////");
	}

}
