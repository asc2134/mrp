package com.mrp.company.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mrp.company.dto.FileDto;

@Repository
public class FileDao {
	@Autowired
	private SqlSessionTemplate sql;

	public int registFile(FileDto dto) {
		
		return sql.insert("file.registFile",dto);
	}
	
	
	
}

	
	
