package cj.oshopping.order.front.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/route")
public class CookieController {

	@RequestMapping("/setCookie")
	public String setCookie() {
		return "route/SetCookie";
	}
}
