package cj.oshopping.order.front.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cj.oshopping.common.model.Json;
import cj.oshopping.order.core.service.ApiServerInfo;
import cj.oshopping.user.apispec.model.RmApplicationInfo;

@Controller
public class ApiInfoController {
	@Autowired
	private ApiServerInfo apiServerInfo;
	
	@ResponseBody
	@RequestMapping("/apiserver/user/info")
	public Json<?> getOrderedList() {
		Json<RmApplicationInfo> json = Json.createJson(apiServerInfo.getUserApiServerInfo());
		return json;
	}
}
