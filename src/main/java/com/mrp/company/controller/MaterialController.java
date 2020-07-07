package com.mrp.company.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mrp.company.dao.CompanyDao;
import com.mrp.company.dao.MaterialDao;
import com.mrp.company.dto.PagingDto;

@Controller
public class MaterialController {
	@Autowired
	private CompanyDao companyDao;
	@Autowired
	private MaterialDao materialDao;
	
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@RequestMapping("/materialMain.do")
	private String materialMain(HttpServletRequest req
			, @RequestParam(required=false, defaultValue = "1")String companyNowPage
			, @RequestParam(required=false, defaultValue= "10")String companyCntPerPage
			, @RequestParam(required=false, defaultValue = "1")String leatherNowPage
			, @RequestParam(required=false, defaultValue= "10")String leatherCntPerPage
			, @RequestParam(required=false, defaultValue = "1")String accessoryNowPage
			, @RequestParam(required=false, defaultValue= "10")String accessoryCntPerPage
			, @RequestParam(required=false, defaultValue = "1")String subsidiaryNowPage
			, @RequestParam(required=false, defaultValue= "10")String subsidiaryCntPerPage
			, @RequestParam(required=false, defaultValue = "1")String materialOtherNowPage
			, @RequestParam(required=false, defaultValue= "10")String materialOtherCntPerPage
			, @RequestParam(required=false, defaultValue= "company")String materialType ) throws Exception {
		
		int companyCount = companyDao.getCompanyCount();
		int leatherCount = materialDao.getLeatherCount();
		int subsidiaryCount = materialDao.getSubsidiaryCount();
		int accessoryCount = materialDao.getAccessoryCount();
		int materialOtherCount = materialDao.getMaterialOtherCount();
		
		PagingDto companyDto = new PagingDto(companyCount, Integer.parseInt(companyNowPage), Integer.parseInt(companyCntPerPage));
		PagingDto leatherDto = new PagingDto(leatherCount, Integer.parseInt(leatherNowPage), Integer.parseInt(leatherCntPerPage));
		PagingDto accessoryDto = new PagingDto(accessoryCount, Integer.parseInt(accessoryNowPage), Integer.parseInt(accessoryCntPerPage));
		PagingDto subsidiaryDto = new PagingDto(subsidiaryCount, Integer.parseInt(subsidiaryNowPage), Integer.parseInt(subsidiaryCntPerPage));
		PagingDto materialOtherDto = new PagingDto(materialOtherCount, Integer.parseInt(materialOtherNowPage), Integer.parseInt(materialOtherCntPerPage));
		
		
		List<Map<String,String>> companyList = companyDao.getCompanyList(companyDto);
		List<Map<String,String>> leatherList = materialDao.getLeatherList(leatherDto);
		List<Map<String,String>> subsidiaryList = materialDao.getSubsidiaryList(subsidiaryDto);
		List<Map<String,String>> accessoryList = materialDao.getAccessoryList(accessoryDto);
		List<Map<String,String>> materialOtherList = materialDao.getMaterialOtherList(materialOtherDto);
		
		
		req.setAttribute("companyDto", companyDto);
		req.setAttribute("leatherDto", leatherDto);
		req.setAttribute("subsidiaryDto", subsidiaryDto);
		req.setAttribute("accessoryDto", accessoryDto);
		req.setAttribute("materialOtherDto", materialOtherDto);
		
		req.setAttribute("companyList", companyList);
		req.setAttribute("leatherList", leatherList);
		req.setAttribute("subsidiaryList", subsidiaryList);
		req.setAttribute("accessoryList", accessoryList);
		req.setAttribute("materialOtherList", materialOtherList);
		req.setAttribute("materialType", materialType);
		return "material/materialMain";
	}
	
	

	
	
	
	@RequestMapping("/createMaterial.do")
	private String createCompany(HttpServletRequest req) throws Exception {
		String type = req.getParameter("type");	
		type =type.substring(0, 1).toUpperCase()+type.substring(1);
		List<Map<String, String>> allCompanyList = companyDao.getAllCompanyList();
		req.setAttribute("allCompanyList", allCompanyList);
		return "material/create"+type ;
	}
	
	
	
	@RequestMapping("/registCompany.do")
	private @ResponseBody Boolean registCompany(@RequestBody HashMap<String, String> map) throws Exception {
		Boolean result ;
		int resutInt = companyDao.createCompany(map);
		if(resutInt > 0) result = true;
		else result = false;
		
		return result;
	}
	
	
	@RequestMapping("/registLeather.do")
	private @ResponseBody Boolean registLeather(@RequestBody HashMap<String, String> map) throws Exception {
		Boolean result ;
		int resutInt = materialDao.createLeather(map);
		if(resutInt > 0) result = true;
		else result = false;
		
		return result;
	}
	
	@RequestMapping("/registSubsidiary.do")
	private @ResponseBody Boolean registSubsidiary(@RequestBody HashMap<String, String> map) throws Exception {
		Boolean result ;
		int resutInt = materialDao.createSubsidiary(map);
		if(resutInt > 0) result = true;
		else result = false;
		
		return result;
	}
	
	@RequestMapping("/registAccessory.do")
	private @ResponseBody Boolean registAccessory(@RequestBody HashMap<String, String> map) throws Exception {
		Boolean result ;
		int resutInt = materialDao.createAccessory(map);
		if(resutInt > 0) result = true;
		else result = false;
		
		return result;
	}
	
	@RequestMapping("/registMaterialOther.do")
	private @ResponseBody Boolean registMaterialOther(@RequestBody HashMap<String, String> map) throws Exception {
		Boolean result ;
		int resutInt = materialDao.createMaterialOther(map);
		if(resutInt > 0) result = true;
		else result = false;
		
		return result;
	}
	
	
	@RequestMapping("/goUpdate.do")
	private  String goUpdate(HttpServletRequest req) throws Exception {
		
		
		Map<String, String> company = new HashMap<String, String>();
		Map<String, String> leather = new HashMap<String, String>();
		Map<String, String> accessory = new HashMap<String, String>();
		Map<String, String> materialOther = new HashMap<String, String>();
		Map<String, String> subsidiary = new HashMap<String, String>();
		List<Map<String, String>> companyAllList = companyDao.getAllCompanyList();
		
		
		company.put("compNum", req.getParameter("compNum"));
		company.put("compName", req.getParameter("compName"));
		company.put("address", req.getParameter("address"));
		company.put("compPhone", req.getParameter("compPhone"));
		company.put("faxNum", req.getParameter("faxNum"));
		
		leather.put("leatherNum", req.getParameter("leatherNum"));
		leather.put("leatherName", req.getParameter("leatherName"));
		leather.put("leatherType", req.getParameter("leatherType"));
		leather.put("amount", req.getParameter("amount"));
		leather.put("price", req.getParameter("price"));
		leather.put("compName", req.getParameter("compName"));
		leather.put("compNum", req.getParameter("compNum"));
		
		accessory.put("accessoryName", req.getParameter("accessoryName"));
		accessory.put("accessoryNum", req.getParameter("accessoryNum"));
		accessory.put("amount", req.getParameter("amount"));
		accessory.put("price", req.getParameter("price"));
		accessory.put("compName", req.getParameter("compName"));
		accessory.put("compNum", req.getParameter("compNum"));
		
		
		materialOther.put("materialOtherName", req.getParameter("materialOtherName"));
		materialOther.put("materialOtherNum", req.getParameter("materialOtherNum"));
		materialOther.put("compNum", req.getParameter("compNum"));
		materialOther.put("amount", req.getParameter("amount"));
		materialOther.put("price", req.getParameter("price"));
		materialOther.put("compName", req.getParameter("compName"));
		
		subsidiary.put("subsidiaryName", req.getParameter("subsidiaryName"));
		subsidiary.put("subsidiaryNum", req.getParameter("subsidiaryNum"));
		subsidiary.put("compNum", req.getParameter("compNum"));
		subsidiary.put("subsidiaryType", req.getParameter("subsidiaryType"));
		subsidiary.put("amount", req.getParameter("amount"));
		subsidiary.put("price", req.getParameter("price"));
		subsidiary.put("compName", req.getParameter("compName"));
		
		req.setAttribute("company", company);
		req.setAttribute("accessory", accessory);
		req.setAttribute("leather", leather);
		req.setAttribute("materialOther", materialOther);
		req.setAttribute("subsidiary", subsidiary);
		req.setAttribute("companyAllList", companyAllList);
				
		return "material/update"+req.getParameter("type")+"Page";
	}
	
	@ResponseBody
	@RequestMapping("/updateCompany.do")
	private Boolean updateCompany(@RequestBody HashMap<String, String> map) throws Exception {
		Boolean result ;
		int resutInt = companyDao.updateCompany(map);
		if(resutInt > 0) result = true;
		else result = false;
		
		return result;	
	}
	
	@RequestMapping("/updateLeather.do")
	private @ResponseBody Boolean updateLeather(@RequestBody HashMap<String, String> map) throws Exception {
		Boolean result ;
		int resutInt = materialDao.updateLeather(map);
		if(resutInt > 0) result = true;
		else result = false;
		
		return result;	
	}
	
	@RequestMapping("/updateSubsidiary.do")
	private @ResponseBody Boolean updateSubsidiary(@RequestBody HashMap<String, String> map) throws Exception {
		Boolean result ;
		int resutInt = materialDao.updateSubsidiary(map);
		if(resutInt > 0) result = true;
		else result = false;
		
		return result;	
	}
	
	@RequestMapping("/updateAccessory.do")
	private @ResponseBody Boolean updateAccessory(@RequestBody HashMap<String, String> map) throws Exception {
		Boolean result ;
		int resutInt = materialDao.updateAccessory(map);
		if(resutInt > 0) result = true;
		else result = false;
		
		return result;	
	}
	
	@RequestMapping("/updateMaterialOther.do")
	private @ResponseBody Boolean updateMaterialOther(@RequestBody HashMap<String, String> map) throws Exception {
		Boolean result ;
		int resutInt = materialDao.updateMaterialOther(map);
		if(resutInt > 0) result = true;
		else result = false;
		
		return result;	
	}
	
	@RequestMapping("/showCompany.do")
	private String showCompany(HttpServletRequest req) throws Exception {
		String compNum = req.getParameter("compNum");
		Map<String,String> company = companyDao.getCompany(compNum);
		req.setAttribute("company", company);
		return "material/showCompany";
	}
	
	@RequestMapping("/showMaterial.do")
	private String showMaterial(HttpServletRequest req) throws Exception {
		String type  = req.getParameter("type");
		
		if(type.equals("l")) {
			String leatherNum = req.getParameter("num"); 
			Map<String,String> leather = materialDao.getLeather(leatherNum);
			req.setAttribute("leather", leather);
			return "material/showLeather";
		}else if(type.equals("s")) {
			String subsidiaryNum = req.getParameter("num");
			Map<String,String> subsidiary = materialDao.getSubsidiary(subsidiaryNum);
			req.setAttribute("subsidiary", subsidiary);
			return "material/showSubsidiary";
		}else if(type.equals("a")) {
			String accessoryNum = req.getParameter("num");
			Map<String,String> accessory = materialDao.getAccessory(accessoryNum);
			req.setAttribute("accessory", accessory);
			return "material/showAccessory";
		}else{
			String materialOtherNum = req.getParameter("num");
			Map<String,String> materialOther = materialDao.getMaterialOther(materialOtherNum);
			req.setAttribute("materialOther", materialOther);
			return "material/showMaterialOther";
		}
	}
	
	
	@RequestMapping("/deleteCompany.do")
	private @ResponseBody  Boolean deleteCompany(@RequestBody HashMap<String, String> map) throws Exception {
		Boolean result ;
		int resutInt = companyDao.deleteCompany(map);
		if(resutInt > 0) result = true;
		else result = false;
		
		return result;	
	}	
	
	@RequestMapping("/deleteLeather.do")
	private @ResponseBody  Boolean deleteLeather(@RequestBody HashMap<String, String> map) throws Exception {
		Boolean result ;
		int resutInt = materialDao.deleteLeather(map);
		if(resutInt > 0) result = true;
		else result = false;
		
		return result;	
	}	
	
	@RequestMapping("/deleteAccessory.do")
	private @ResponseBody  Boolean deleteAccessory(@RequestBody HashMap<String, String> map) throws Exception {
		Boolean result ;
		int resutInt = materialDao.deleteAccessory(map);
		if(resutInt > 0) result = true;
		else result = false;
		
		return result;	
	}	
	@RequestMapping("/deleteSubsidiary.do")
	private @ResponseBody  Boolean deleteSubsidiary(@RequestBody HashMap<String, String> map) throws Exception {
		Boolean result ;
		int resutInt = materialDao.deleteSubsidiary(map);
		if(resutInt > 0) result = true;
		else result = false;
		
		return result;	
	}	
	@RequestMapping("/deleteMaterialOther.do")
	private @ResponseBody  Boolean deleteMaterialOther(@RequestBody HashMap<String, String> map) throws Exception {
		Boolean result ;
		int resutInt = materialDao.deleteMaterialOther(map);
		if(resutInt > 0) result = true;
		else result = false;
		
		return result;	
	}	


	
}
