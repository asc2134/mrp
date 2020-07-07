package com.mrp.company;

import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@EnableWebSecurity
public class SpringSecurityConfig extends WebSecurityConfigurerAdapter {

	@Override
    public void configure(WebSecurity web) throws Exception {
        //허용되어야하는 경로
    	web.ignoring()
    	.antMatchers("/resources/**");
    }
    
    @Override
    protected void configure(HttpSecurity http) throws Exception {
       http.csrf().disable();
       http.authorizeRequests()
       .antMatchers("/admin/**").hasRole("ADMIN") // 경로에 어드민 경로가 있으면 어드민 권한이있어야됨
       .antMatchers("//**").hasRole("MEMBER")
       .antMatchers("/**").permitAll();
       
       //로그인 관련
       http.formLogin().loginPage("/login.do").defaultSuccessUrl("/").permitAll();
       //로그아웃 관련
       http.logout().deleteCookies("JESSIONID").logoutUrl("/logout.do").logoutSuccessUrl("/login.do");
    }
 
}
