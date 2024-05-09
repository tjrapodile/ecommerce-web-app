package com.educative.ecommerce;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class EcommerceApplication {
	public static void main(String[] args) {

		SpringApplication.run(EcommerceApplication.class, args);
		System.setProperty("javax.security.sasl.debug", "true");
	}
}
