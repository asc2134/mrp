
package com.mrp.company.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mrp.company.dao.LoginDao;
import com.mrp.company.dto.MemberDto;


@Controller
public class LoginController {
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	@Autowired
	private LoginDao loginDao;
	
	
	
	@RequestMapping("/")
	private String main(HttpSession session) throws Exception {
			return "main/main"; 
	}
	
	@RequestMapping("/login.do")
	private String login(HttpSession session) throws Exception {
			return "login/login"; 
	}

	@RequestMapping("/checkLogin.do")
	private @ResponseBody Boolean checkLogin(HttpSession session,  @RequestBody HashMap<String, Object> map) throws Exception {
		List<MemberDto> list =loginDao.checkLogin(map);
		
		if(list.size()<2 && list.size()>0) {
			session.setAttribute("id", list.get(0).getId());
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