<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="cj" uri="http://common.oshopping.com/ec-common"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>setCookie</title>
		<script src="https://code.jquery.com/jquery-2.2.1.min.js" integrity="sha256-gvQgAFzTH6trSrAWoH1iPo9Xc96QxSZ3feW6kem+O00=" crossorigin="anonymous"></script>
		<script src="/js/jquery.cookie.js"></script>
		<script src="/js/common/hello.js"></script>
		<script src="/js/common/bye.js"></script>
	</head>
	
	<body style="padding:10px">
		
		<h1>Cookie 설정</h1>
		<input id="btnSetCookie" type="button" value="set Cookie" />
		<input id="btnResetCookie" type="button" value="reset Cookie" />
		<input id="btnShowCookie" type="button" value="show Cookie" />  
		<div id="divCookieData" style="border:1px solid;width:500px;height:200px;margin-top:10px;overflow:auto;">
		</div>
		
		<input id="btnCallUserApi" type="button" value="call user api by apispec" />	
		<div id="divUserApiData" style="border:1px solid;width:500px;height:200px;margin-top:10px;overflow:auto;">
		</div>
		
		
		<a href='http://<cj:linkUrl serviceType="USER" />app/name'>user frontweb page</a>
		
		<script type="text/javascript">
			var COOKIE_KEY_PREFIX = "rt";
			var COOKIE_KEY_CJMALL_ORDER_FRONTWEB = COOKIE_KEY_PREFIX + "orderWebCjmallDev";
			var COOKIE_KEY_OSHOPPING_USER_APISERVER = COOKIE_KEY_PREFIX + "userApiOshoppingDev";
			var COOKIE_KEY_CJMALL_USER_FRONTWEB = COOKIE_KEY_PREFIX + "userWebCjmallDev";
			var COOKIE_OPTION =  { path: '/', domain: 'cjmall.com' };
			
			$("#btnSetCookie").click(function() {
				$.cookie(COOKIE_KEY_CJMALL_ORDER_FRONTWEB, "order-frontweb-cjmall-dev", COOKIE_OPTION);
				$.cookie(COOKIE_KEY_OSHOPPING_USER_APISERVER, "user-apiserver-oshopping-dev-pdev1", COOKIE_OPTION);
				$.cookie(COOKIE_KEY_CJMALL_USER_FRONTWEB, "user-frontweb-cjmall-dev-pdev1", COOKIE_OPTION);
				
				printCookie();
			});
			
			$("#btnResetCookie").click(function() {
				$.each($.cookie(), function(key, value) {
					if(key.indexOf(COOKIE_KEY_PREFIX) == 0) {
						$.removeCookie(key, COOKIE_OPTION);
					}
				});
				
				printCookie();
			});
			
			$("#btnShowCookie").click(function() {
				printCookie();
			});
			
			$("#btnCallUserApi").click(function() {
				$("#divUserApiData").empty;
				$.ajax({
					url : "/apiserver/user/info"					
				}).done(function(data, textStatus, jqXHR) {
					console.log(data);
					$("#divUserApiData").text(JSON.stringify(data));
				});
				
			});
			
			function printCookie() {
				$("divCookieData").empty();
				
				var buffer = [];
				$.each($.cookie(), function(key, value) {
					if(key.indexOf(COOKIE_KEY_PREFIX) >= 0) {
						buffer.push("{ '"+ key + "' : '" + value + "' }");
					}
				});
				
				$("#divCookieData").html(buffer.join("<br />"));
			}
		</script>
	</body>
</html>