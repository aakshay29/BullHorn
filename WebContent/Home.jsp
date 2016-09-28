<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:setLocale value="en_US" />
<!-- fixes date not displaying correctly in Eclipse browser -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Welcome</title>
<link rel="stylesheet" type="text/css" href="style.css">
<jsp:include page="bootstrap.jsp"></jsp:include>
<script>
	$(document).ready(
			function() {
				var text_max = 141;
				$('#textarea_feedback')
						.html(text_max + ' characters remaining');

				$('#posttext').keyup(
						function() {
							var text_length = $('#posttext').val().length;
							var text_remaining = text_max - text_length;

							$('#textarea_feedback').html(
									text_remaining + ' characters remaining');
						});
			});

	function validate(form) {
		valid = true;
		if ($('#posttext').val().length == 0) {
			alert("You may not submit an empty post.");
			valid = false;
		}
		return valid;
	}
</script>
</head>
<body>
	<jsp:include page="navbar.jsp"></jsp:include>
	<%
		Model.Bhuser u = (Model.Bhuser) session.getAttribute("user");
	%>
	<h1>
		Welcome
		<%=u.getUsername()%></h1>
	<form role="form" action="PostServ" method="post"
		onsubmit="return validate(this);">
		<div class="form-group">
			<label for="post">Create New Post (141 char):</label>
			<textarea name="posttext" id="posttext" class="form-control" rows="2"
				placeholder="Express yourself!" maxlength="141"></textarea>

			<div id="textarea_feedback"></div>
		</div>
		<div class="form-group">
			<input type="submit" value="Submit" id="submit" /> <input
				type="reset" value="Clear" />
		</div>
	</form>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>