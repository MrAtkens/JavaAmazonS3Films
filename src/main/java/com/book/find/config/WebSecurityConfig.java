package com.book.find.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import javax.sql.DataSource;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
    final DataSource dataSource;

    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    public WebSecurityConfig(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
                .authorizeRequests()
                .antMatchers("/jsFront/**","/css/**", "/js/*", "/images/**", "/imagesFront/*", "/cssFront/**", "/registration").permitAll()
                .anyRequest().authenticated().and().formLogin()
                .loginPage("/login").defaultSuccessUrl("/admin", true).permitAll().and().logout()
                .logoutUrl("/logout")
                .logoutSuccessUrl("/login").permitAll();
    }


    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.jdbcAuthentication()
                .dataSource(dataSource)
                .passwordEncoder(passwordEncoder())
                .usersByUsernameQuery("select username, password, active from users where username = ?")
                .authoritiesByUsernameQuery("select a.username, ad.roles from users a inner join user_role ad on a.id = ad.user_id where a.username = ?");
    }
}