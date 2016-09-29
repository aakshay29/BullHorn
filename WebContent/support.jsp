<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:setLocale value="en_US" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Support</title>
<link rel="stylesheet" type="text/css" href="style.css">
<jsp:include page="bootstrap.jsp"></jsp:include>
<script>
	function validate(form) {
		valid = true;
		if ($('#email').val().length == 0) {
			alert("Please input your email address.");
			valid = false;
		}
		if ($('#comments').val().length == 0) {
			alert("Please input your comments. This will help us serve you better. Thank you.");
			valid = false;
		}
		return valid;
	}
	function submitComment() {
		valid = true;
		if ($('#email').val().length == 0) {
			alert("Please input your email address.");
			valid = false;
		}
		if ($('#comments').val().length == 0) {
			alert("Please input your comments. This will help us serve you better. Thank you.");
			valid = false;
		}
		return valid;
	}
</script>
</head>
<body>
	<h1>Support</h1>
	<form role="form" action="SupportServlet" method="post"
		onsubmit="return validate(this);">
		<div class="form-group">
			<p>Enter your email address:</p>
			<input type="text" id="email"></input>
			<p>Comments:</p>
			<textarea id="comments"></textarea>
			<input type="submit" value="Submit" id="submit" onclick="submitComment()" />
		</div>
	</form>
</body>
</html>