<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Welcome to BullHorn</title>
</head>
<body>
<body>
	<%
		UserData.User u = (UserData.User) session.getAttribute("user");
	%>
	<p>
		Welcome <%=u.getUsername()%>.
	</p>
</body>


</html>