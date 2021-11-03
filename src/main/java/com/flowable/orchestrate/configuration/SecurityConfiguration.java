package com.flowable.orchestrate.configuration;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;

@Configuration
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {
   @Override
   protected void configure(AuthenticationManagerBuilder auth) throws Exception {
       auth.inMemoryAuthentication().passwordEncoder(NoOpPasswordEncoder.getInstance())
          .withUser("admin").password("test").roles("USER", "ADMIN");
   }
}