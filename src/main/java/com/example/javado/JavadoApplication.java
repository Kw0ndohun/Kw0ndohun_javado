package com.example.javado;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;

@EnableJpaAuditing
@SpringBootApplication
public class JavadoApplication {

	public static void main(String[] args) {
		SpringApplication.run(JavadoApplication.class, args);
	}

}

