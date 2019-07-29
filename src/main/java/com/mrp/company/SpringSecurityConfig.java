package com.mrp.company;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.configuration.EnableGlobalAuthentication;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

import com.mrp.company.common.AuthFailureHandler;
import com.mrp.company.common.AuthProvider;
import com.mrp.company.common.AuthSuccessHandler;

@Configuration
@EnableWebSecurity
@EnableGlobalAuthentication
@ComponentScan(basePackages = {"com.mrp.*"})
public class SpringSecurityConfig extends WebSecurityConfigurerAdapter {
    
    @Autowired
    AuthProvider authProvider;
    
    @Autowired
    AuthFailureHandler authFailureHandler;
 
    @Autowired
    AuthSuccessHandler authSuccessHandler;

    @Override
    public void configure(WebSecurity web) throws Exception {
        //허용되어야하는 경로
    	web.ignoring()
        .antMatchers("/openapi/**", "/resources/**");
    }
    
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests().antMatchers("/","/error**").permitAll()
        .antMatchers("/**").access("ADMIN")
        .antMatchers("/**").access("USER")
        .antMatchers("/admin/**").access("ADMIN")
        .antMatchers("/**").authenticated()
        .and()
        .formLogin()
        .loginPage("/")
        .defaultSuccessUrl("/")
        .failureHandler(authFailureHandler)
        .successHandler(authSuccessHandler)
        .and()
        .logout().logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
        .logoutSuccessUrl("/")
        .invalidateHttpSession(true)
        .and().csrf()
        .and().authenticationProvider(authProvider);
    }
 
}
