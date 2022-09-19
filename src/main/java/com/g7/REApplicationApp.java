package com.g7;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.ComponentScan;
import tk.mybatis.spring.annotation.MapperScan;

@SpringBootApplication
@MapperScan(basePackages = "com.g7.mapper")
@ComponentScan(basePackages = {"com.g7","org.n3r.idworker"})
public class REApplicationApp {

    public static void main(String[] args) {
        ApplicationContext app = SpringApplication.run(REApplicationApp.class, args);
    }
}
