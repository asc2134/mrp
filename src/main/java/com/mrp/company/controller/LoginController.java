
package com.mrp.company.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mrp.company.dao.LoginDao;
import com.mrp.company.dto.LoginDto;


@Controller
public class LoginController {
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	@Autowired
	private LoginDao dao;
	
	@RequestMapping("/")
	private String login() throws Exception {
		return "login/login";
	}
	
	
	@RequestMapping("/checkLogin.do")
	@ResponseBody
	private Boolean checkLogin(HttpSession session,  @RequestBody HashMap<String, Object> map) throws Exception {
		List<LoginDto> list =dao.checkLogin(map);
		if(list.size()<2 && list.size()>0) {
			session.setAttribute("id", list.get(0).getId());
			session.setAttribute("compNum", list.get(0).getCompNum());
			return true;
		}else {
			return false;
		}
	}
	@RequestMapping("/loginOk.do")
	private String loginOk() throws Exception {
		return "main/main";
	}
	
	@RequestMapping("/logout.do")
	private String logout(HttpSession session) throws Exception {
		session.removeAttribute("id");
		session.removeAttribute("compNum");
		return "login/login";
	}
	
}