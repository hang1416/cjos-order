package cj.oshopping.order.core.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cj.oshopping.user.apispec.model.RmUserAccount;
import cj.oshopping.user.apispec.service.UserAccountService;

@Service
public class OrderServiceImpl implements OrderService {

	@Autowired
	private UserAccountService UserAccountService;
	
	@Override
	public List<RmUserAccount> getOrederedUsers() {		
		return UserAccountService.users();
	}
}
