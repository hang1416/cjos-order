package cj.oshopping.order.front;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;
import org.springframework.context.annotation.Import;

import cj.oshopping.common.crypto.spring.PropertiesConfiguration;
import cj.oshopping.common.router.config.CommonRouteConfig;
import cj.oshopping.common.yaml.YamlSupportEnvironment;
import cj.oshopping.order.core.config.OrderCoreConfig;

@SpringBootApplication
@EnableEurekaClient
@Import(value = { PropertiesConfiguration.class, OrderCoreConfig.class, CommonRouteConfig.class})
public class BootApplication {
	
	public static void main(String[] args) {
		YamlSupportEnvironment.apply();
		SpringApplication.run(BootApplication.class, args);
	}
}
