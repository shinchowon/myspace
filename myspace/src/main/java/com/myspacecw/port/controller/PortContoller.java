package com.myspacecw.port.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("com.myspacecw.port.controller.PortContoller")
public class PortContoller {
	@RequestMapping("/port/portMain.do")
	public void portMain() {	
		System.out.println("////////////////////////////////");
		System.out.println("///portMain");
		System.out.println("////////////////////////////////");
	}
}
