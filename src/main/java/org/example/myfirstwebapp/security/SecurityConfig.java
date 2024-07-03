package org.example.myfirstwebapp.security;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.Customizer;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
import org.springframework.security.config.annotation.web.configurers.HeadersConfigurer;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.security.web.SecurityFilterChain;

import java.util.function.Function;

@Configuration
public class SecurityConfig {
 //   InMemoryUserDetailsManager
   // InMemoryUserDetailManager(UserDetails... users)

    @Bean
    public InMemoryUserDetailsManager createUserDetailsManager()
    {

        String username="Avanish";
        String password="12345";
        UserDetails userDetails1 = getUserDetails(username, password);
        UserDetails userDetails2 = getUserDetails("Abhishek", "163101");


        return new InMemoryUserDetailsManager(userDetails1,userDetails2);
    }

    private UserDetails getUserDetails(String username, String password) {
        Function<String, String> passwordEncoder= input->passwordEncoder().encode(input);
        return User.builder()
                .passwordEncoder(passwordEncoder)
                .username(username)
                .password(password)
                .roles("USER","ADMIN")
                .build();
    }

    @Bean
    public PasswordEncoder passwordEncoder()
    {
        return new BCryptPasswordEncoder();
    }
    @Bean
    public SecurityFilterChain filterChain(HttpSecurity httpSecurity) throws Exception{

        httpSecurity.authorizeHttpRequests(
                auth->auth.anyRequest().authenticated()
        );
        httpSecurity.formLogin(Customizer.withDefaults());
        httpSecurity.csrf(AbstractHttpConfigurer::disable);
        httpSecurity.headers(headers->headers.frameOptions(HeadersConfigurer.FrameOptionsConfig::sameOrigin).disable());
        return httpSecurity.build();
    }
}
