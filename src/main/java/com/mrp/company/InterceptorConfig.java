package com.mrp.company;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class InterceptorConfig implements WebMvcConfigurer {
	@Autowired
    @Qualifier(value = "loginInterceptor")
    private HandlerInterceptor loginInterceptor;
 
    @Value("${resources.notload.list}") // application.properties에 설정된 값을 가지고 오기
    private List<String> notLoadList;
    
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        
        notLoadList.add("/loginOk.do");
        notLoadList.add("/checkLogin.do");
        notLoadList.add("/login.do");
        notLoadList.add("/");
        notLoadList.add("/logout.do");
        registry.addInterceptor(loginInterceptor).addPathPatterns("/**").excludePathPatterns(notLoadList);        
        
        /*
         * registry.addInterceptor(commonInterceptor) .addPathPatterns("/**") // 추가할 url
         * 패턴 .excludePathPatterns("/user/**"); // 제외할 url 패턴
         */
    }
}
