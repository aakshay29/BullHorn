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
<title>Update</title>
<link rel="stylesheet" type="text/css" href="style.css">
<jsp:include page="bootstrap.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="navbar.jsp"></jsp:include>
	<form action="UpdateServlet" method="post">
	
	<%
		Model.Bhuser u = (Model.Bhuser) session.getAttribute("user");
	%>
	
		<label id="userid">User ID: <%=u.getBhuserid()%>
		</label> <br /> <label>User name:</label> <br /> <input name="username" id="username"
			type="text" value=<%=u.getUsername()%> /> <br />
		<br /> <label>Email:</label> <br /> <input name="email" id="email" type="text"
			value=<%=u.getUseremail()%> /> <br />
		<br /> <label>Password:</label><br /> <input name="password" id="password" type="text"
			value=<%=u.getUserpassword()%> /> <br />
		<br /> <label>Motto:</label><br /> <input name="motto" id="motto" type="text"
			value=<%=u.getMotto()%> /><br />
		<br /> <label>Date of joining:</label><br /> <input name="joindate" id="joindate"
			type="date" value=<%=u.getJoindate()%> /><br />
		<br /> <input type="submit" value="Update" />

	</form>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>