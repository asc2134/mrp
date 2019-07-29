package com.mrp.company.common;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.stereotype.Component;
@Component
public class AuthFailureHandler implements AuthenticationFailureHandler{

	@Override
	public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
			AuthenticationException exception) throws IOException, ServletException {
		
		/*response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
		// 실패 시 response를 json 형태로 결과값 전달
        response.getWriter().print("{\"success\": false}");
        response.getWriter().flush();*/
		
	}

}
