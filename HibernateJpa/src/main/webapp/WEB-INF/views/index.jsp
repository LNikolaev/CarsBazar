<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<html>
<head>
<title>Cars Register</title>
</head>
<body>
	<h1>Cars Register!</h1>
	<a href="${contextPath}${addUserUrl}">Add User</a>

	<table border="1">
		<thead>
			<tr>
				<th>Id</th>
				<th>Username</th>
				<th>Password</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Email</th>
				<th>Phone Number</th>
				<th>Home Page</th>
				<th>Operation</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<c:forEach items="${users}" var="user">
					<tr>
						<td>${user.id}</td>
						<td>${user.username}</td>
						<td>${user.password}</td>
						<td>${user.firstName}</td>
						<td>${user.lastName}</td>
						<td>${user.email}</td>
						<td>${user.phoneNumber}</td>
						<td>${user.homePage}</td>
						<td><a href="${contextPath}/user/edit?userId=${user.id}">edit</a>
							<a href="${contextPath}/user/delete?userId=${user.id}">delete</a>
						</td>
					</tr>
				</c:forEach>
			</tr>
		</tbody>
	</table>	
</body>
</html>