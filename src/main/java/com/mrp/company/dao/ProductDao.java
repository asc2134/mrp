package com.mrp.company.dao;

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

	public List<HashMap<String, String>> getProductList() {
		// TODO Auto-generated method stub
		return sql.selectList("product.getProductList");
	}
	public int getProductCount() {
		return sql.selectOne("product.getProductCount");
	}
	public HashMap<String, String> getProduct(String productNum) {
		return sql.selectOne("product.getProduct", productNum);
	}

	public List<HashMap<String, String>> getpLeather(String designNum) {
		// TODO Auto-generated method stub
		return sql.selectList("product.getpLeather", designNum);
	}

	public List<HashMap<String, String>> getpAccessory(String designNum) {
		// TODO Auto-generated method stub
		return sql.selectList("product.getpAccessory", designNum);
	}

	public List<HashMap<String, String>> getpMaterialOther(String designNum) {
		// TODO Auto-generated method stub
		return sql.selectList("product.getpMaterialOther", designNum);
	}

	public List<HashMap<String, String>> getpSubsidiary(String designNum) {
		// TODO Auto-generated method stub
		return sql.selectList("product.getpSubsidiary", designNum);
	}

	public String getLeatherPrice(HashMap<String, String> map) {
		// TODO Auto-generated method stub
		return sql.selectOne("product.getLeatherPrice", map);
	}

	public String getSubsidiaryPrice(HashMap<String, String> map) {
		// TODO Auto-generated method stub
		return sql.selectOne("product.getSubsidiaryPrice", map);
	}

	public String getAccessoryPrice(HashMap<String, String> map) {
		// TODO Auto-generated method stub
		return sql.selectOne("product.getAccessoryPrice", map);
	}

	public String getMaterialOtherPrice(HashMap<String, String> map) {
		// TODO Auto-generated method stub
		return sql.selectOne("product.getMaterialOtherPrice", map);
	}



}
