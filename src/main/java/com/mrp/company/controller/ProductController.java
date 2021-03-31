package com.mrp.company.controller;

import java.io.File;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.swing.filechooser.FileSystemView;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.mrp.company.dao.CompanyDao;
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
	public @ResponseBody Boolean registProduct(@RequestBody HashMap<String, Object> map) throws Exception {
		Boolean result = true ;
		int resultInt;
		
		HashMap<String, String> productMaterial= (HashMap<String, String>) map.get("productMaterial");
		HashMap<String,  ArrayList<HashMap<String,String>>> leatherMaterial= (HashMap<String,  ArrayList<HashMap<String,String>>>) map.get("leatherMaterial");
		HashMap<String, ArrayList<HashMap<String,String>>> subsidiarMaterial= (HashMap<String, ArrayList<HashMap<String,String>>>) map.get("subsidiarMaterial");
		HashMap<String, ArrayList<HashMap<String,String>>> accessoryMaterial= (HashMap<String,  ArrayList<HashMap<String,String>>>) map.get("accessoryMaterial");
		HashMap<String, String> otherMaterial= (HashMap<String, String>) map.get("otherMaterial");
		
		ArrayList<HashMap<String, String>> leatherList = leatherMaterial.get("LeatherArray");
		ArrayList<HashMap<String, String>> accessoryList=accessoryMaterial.get("accessoryArray");
		ArrayList<HashMap<String, String>> subsidiarList = subsidiarMaterial.get("subsidiarMaterialArray");
		
		resultInt = productDao.registProductMaterial(productMaterial);
		
		for(int i=0; i<leatherList.size(); i++) {  
			if(!leatherList.get(i).get("leatherNum").isEmpty()) {
				resultInt = productDao.registLeatherMaterial(leatherList.get(i));
				result =resultInt > 0  ? true: false;
			}
		}
		for(int i=0; i<accessoryList.size(); i++) {
			if(!accessoryList.get(i).get("accessorynum").isEmpty()) {
				resultInt=productDao.registAccessoryMaterial(accessoryList.get(i));
				result =resultInt > 0  ? true: false;
			}
		}
		for(int i=0; i<subsidiarList.size(); i++) {
			if(!subsidiarList.get(i).get("subsidiaryNum").isEmpty()) {
				resultInt=productDao.registSubsidiarMaterial(subsidiarList.get(i));
				result =resultInt > 0  ? true: false;
			}
		}
		if(!otherMaterial.get("materialOtherNum").isEmpty()) {
			resultInt = productDao.registOtherMaterial(otherMaterial);
			result =resultInt > 0  ? true: false;
		}
		return result;
	}
	
}
