package com.mrp.company.controller;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class AOPController {
	Logger logger =  LoggerFactory.getLogger(AOPController.class);

	    //@Around("execution(* com.example.demo.service.BookService.*(..))")
	    //@Around("execution(* com.mrp.company.*.controller..*.*(..))")
	    //@Around("execution(* com.mrp.company..*.*(..))")
		@Around("execution(* com.mrp.company.*.controller..*.*(..))")
	    public Object logging(ProceedingJoinPoint pjp) throws Throwable {
	        logger.info("start - " + pjp.getSignature().getDeclaringTypeName() + " / " + pjp.getSignature().getName());
	        Object result = pjp.proceed();
	        logger.info("finished - " + pjp.getSignature().getDeclaringTypeName() + " / " + pjp.getSignature().getName());
	        return result;
	    }

}
