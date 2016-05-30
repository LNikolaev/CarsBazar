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
					<td><input type="text" name="username" value="${user.username}"></td>
				</tr>				
				<tr>	
					<td>password</td>
					<td><input type="password" name="password" value="${user.password}"></td>
				</tr>				
				<tr>
					<td>First name</td>
					<td><input type="text" name="firstName" value="${user.firstName}"></td>
				</tr>
				<tr>	
					<td>Last name</td>
					<td><input type="text" name="lastName" value="${user.lastName}"></td>
				</tr>
				<tr>	
					<td>Email</td>
					<td><input type="email" name="email" placeholder="Email"></td>
				</tr>
				<tr>	
					<td>Phone Number</td>			
					<td><input type="tel" name="phoneNumber" pattern="([0|\+[0-9]{1,4})?([1-9][0-9]{5,})" placeholder="+ Country Code"></td>
				</tr>
				<tr>	
					<td>Home Page</td>			
					<td><input type="url" name="homePage" placeholder="Homepage"></td>
				</tr>
			</table>
			<input type=submit id="btn1" name="Submit"/>
		</form:form>
	</body>
</html>

