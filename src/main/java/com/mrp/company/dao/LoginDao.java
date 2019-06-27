package com.mrp.company.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mrp.company.dto.LoginDto;

@Repository
public class LoginDao {
	@Autowired
	private SqlSessionTemplate sql;

	public List<LoginDto> checkLogin(HashMap<String, Object> map) {
		return sql.selectList("Login.getMember",map);
	}
	
	
	
	
}
