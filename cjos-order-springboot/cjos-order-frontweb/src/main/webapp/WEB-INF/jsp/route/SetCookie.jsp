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
			var DRT_COOKIE_KEY = "drt";
			var COOKIE_OPTION =  { path: '/', domain: 'cjmall.com' };
			
			var DRT_COOKIE_VALUES = [];
			DRT_COOKIE_VALUES.push("ec-order-frontweb-multi-dev");
			DRT_COOKIE_VALUES.push("ec-user-apiserver-dev-pdev1");
			DRT_COOKIE_VALUES.push("ec-user-frontweb-multi-dev-pdev1");
			
			
			$("#btnSetCookie").click(function() {
				$.cookie(DRT_COOKIE_KEY, DRT_COOKIE_VALUES.join(","), COOKIE_OPTION);
				printCookie();
			});
			
			$("#btnResetCookie").click(function() {
				$.removeCookie(DRT_COOKIE_KEY, COOKIE_OPTION);
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
				$("#divCookieData").empty();
				$("#divCookieData").html($.cookie(DRT_COOKIE_KEY));
			}
		</script>
	</body>
</html>