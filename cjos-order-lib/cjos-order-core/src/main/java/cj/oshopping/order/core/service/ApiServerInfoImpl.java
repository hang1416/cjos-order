package cj.oshopping.order.core.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cj.oshopping.user.apispec.model.RmApplicationInfo;
import cj.oshopping.user.apispec.service.ApplicationInfoService;

@Service
public class ApiServerInfoImpl implements ApiServerInfo {

	@Autowired
	private ApplicationInfoService userApiserverInfo;
	
	@Override
	public RmApplicationInfo getUserApiServerInfo() {
		return userApiserverInfo.getInfo();
	}
}
