package com.mrp.company.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mrp.company.dao.CompanyDao;
import com.mrp.company.dao.CostDao;
import com.mrp.company.dao.MaterialDao;
import com.mrp.company.dao.ProductDao;

@Controller
public class ProductController {
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@Autowired
	private ProductDao productDao;
	
	@Autowired
	private CompanyDao companyDao;
	
	@Autowired
	private MaterialDao materialDao;
	
	
	@RequestMapping("/createProduct.do")
	private String product(HttpServletRequest req) throws Exception {
		List<Map<String, String>> allCompanyList = companyDao.getAllCompanyList();
		List<Map<String, String>> allLeatherList = materialDao.getAllLeatherList();
		List<Map<String, String>> allSubsidiaryList = materialDao.getAllSubsidiaryList();
		List<Map<String, String>> allAccessoryList = materialDao.getAllAccessoryList();
		List<Map<String, String>> allMaterialOtherList = materialDao.getAllMaterialOtherList();
		
		
		req.setAttribute("allCompanyList", allCompanyList);
		req.setAttribute("allLeatherList", allLeatherList);
		req.setAttribute("allSubsidiaryList", allSubsidiaryList);
		req.setAttribute("allAccessoryList", allAccessoryList);
		req.setAttribute("allMaterialOtherList", allMaterialOtherList);
		return "product/createProduct";
	}
}
