package com.mrp.company.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mrp.company.dao.CostDao;

@Controller
public class CostController {
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@Autowired
	private CostDao costDao;
	
	@RequestMapping("/costingMain.do")
	private String costingMain() throws Exception {
		return "cost/costingMain";
	}
}
