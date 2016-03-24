package cj.oshopping.order.core.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;

import cj.oshopping.user.apispec.config.UserApiSpecConfig;

@Configuration
@ComponentScan(basePackages = "cj.oshopping.order.core.service")
@Import(value={UserApiSpecConfig.class})
public class OrderCoreConfig {                     
}
