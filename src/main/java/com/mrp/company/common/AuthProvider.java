package com.mrp.company.common;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.stereotype.Component;

import com.mrp.company.dao.LoginDao;
import com.mrp.company.dto.MemberDto;

@Component("authProvider")
public class AuthProvider implements AuthenticationProvider {
	private static final String ROLE_PREFIX = "ROLE_";
	
	@Autowired
	LoginDao dao;
	
	@Override
	public Authentication authenticate(Authentication authentication) throws AuthenticationException {
		String id = authentication.getName();
		String pw = authentication.getCredentials().toString();
		
		MemberDto dto = dao.readMember(id);
		
		if(null == dto || !dto.getPw().equals(pw)) {
			return null;
		}
		List<GrantedAuthority> list = new ArrayList<>();
		if(dto.getIsAdmin().equals("y")) {
			list.add(new SimpleGrantedAuthority(ROLE_PREFIX + "ADMIN"));
		}else {
			list.add(new SimpleGrantedAuthority(ROLE_PREFIX + "USER"));
		}
		return null;
	}

	@Override
	public boolean supports(Class<?> authentication) {
		return authentication.equals(UsernamePasswordAuthenticationToken.class);
	}

}
