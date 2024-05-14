package com.educative.ecommerce;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class EcommerceApplication {
	public static void main(String[] args) {
		System.out.println("JAWSDB_MARIA_JDBC_URL: " + System.getenv("JAWSDB_MARIA_JDBC_URL"));
		SpringApplication.run(EcommerceApplication.class, args);
		System.setProperty("javax.security.sasl.debug", "true");
	}
}
