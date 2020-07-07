package com.mrp.company.controller;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author YouYunSoo
 */
@RestController
public class LogController {
	private static final Logger LOGGER = LogManager.getLogger(LogController.class);

    @GetMapping(value = "hello")
    public void greet() {
        LOGGER.debug("Hello Debug level log");
        LOGGER.info("Hello Info level log");
        LOGGER.error("Hello Error level log");
        
    }
}
