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
<jsp:include page="bootstrap.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="navbar.jsp"></jsp:include>
	<%
		Model.Bhuser u = (Model.Bhuser) session.getAttribute("user");
	%>
	<h1>
		Welcome
		<%=u.getUsername()%></h1>

	<div class="container">

		<table class="table table-bordered table-striped table-hover">
			<thead>
				<tr>
					<th>User</th>
					<th>Post</th>
					<th>Date</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="post" items="${posts}">
					<tr>
						<td><a
							href="ProfileServlet?action=viewprofile&userid=<c:out value="${post.bhuser.bhuserid}"/>"><c:out
									value="${post.bhuser.useremail}" /></a></td>
						<td><c:out value="${post.posttext}" /></td>
						<td><fmt:formatDate value="${post.postdate}"
								pattern="yy-MMM-dd" /></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>