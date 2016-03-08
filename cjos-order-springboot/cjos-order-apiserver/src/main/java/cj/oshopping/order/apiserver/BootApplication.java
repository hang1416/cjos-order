package cj.oshopping.order.apiserver;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;

import cj.oshopping.common.yaml.YamlSupportEnvironment;

@SpringBootApplication
public class BootApplication {

	public static void main(String[] args) {
		YamlSupportEnvironment.apply();	
		
		new SpringApplicationBuilder(BootApplication.class)
				.web(true).run(args);
	}

}
