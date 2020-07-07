package com.mrp.company.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mrp.company.dto.CompanyDto;
import com.mrp.company.dto.PagingDto;

@Repository
public class CompanyDao {
	@Autowired
	private SqlSessionTemplate sql;

	public List<Map<String, String>> getCompanyList(PagingDto companyDto) {
		return sql.selectList("company.getCompanyList", companyDto);
	}

	public Map<String, String> getCompany(String compNum) {
		return sql.selectOne("company.getCompany", compNum);
	}
	public int createCompany(HashMap<String, String> map) {
		// TODO Auto-generated method stub
		return sql.insert("company.createComapny", map);
	}

	public int updateCompany(HashMap<String, String> map) {
		// TODO Auto-generated method stub
		return sql.update("company.updateCompany", map);
	}

	public int deleteCompany(HashMap<String, String> map) {
		// TODO Auto-generated method stub
		return sql.delete("company.deleteCompany", map);
	}

	public int getCompanyCount() {
		// TODO Auto-generated method stub
		return sql.selectOne("company.getCompanyCount");
	}

	public List<Map<String, String>> getAllCompanyList() {
		// TODO Auto-generated method stub
		return sql.selectList("company.getAllCompanyList");
	}

	public List<Map<String, String>> checkCompany(HashMap<String, String> map) {
		// TODO Auto-generated method stub
		return sql.selectList("company.checkCompany", map);
	}

	
}
