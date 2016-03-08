package cj.oshopping.order.apiserver;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.context.annotation.Import;

import cj.oshopping.common.config.JsonConfig;
import cj.oshopping.common.crypto.spring.PropertiesConfiguration;
import cj.oshopping.common.yaml.YamlSupportEnvironment;

@SpringBootApplication
@Import(value = { PropertiesConfiguration.class, JsonConfig.class })
public class BootApplication {

	public static void main(String[] args) {
		YamlSupportEnvironment.apply();	
		
		new SpringApplicationBuilder(BootApplication.class)
				.web(true).run(args);
	}

}
