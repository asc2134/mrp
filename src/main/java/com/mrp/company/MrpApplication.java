package com.mrp.company;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;

@EnableAspectJAutoProxy
@SpringBootApplication
public class MrpApplication {

	public static void main(String[] args) {
		SpringApplication.run(MrpApplication.class, args);
	}
	
	@Bean
	public SqlSessionFactory sqlSessionFactory(DataSource ds) throws Exception {
	    SqlSessionFactoryBean factory = new SqlSessionFactoryBean();
	    factory.setDataSource(ds);
	    factory.setMapperLocations(
	        new PathMatchingResourcePatternResolver().getResources("classpath:/mapper/*.xml") // A
	    );

	    return factory.getObject();

	}
	@Bean
	public SqlSessionTemplate sqlSessionTemplate(SqlSessionFactory factory) {
	    return new SqlSessionTemplate(factory);
	}
}