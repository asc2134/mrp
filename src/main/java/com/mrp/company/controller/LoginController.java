
package com.mrp.company.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mrp.company.dao.LoginDao;
import com.mrp.company.dto.LoginDto;


@Controller
public class LoginController {
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	@Autowired
	private LoginDao dao;
	
	@RequestMapping("/")
	private String login() throws Exception {
		
		List<LoginDto> list = dao.getList();
		for(int i=0; i<list.size(); i++) {
			
			String id = list.get(i).getId();
			System.out.println(id);
		}
		
		
		
		return "login/login";
	}
	
	@RequestMapping("/checkLogin.do")
	private String checkLogin(HttpServletRequest req) throws Exception {
		
		return "main/main";
	}
	
}