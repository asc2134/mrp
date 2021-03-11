package com.mrp.company.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mrp.company.dto.PagingDto;

@Repository
public class MaterialDao {
	@Autowired
	private SqlSessionTemplate sql;

	public int getLeatherCount() {
		// TODO Auto-generated method stub
		return sql.selectOne("material.getLeatherCount");
	}
	
	public int getSubsidiaryCount() {
		// TODO Auto-generated method stub
		return sql.selectOne("material.getSubsidiaryCount");
	}
	
	public int getAccessoryCount() {
		// TODO Auto-generated method stub
		return sql.selectOne("material.getAccessoryCount");
	}
	
	public int getMaterialOtherCount() {
		// TODO Auto-generated method stub
		return sql.selectOne("material.getMaterialotherCount");
	}

	public List<Map<String, String>> getLeatherList(PagingDto leatherDto) {
		// TODO Auto-generated method stub
		return sql.selectList("material.getLeatherList", leatherDto);
	}

	public List<Map<String, String>> getSubsidiaryList(PagingDto subsidiaryDto) {
		// TODO Auto-generated method stub
		return sql.selectList("material.getSubsidiaryList", subsidiaryDto);
	}

	public List<Map<String, String>> getAccessoryList(PagingDto accessoryDto) {
		// TODO Auto-generated method stub
		return sql.selectList("material.getAccessoryList", accessoryDto);
	}

	public List<Map<String, String>> getMaterialOtherList(PagingDto materialotherDto) {
		// TODO Auto-generated method stub
		return sql.selectList("material.getMaterialotherList", materialotherDto);
	}
	public int createLeather(HashMap<String, String> map) {
		// TODO Auto-generated method stub
		return sql.insert("material.createLeather", map);
	}

	public int createSubsidiary(HashMap<String, String> map) {
		// TODO Auto-generated method stub
		return sql.insert("material.createSubsidiary", map);
	}

	public int createAccessory(HashMap<String, String> map) {
		// TODO Auto-generated method stub
		return sql.insert("material.createAccessory", map);
	}

	public int createMaterialOther(HashMap<String, String> map) {
		// TODO Auto-generated method stub
		return sql.insert("material.createMaterialOther", map);
	}

	public Map<String, String> getLeather(String leatherNum) {
		// TODO Auto-generated method stub
		return sql.selectOne("material.getLeather", leatherNum);
	}

	public Map<String, String> getSubsidiary(String subsidiaryNum) {
		// TODO Auto-generated method stub
		return sql.selectOne("material.getSubsidiary", subsidiaryNum);
	}

	public Map<String, String> getAccessory(String accessoryNum) {
		// TODO Auto-generated method stub
		return sql.selectOne("material.getAccessory", accessoryNum);
	}

	public Map<String, String> getMaterialOther(String materialOtherNum) {
		// TODO Auto-generated method stub
		return sql.selectOne("material.getMaterialOther", materialOtherNum);
	}

	public int deleteLeather(HashMap<String, String> map) {
		// TODO Auto-generated method stub
		return sql.delete("material.deleteLeather", map);
	}

	public int deleteAccessory(HashMap<String, String> map) {
		// TODO Auto-generated method stub
		return sql.delete("material.deleteAccessory", map);
	}

	public int deleteSubsidiary(HashMap<String, String> map) {
		// TODO Auto-generated method stub
		return sql.delete("material.deleteSubsidiary", map);
	}

	public int deleteMaterialOther(HashMap<String, String> map) {
		// TODO Auto-generated method stub
		return sql.delete("material.deleteMaterialOther", map);
	}

	public int updateLeather(HashMap<String, String> map) {
		// TODO Auto-generated method stub
		return sql.update("material.updateLeather", map);
	}

	public int updateSubsidiary(HashMap<String, String> map) {
		// TODO Auto-generated method stub
		return sql.update("material.updateSubsidiary", map);
	}

	public int updateAccessory(HashMap<String, String> map) {
		// TODO Auto-generated method stub
		return sql.update("material.updateAccessory", map);
	}

	public int updateMaterialOther(HashMap<String, String> map) {
		// TODO Auto-generated method stub
		return sql.update("material.updateMaterialOther", map);
	}

	public List<Map<String, String>> getAllLeatherList() {
		// TODO Auto-generated method stub
		return sql.selectList("material.getAllLeatherList");
	}

	public List<Map<String, String>> getAllSubsidiaryList() {
		// TODO Auto-generated method stub
		return sql.selectList("material.getAllSubsidiaryList");
	}

	public List<Map<String, String>> getAllAccessoryList() {
		// TODO Auto-generated method stub
		return sql.selectList("material.getAllAccessoryList");
	}

	public List<Map<String, String>> getAllMaterialOtherList() {
		// TODO Auto-generated method stub
		return sql.selectList("material.getAllMaterialOtherList");
	}


}
