<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<html>
	<head>
		<title>User addition</title>
	</head>
	<body>
		<h1>
			User addition!  
		</h1>
		<form:form method="POST" action="${contextPath}/user/add" modelAttribute="user">
			<table>
				<tr>				
					
					<td>Userame</td>
					<td><input type="text" name="username" value="${user.username}"><td>
					
					<td>password</td>
					<td><input type="password" name="password" value="${user.password}"><td>
					
					<td>First name</td>
					<td><input type="text" name="firstName" value="${user.firstName}"><td>
					
					<td>Last name</td>
					<td><input type="text" name="lastName" value="${user.lastName}"><td>				
					
				</tr>			
			</table>
			<input type=submit id="btn1" name="Submit"/>
		</form:form>
	</body>
</html>

