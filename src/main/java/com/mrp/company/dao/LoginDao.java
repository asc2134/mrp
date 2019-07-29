package com.mrp.company.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mrp.company.dto.MemberDto;

@Repository
public class LoginDao {
	@Autowired
	private SqlSessionTemplate sql;

	public List<MemberDto> checkLogin(HashMap<String, Object> map) {
		return sql.selectList("login.getMember",map);
	}

	public MemberDto readMember(String id) {
		return sql.selectOne("login.readMember",id);
	}

	public List<String> readAuthority(String id) {
		return sql.selectList("login.readAuthority", id);
	}
	
	
	
	
}
