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
import com.mrp.company.dto.FileDto;
import com.mrp.company.dto.PagingDto;
import com.mrp.company.dao.FileDao;


@Controller
public class ProductController {
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@Autowired
	private ProductDao productDao;
	
	@Autowired
	private CompanyDao companyDao;
	
	@Autowired
	private MaterialDao materialDao;
	
	@Autowired
	private FileDao fileDao;
	
	
	
	
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
	
	@RequestMapping("/productListMain.do")
	private String productListMain(HttpServletRequest req
			 	,@RequestParam(required=false, defaultValue = "1")String productNowPage
				, @RequestParam(required=false, defaultValue= "10")String productCntPerPage ) throws Exception {
	
		//페이징관련변수  
		List<HashMap<String,String>> productList = productDao.getProductList();
		int productCount = productDao.getProductCount();
		PagingDto productDto = new PagingDto(productCount, Integer.parseInt(productNowPage), Integer.parseInt(productCntPerPage));

		
		req.setAttribute("productList", productList);
		req.setAttribute("productDto", productDto);
		return "product/productListMain";
	}
	

	@RequestMapping("/showProduct.do")
	private String showProduct(HttpServletRequest req) throws Exception {
		List<HashMap<String, String>> pro_leather_out = new ArrayList<>();
		List<HashMap<String, String>> pro_leather_in = new ArrayList<>();
		
		String designNum = req.getParameter("designNum");
		HashMap<String,String> product = productDao.getProduct(designNum);
		List<HashMap<String, String>> pro_leather = productDao.getpLeather(designNum);
		List<HashMap<String, String>> pro_accessory = productDao.getpAccessory(designNum);
		List<HashMap<String, String>> pro_materialOther = productDao.getpMaterialOther(designNum);
		List<HashMap<String, String>> pro_subsidiary = productDao.getpSubsidiary(designNum);
		List<Map<String, String>> allCompanyList = companyDao.getAllCompanyList();
		List<Map<String, String>> allLeatherList = materialDao.getAllLeatherList();
		List<Map<String, String>> allSubsidiaryList = materialDao.getAllSubsidiaryList();
		List<Map<String, String>> allAccessoryList = materialDao.getAllAccessoryList();
		List<Map<String, String>> allMaterialOtherList = materialDao.getAllMaterialOtherList();
		FileDto fileDto = fileDao.getImgFile(designNum);
		
		
		for(int i=0; i<pro_leather.size(); i++) {
			if(pro_leather.get(i).get("le_type").equals("외피")) {
				pro_leather_out.add(pro_leather.get(i));
				
			}else {
				pro_leather_in.add(pro_leather.get(i));
			}
			
		}
		
		
		req.setAttribute("fileDto", fileDto);
		req.setAttribute("allCompanyList", allCompanyList);
		req.setAttribute("allLeatherList", allLeatherList);
		req.setAttribute("allSubsidiaryList", allSubsidiaryList);
		req.setAttribute("allAccessoryList", allAccessoryList);
		req.setAttribute("allMaterialOtherList", allMaterialOtherList);
		req.setAttribute("product", product);
		req.setAttribute("pro_leather", pro_leather);
		req.setAttribute("pro_accessory", pro_accessory);
		req.setAttribute("pro_materialOther", pro_materialOther);
		req.setAttribute("pro_subsidiary", pro_subsidiary);
		req.setAttribute("pro_leather_out", pro_leather_out);
		req.setAttribute("pro_leather_in", pro_leather_in);
		req.setAttribute("leather_size", pro_leather.size());
		return "product/showProduct";
	}

	@RequestMapping("/getPrice.do")
	public @ResponseBody  Map<Object, Object> getPrice(@RequestBody HashMap<String, String> map, HttpServletRequest req) throws Exception {
		Map<Object, Object> temp= new HashMap<>(); ;
		String price;
		
		if(!map.get("num").isEmpty()) {
			if(map.get("type").equals("leather")) {
				price = productDao.getLeatherPrice(map);
			}else if(map.get("type").equals("subsidiary")) {
				price = productDao.getSubsidiaryPrice(map);
			}else if(map.get("type").equals("accessory")) {
				price = productDao.getAccessoryPrice(map);
			}else {
				price = productDao.getMaterialOtherPrice(map);
			}
		}else {
			price = "0";
			
		}
		temp.put("price", price);
		temp.put("result", map.get("result"));
		return temp;
	}
	
}
