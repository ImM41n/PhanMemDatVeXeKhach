package com.java.banve.config;


import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
@EnableWebMvc
public class WebConfig1 implements WebMvcConfigurer {

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler(
                        "/img/**",
                        "/css/**",
                        "/libs/**",
                        "/font-awesome-4.7.0/**",
                        "/js/**",
                        "/slick/**")
                .addResourceLocations(
                        "classpath:/static/img/",
                        "classpath:/static/css/",
                        "classpath:/static/libs/",
                        "classpath:/static/font-awesome-4.7.0/",
                        "classpath:/static/js/",
                        "classpath:/static/slick/"
                );
    }

}