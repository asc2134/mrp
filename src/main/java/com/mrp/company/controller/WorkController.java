package com.mrp.company.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WorkController {

	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	
	
	@RequestMapping("/workMain.do")
	private String workMain(HttpServletRequest req) throws Exception {
		return "work/workMain";
	}
}
