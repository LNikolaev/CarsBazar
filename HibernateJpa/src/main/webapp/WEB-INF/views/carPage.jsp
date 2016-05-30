<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<html>
<head>
<title>Cars Page</title>
</head>
<body>
	<h1>Cars Page!</h1>
	<a href="${contextPath}${addCarUrl}">Add User</a>

	<table border="1">
		<thead>
			<tr>
				<th>Id</th>
				<th>Producer</th>
				<th>Model</th>				
			</tr>
		</thead>
		<tbody>
			<tr>
				<c:forEach items="${cars}" var="car">
					<tr>
						<td>${car.id}</td>
						<td>${car.producer}</td>
						<td>${car.model}</td>						
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