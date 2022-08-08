package com.example.javado.util;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

public class LoginServerBootApplication extends SpringBootServletInitializer {
    protected SpringApplicationBuilder configure(SpringApplicationBuilder builder){
        return builder.sources(LoginServerBootApplication.class);
    }

    public static void main(String[] args) {
        SpringApplication.run(LoginServerBootApplication.class, args);
    }
}
