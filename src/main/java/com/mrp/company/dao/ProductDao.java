package com.mrp.company.dao;

import java.util.ArrayList;
import java.util.HashMap;
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
	
	public int registProductMaterial(HashMap<String, String> productMaterial) {
	// TODO Auto-generated method stub
	return sql.insert("product.registProductMaterial",productMaterial);
	
	}
	
	public int registLeatherMaterial(HashMap<String, String> map) {
		// TODO Auto-generated method stub
		return sql.insert("product.registLeatherMaterial",map);
	}
	
	public int registSubsidiarMaterial(HashMap<String, String> map) {
		// TODO Auto-generated method stub
		return sql.insert("product.registSubsidiarMaterial",map);
	}
	
	public int registOtherMaterial(HashMap<String, String> map) {
		// TODO Auto-generated method stub
		return sql.insert("product.registOtherMaterial",map);
	}

	public int registAccessoryMaterial(HashMap<String, String> map) {
		// TODO Auto-generated method stub
		return sql.insert("product.registAccessoryMaterial",map);
	}

}
