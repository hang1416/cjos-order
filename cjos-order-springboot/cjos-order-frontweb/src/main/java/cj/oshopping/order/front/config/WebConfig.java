package cj.oshopping.order.front.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import org.springframework.format.FormatterRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

import cj.oshopping.common.config.JsonConfig;
import cj.oshopping.common.webapp.config.WebAppMvcConfigurerAdapter;
import cj.oshopping.common.webapp.converter.StringToCodeConverter;

@Configuration
public class WebConfig extends WebAppMvcConfigurerAdapter {

}
