/*package com.mrp.company.common;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import com.mrp.company.dto.SecurityMemeberDto;
 

@Component
public class AuthSuccessHandler extends SavedRequestAwareAuthenticationSuccessHandler {
 public AuthSuccessHandler(String defaultTargetUrl) {
	 setDefaultTargetUrl(defaultTargetUrl);
 }
 @Override
 public void onAuthenticationSuccess(HttpServletRequest r, HttpServletResponse response, Authentication authentication) throws ServletException, IOException {
     
     ((SecurityMemeberDto)authentication.getPrincipal()).setIp(getClientIp(req));
     
     HttpSession session = req.getSession();
     if (session != null) {
         String redirectUrl = (String) session.getAttribute("prevPage");
         if (redirectUrl != null) {
             session.removeAttribute("prevPage");
             getRedirectStrategy().sendRedirect(req, resp, redirectUrl);
         } else {
             super.onAuthenticationSuccess(req, resp, authentication);
         }
     } else {
         super.onAuthenticationSuccess(req, resp, authentication);
     }
     response.setStatus(HttpServletResponse.SC_OK);
     // 성공 시 response를 json형태로 반환
     response.getWriter().print("{\"success\": true}");
     response.getWriter().flush();

 }
 
 public static String getClientIp(HttpServletRequest request) {
     String ip = request.getHeader("X-Forwarded-For");
      if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
          ip = request.getHeader("Proxy-Client-IP");
      }
      if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
          ip = request.getHeader("WL-Proxy-Client-IP");
      }
      if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
          ip = request.getHeader("HTTP_CLIENT_IP");
      }
      if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
          ip = request.getHeader("HTTP_X_FORWARDED_FOR");
      }
      if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
          ip = request.getRemoteAddr();
      }
      return ip;
 }

 

}
*/