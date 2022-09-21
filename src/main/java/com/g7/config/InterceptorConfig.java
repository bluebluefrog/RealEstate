package com.g7.config;

import com.g7.interceptor.AccountInterceptor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class InterceptorConfig implements WebMvcConfigurer {

    @Bean
    public AccountInterceptor accountInterceptor(){
        return new AccountInterceptor();
    }


    @Override
    public void addInterceptors(InterceptorRegistry registry) {

        registry.addInterceptor(accountInterceptor())
                .addPathPatterns("/auction/createAuction")
                .addPathPatterns("/auction/createAuctionRecord")
                .addPathPatterns("/auction/getAuctionInfo")
                .addPathPatterns("/account/logout")
                .addPathPatterns("/account/updatePersonInfo")
                .addPathPatterns("/property/createProperty");

    }
}
