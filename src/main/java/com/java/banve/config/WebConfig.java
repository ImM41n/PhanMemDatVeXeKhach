package com.java.banve.config;

import org.springframework.boot.autoconfigure.security.servlet.PathRequest;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.authentication.rememberme.InMemoryTokenRepositoryImpl;
import org.springframework.security.web.authentication.rememberme.PersistentTokenRepository;
@Configuration
@EnableWebSecurity
public class WebConfig extends WebSecurityConfigurerAdapter {
    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.csrf().disable();
        http.authorizeRequests()
                .requestMatchers(PathRequest.toStaticResources().atCommonLocations()).permitAll()
                .antMatchers("/resources/**").permitAll()
                .antMatchers("/static/**").permitAll()
                .antMatchers("*.css").permitAll()
                .antMatchers("/dang-nhap", "/dang-ky", "/mat-khau","/trangchu ","/","/lichtrinh","/header","/footer","/timkiem").permitAll()
                .antMatchers("/index").hasAnyAuthority("USER", "EMPLOYEE", "ADMIN")
                .antMatchers("/employee/**","/chung/**", "/tuyen/**", "/chuyen/**", "/loai/**", "/ve/**", "/xe/**", "/doanh-thu/**").hasAnyAuthority("EMPLOYEE", "ADMIN")
                .antMatchers("/admin/**" ).hasAnyAuthority("ADMIN")
                .anyRequest().authenticated();
        http.authorizeRequests().and().formLogin()
                .loginProcessingUrl("/j_spring_security_check")
                .loginPage("/dang-nhap")
                .defaultSuccessUrl("/user")//login thanh cong chuyent tới
                .failureUrl("/dang-nhap?error=true")// login loi
                .usernameParameter("username")//lấy username
                .passwordParameter("password")//lấy password
                .and().logout().logoutUrl("/logout").logoutSuccessUrl("/dang-nhap");//custom Logout page
        http.authorizeRequests().and()
                .rememberMe().tokenRepository(this.persistentTokenRepository())
                .tokenValiditySeconds(1 * 24 * 60 * 60);
        http
                .headers()
                .xssProtection()
                .and()
                .contentSecurityPolicy("script-src 'self'");
    }
    @Bean
    public PersistentTokenRepository persistentTokenRepository() {
        InMemoryTokenRepositoryImpl memoryTokenRepository = new InMemoryTokenRepositoryImpl();
        return memoryTokenRepository;
    }
}
