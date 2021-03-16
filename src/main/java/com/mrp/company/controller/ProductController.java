package com.mrp.company.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
	
	@RequestMapping("/registProduct.do")
	public @ResponseBody Boolean registProduct(@RequestBody HashMap<Object, Object> map) throws Exception {
		Boolean result = true ;
		
		
		
		//(이미지)파일 업로드 만들어야함
		
		//디비단에 어떻게 저장시킬것인가.. 가져온 map 풀어서 각각의 데이터 가져와서  번호(PK)로 저장하고 
		
		
		
		
		
		System.out.println(map);
		return result;
	}
	
	
	
	
}
