package com.mrp.company.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDao {
	@Autowired
	private SqlSessionTemplate sql;

	public List<Map<String, String>> getAllLeatherList() {
		// TODO Auto-generated method stub
		return null;
	}
}
